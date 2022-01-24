-- Python
return {
  name = "Python",
  lexer = 2,
  extensions = "py,pyw",
  patterns = "[Ss][Cc]ons.*",
  keywords = {
    [0] = {
      name = "Keywords",
      keywords =
        [[and assert break class continue def del elif else except
        exec finally for from global if import in is lambda None
        not or pass print raise return try while yield]]
    },
    [1] = {
      name = "Highlighted Identifiers",
      keywords = [[]]
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
      name = "Number",
      style = 1
    },
    [3] = {
      name = "Double-quoted String",
      style = 2
    },
    [4] = {
      name = "Single-quoted String",
      style = 3
    },
    [5] = {
      name = "Keyword",
      style = 6
    },
    [6] = {
      name = "Triple-quotes",
      style = 3
    },
    [7] = {
      name = "Triple-double-quotes",
      style = 2
    },
    [8] = {
      name = "Class Definition",
      style = 4
    },
    [9] = {
      name = "Function Definition",
      style = 4
    },
    [10] = {
      name = "Operator",
      style = 7
    },
    [11] = {
      name = "Identifier",
      style = 4
    },
    [12] = {
      name = "Comment Block",
      style = 5
    },
    [13] = {
      name = "Unclosed String",
      style = 10
    },
    [14] = {
      name = "Highlighted Identifier",
      fore = "#407090"
    },
    [15] = {
      name = "Decorator",
      fore = "#805000"
    }
  }
}
