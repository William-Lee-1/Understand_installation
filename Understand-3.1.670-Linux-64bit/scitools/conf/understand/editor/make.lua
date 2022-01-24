-- Makefile
return {
  name = "Makefile",
  lexer = 11,
  extensions = "mak",
  patterns = "[Mm]akefile.*",

  -- Override tab settings.
  tabs = {
    use = true
  },
  file = {
    converttabs = false
  },

  style = {
    [1] = {
      name = "Comment",
      style = 5
    },
    [2] = {
      name = "Preprocessor",
      style = 8
    },
    [3] = {
      name = "Variable",
      fore = "#000080"
    },
    [4] = {
      name = "Operator",
      style = 7
    },
    [5] = {
      name = "Target",
      fore = "#A00000"
    },
    [9] = {
      name = "Error",
      style = 12
    }
  },
  comment = {
    line = "#"
  }
}
