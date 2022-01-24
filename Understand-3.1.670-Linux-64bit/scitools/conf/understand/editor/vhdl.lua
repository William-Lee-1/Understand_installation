-- VHDL
return {
  name = "VHDL",
  lexer = 64,
  extensions = "vhd,vhdl",
  keywords = {
    [0] = {
      name = "Keywords",
      keywords =
        [[access after alias all architecture array assert attribute
        begin block body buffer bus case component configuration
        constant disconnect downto else elsif end entity exit
        file for function generate generic group guarded if impure
        in inertial inout is label library linkage literal loop
        map new next null of on open others out package port
        postponed procedure process pure range record register
        reject report return select severity shared signal subtype
        then to transport type unaffected units until use variable
        wait when while with abs and mod nand nor not or rem rol
        ror sla sll sra srl xnor xor]]
    }
  },
  style = {
    [0] = {
      name = "Whitespace",
      style = 0
    },
    [1] = {
      name = "Comment",
      style = 5
    },
    [2] = {
      name = "Bang Comment",
      style = 5
    },
    [3] = {
      name = "Number",
      style = 1
    },
    [4] = {
      name = "String",
      style = 2
    },
    [5] = {
      name = "Operator",
      style = 7
    },
    [6] = {
      name = "Identifier",
      style = 4
    },
    [7] = {
      name = "Unclosed String",
      style = 10
    },
    [8] = {
      name = "Keyword",
      style = 6
    },
    [15] = {
      name = "Character",
      style = 3
    }
  },
  comment = {
    line = "--"
  }
}
