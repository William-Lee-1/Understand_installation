
# Sample Understand PERL API Script
#
# Synopsis: Lists all functions
#
#   Tests for recursive includes
#
# Categories: Project Report, Coding Standards
#
# Languages: C
#
# Usage:
sub usage($) {
    return shift(@_) . <<"END_USAGE";
    Usage: $0 -db database
    -db database      Specify Understand database (required for
    uperl, inherited from Understand)
END_USAGE
}
#
#  For the latest Understand perl API documentation, see
#      http://www.scitools.com/perl.html
#
#  15-Nov-2006 KG

use Understand;
use Getopt::Long;
use strict;

my $dbPath;
my $help;
my %tree;
my %recursive;
my %tested;
GetOptions(
	   "db=s" => \$dbPath,
	   "help" => \$help,
          );

# help message
die usage("") if ($help);

# open the database
my $db=openDatabase($dbPath);

# check language
if ( $db->language() !~ "C" ) {
    die "This script is designed for C and C++ only\n";
}


#code body*******************************************************************

my @ents = $db->ents("File ~unknown ~unresolved");
    foreach my $file (sort {lc($a->relname()) cmp lc($b->relname());} @ents){
	recIncludes($file,0);
	#print $file->relname."tested...\n";
    }
    print "complete.\n";

#end body********************************************************************
closeDatabase($db);


# subroutines

#Recursive include check
sub recIncludes()
{
    my $file  = shift();
    my $level = shift();

return if ($tested{$file->id});
    
    #print $file->relname."tested..." if $level =0 ;
    if ($tree{$file->id}>=1){
	#recursive
	$recursive{$file->id}=1;
	print $file->relname."   (recursive)\n";
	return;
    }
   # print"\n";
        
    $tree{$file->id} +=1;
    my @includes = $file->refs("include","File ~unknown ~unresolved");
    foreach my $inc (sort {lc($a->ent->relname()) cmp lc($b->ent->relname());} @includes){
	recIncludes($inc->ent,$level+1);
    }
    $tree{$file->id} -= 1;
   $tested{$file->id} = 1;
}

sub openDatabase($)
{
    my ($dbPath) = @_;

    my $db = Understand::Gui::db();

    # path not allowed if opened by understand
    if ($db&&$dbPath) {
	die "database already opened by GUI, don't use -db option\n";
    }

    # open database if not already open
    if (!$db) {
	my $status;
	die usage("Error, database not specified\n\n") unless ($dbPath);
	($db,$status)=Understand::open($dbPath);
	die "Error opening database: ",$status,"\n" if $status;
    }
    return($db);
}

sub closeDatabase($)
{
    my ($db)=@_;

    # close database only if we opened it
    $db->close() if ($dbPath);
}

