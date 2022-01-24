#
# Synopsis: Report unneeded #include (C/C++)
#
# Categories: Project Report, Coding Standards
#
# Languages: C
#
# Description:
#  Reports #includes that are unneeded in an Understand for C++ project source.
#  Reports include files that are not directly needed by the file doing the include.
#  Requires an existing Understand for C++ database. 
#

sub usage {
    print shift,"\n";
    print "Usage: check_includes.pl -db database\n";
    print "  -db database  Specify Understand database if run from uperl.\n";
    print "  -file         Optional, list of specific files to check.\n";
    print "  -inc          Optional, check include files also.\n";
    return 1;
}


my $abort=0;
sub error {
    print shift,"\n";
    $abort = 1;
    return 1;
}


use Understand;
use Getopt::Long;
use FileHandle; autoflush STDOUT 1;
use strict;

report();
sub report {
    return if parse_args();
    return if open_db();
    return if check_language();
    check_includes();
}


my ($argDb,@argFile,$argHelp,$argInc,$argVerbose);
sub parse_args {
    GetOptions
	("db=s"   => \$argDb,
	 "file=s" => \@argFile,
	 "help"   => \$argHelp,
	 "inc"    => \$argInc,
	 "v"      => \$argVerbose,
	 ) or return usage("");
    return usage("") if ($argHelp);
    @argFile = split(/,/,join(',',@argFile)) if (@argFile);
    return $abort;
}


my $db;
sub open_db {
    $db = Understand::Gui::db();
    if (!$db) {
	return usage("Error, database not specified") unless $argDb;
	my $status;
	($db,$status) = Understand::open($argDb);
	return error("Error opening database: $status") if $status;
    }
    return $abort;
}


my $language;
sub check_language {
    $language = $db->language();
    return error("$language is currently unsupported by this script")
	if ($language !~ /c/i);
    return $abort;
}


my %cache;
sub check_includes {
    my @files;
    if (@argFile) {
	foreach my $name (@argFile) {
	    my $file = $db->lookup($name);
	    push @files,$file if ($file);
	}
    } elsif ($argInc) {
	@files = $db->ents("c file ~unknown ~unresolved");
    } else {
	@files = $db->ents("c code file");
    }

    foreach my $file (@files) {
	%cache = {};
	my $first = 1;
	foreach my $inc ($file->ents("include","~unresolved ~unknown")) {
	    my $used = check_inc_used($file,$inc);
	    if ($first && ($argVerbose || !$used)) {
		print $file->longname(). ":\n";
		$first = 0;
	    }
	    if ($argVerbose || !$used) {
		print "  ";
		if ($argVerbose) {
		    if (!$used) {
			print "unneeded include ";
		    } else {
			print "needed include ";
		    }
		}
		print $inc->longname(). "\n";
	    }
	}
    }
}


sub check_inc_used {
    my $file = shift;	# toplevel file being checked
    my $inc = shift;	# include file being checked

    # check cache first
    return $cache{$inc->id()} if exists($cache{$inc->id()});

    # check if declare/defines from $inc file are used by $file
    foreach my $fileref ($inc->filerefs("declare, define","c",1)) {
	my $ent = $fileref->ent();

	# check if $ent is directly used
	return ($cache{$inc->id()} = 1)
	    if check_ent_used($file,$ent);

	# check if implicit members of class $ent are used
	if ($ent->kind->check("c class,c struct,c union")) {
	    foreach my $member ($ent->ents("implicit declare")) {
		return ($cache{$inc->id()} = 1)
		    if check_ent_used($file,$member);
	    }
	}
    }

    # mark the cache as unused initially, to break recursion
    $cache{$inc->id()} = 0;

    # check if any local includes are used by the $file
    foreach my $local_inc ($inc->ents("include")) {
	if ($local_inc->kind->check("unresolved,unknown")) {
	    return ($cache{$inc->id()} = 1);  # assume it is needed
	} else {
	    return ($cache{$inc->id()} = 1) if (check_inc_used($file,$local_inc));
	}
    }

    return 0;
}


sub check_ent_used {
    my $file = shift;	# toplevel file being checked
    my $ent = shift;	# entity being checked

    foreach my $ref ($ent->refs("useby,typedby,callby,setby,declarein,definein")) {
	return 1 if $ref->file() == $file;
    }
    return 0;
}
