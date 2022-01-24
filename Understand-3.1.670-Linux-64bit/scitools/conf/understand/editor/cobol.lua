-- COBOL
return {
  name = "COBOL",
  lexer = 92,
  extensions = "cbl,cob,cpy",
  keywords = {
    [0] = {
      name = "Primary Keywords",
      keywords =
        [[configuration data declaratives division environment
        environment-division file file-control function i-o i-o-control
        identification input input-output linkage local-storage
        output procedure program program-id receive-control section
        special-names working-storage]]
    },
    [1] = {
      name = "Secondary Keywords",
      keywords =
        [[accept add alter apply assign call chain close compute
        continue control convert copy count delete display divide
        draw drop eject else enable end-accept end-add end-call
        end-chain end-compute end-delete end-display end-divide
        end-evaluate end-exec end-if end-invoke end-multiply end-perform
        end-read end-receive end-return end-rewrite end-search
        end-start end-string end-subtract end-unstring end-write
        erase evaluate examine exec execute exit go goback generate
        if ignore initialize initiate insert inspect invoke leave
        merge move multiply open otherwise perform print read receive
        release reload replace report reread rerun reserve reset
        return rewind rewrite rollback run search seek select send
        set sort start stop store string subtract sum suppress
        terminate then transform unlock unstring update use wait
        when wrap write]]
    },
    [2] = {
      name = "Extended Keywords",
      keywords =
        [[access acquire actual address advancing after all allowing
        alphabet alphabetic alphabetic-lower alphabetic-upper
        alphanumeric alphanumeric-edited also alternate and any are
        area areas as ascending at attribute author auto auto-hyphen-skip
        auto-skip automatic autoterminate background-color
        background-colour backward basis beep before beginning bell
        binary blank blink blinking block bold bottom box boxed by
        c01 c02 c03 c04 c05 c06 c07 c08 c09 c10 c11 c12 cancel cbl
        cd centered cf ch chaining changed character characters
        chart class clock-units cobol code code-set col collating
        color colour column com-reg comma command-line commit
        commitment common communication comp comp-0 comp-1 comp-2
        comp-3 comp-4 comp-5 comp-6 comp-x compression computational
        computational-1 computational-2 computational-3 computational-4
        computational-5 computational-6 computational-x computational
        console contains content control-area controls conversion
        converting core-index corr corresponding crt crt-under csp
        currency current-date cursor cycle cyl-index cyl-overflow
        date date-compiled date-written day day-of-week dbcs de
        debug debug-contents debug-item debug-line debug-name
        debug-sub-1 debug-sub-2 debug-sub-3 debugging decimal-point
        default delimited delimiter depending descending destination
        detail disable disk disp display-1 display-st down duplicates
        dynamic echo egcs egi emi empty-check encryption end
        end-of-page ending enter entry eol eop eos equal equals
        error escape esi every exceeds exception excess-3 exclusive
        exhibit extend extended-search external externally-described-key
        factory false fd fh--fcd fh--keydef file-id file-limit
        file-limits file-prefix filler final first fixed footing
        for foreground-color foreground-colour footing format from
        full giving global greater grid group heading high high-value
        high-values highlight id in index indexed indic indicate
        indicator indicators inheriting initial installation into
        invalid invoked is japanese just justified kanji kept key
        keyboard label last leading left left-justify leftline
        length length-check less limit limits lin linage linage-counter
        line line-counter lines lock lock-holding locking low
        low-value low-values lower lowlight manual mass-update
        master-index memory message method mode modified modules
        more-labels multiple name named national national-edited
        native nchar negative next no no-echo nominal not note
        nstd-reels null nulls number numeric numeric-edited
        numeric-fill o-fill object object-computer object-storage
        occurs of off omitted on oostackptr optional or order
        organization other others overflow overline packed-decimal
        padding page page-counter packed-decimal paragraph password
        pf ph pic picture plus pointer pop-up pos position positioning
        positive previous print-control print-switch printer printer-1
        printing prior private procedure-pointer procedures proceed
        process processing prompt protected public purge queue quote
        quotes random range rd readers ready record record-overflow
        recording records redefines reel reference references
        relative remainder remarks removal renames reorg-criteria
        repeated replacing reporting reports required resident
        return-code returning reverse reverse-video reversed rf rh
        right right-justify rolling rounded s01 s02 s03 s04 s05
        same screen scroll sd secure security segment segment-limit
        selective self selfclass sentence separate sequence sequential
        service setshadow shift-in shift-out sign size skip1 skip2
        skip3 sort-control sort-core-size sort-file-size sort-merge
        sort-message sort-mode-size sort-option sort-return source
        source-computer space spaces space-fill spaces standard
        standard-1 standard-2 starting status sub-queue-1 sub-queue-2
        sub-queue-3 subfile super symbolic sync synchronized sysin
        sysipt syslst sysout syspch syspunch system-info tab table
        tallying tape terminal terminal-info test text than through
        thru time time-of-day time-out timeout times title to top
        totaled totaling track-area track-limit tracks trailing
        trailing-sign transaction true trace type typedef underline
        underlined unequal unit until up updaters upon upper upsi-0
        upsi-1 upsi-2 upsi-3 upsi-4 upsi-5 upsi-6 upsi-7 usage user
        using value values variable varying when-compiled window
        with words write-only write-verify writerszero zero zero-fill
        zeros zeroes]]
    }
  },
  style = {
    [1] = {
      name = "Comment",
      style = 5
    },
    [2] = {
      name = "Directive",
      style = 8
    },
    [3] = {
      name = "Identifier",
      style = 4
    },
    [4] = {
      name = "Numeric",
      style = 1
    },
    [5] = {
      name = "Double-quoted Nonnumeric",
      style = 2
    },
    [6] = {
      name = "Single-quoted Nonnumeric",
      style = 3
    },
    [7] = {
      name = "Punctuation",
      style = 7
    },
    [8] = {
      name = "Picture",
      style = 3
    },
    [9] = {
      name = "Indicator",
      style = 9
    },
    [10] = {
      name = "Pseudo Text",
      style = 2
    },
    [11] = {
      name = "Primary Keyword",
      style = 6
    },
    [12] = {
      name = "Secondary Keyword",
      style = 6
    },
    [13] = {
      name = "Extended Keyword",
      style = 6
    }
  },
  chars = {
    word =
      "abcdefghijklmnopqrstuvwxyz" ..
      "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ..
      "0123456789-_"
  }
}