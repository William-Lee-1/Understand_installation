-- JOVIAL
return {
  name = "JOVIAL",
  lexer = 109,
  extensions = "jov,cpl",
  keywords = {
    [0] = {
      name = "Keywords",
      keywords =
        [[if or abs and bit end for loc new not pos byte goto
        item nent proc stop term with begin start table define
        nwdsen return static update overlay writeonly]]
    },
    [1] = {
      name = "Keywords (J73)",
      keywords =
        [[by in to eqv def mod rec ref rep sgn xor case exit else
        free last like next null rent then true type zone abort
        block byref byres byval label false first while inline
        lbound shiftl shiftr signal static status ubound compool
        default exports handler program bytesize constant fallthru
        instance parallel readonly register wordsize condition
        interrupt protected encapsulation]]
    },
    [2] = {
      [[eq gr gq lq ls nq file mode open orif shut test array
      close input common direct ifeith jovial output string switch
      bitsize monitor]]
    }
  },
  style = {
    [1] = {
      name = "Comment (Percent)",
      style = 5
    },
    [2] = {
      name = "Comment (Quote)",
      style = 5
    },
    [3] = {
      name = "Character",
      style = 3
    },
    [4] = {
      name = "String",
      style = 2
    },
    [5] = {
      name = "Number",
      style = 1
    },
    [6] = {
      name = "Identifier",
      style = 4
    },
    [7] = {
      name = "Operator",
      style = 7
    },
    [8] = {
      name = "Keyword",
      style = 6
    },
    [9] = {
      name = "Directive",
      style = 8
    },
    [10] = {
      name = "Label",
      style = 9
    }
  },
  chars = {
    word =
      "abcdefghijklmnopqrstuvwxyz" ..
      "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ..
      "0123456789$'\""
  },
  match = {
    keyword = {
      start = "begin",
      ["end"] = "end"
    }
  }
}
