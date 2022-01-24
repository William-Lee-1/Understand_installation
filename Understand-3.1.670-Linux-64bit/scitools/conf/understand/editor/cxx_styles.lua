-- The C++ lexer handles several languages.
-- All share a common style configuration.
return {
  [0] = {
    name = "Whitespace",
    style = 0
  },
  [1] = {
    name = "Block Comment",
    style = 5
  },
  [2] = {
    name = "Line Comment",
    style = 5
  },
  [3] = {
    name = "Doc Comment",
    style = 5
  },
  [4] = {
    name = "Number",
    style = 1
  },
  [5] = {
    name = "Keyword",
    style = 6
  },
  [6] = {
    name = "String",
    style = 2
  },
  [7] = {
    name = "Character",
    style = 3
  },
  [8] = {
    name = "UUID"
  },
  [9] = {
    name = "Preprocessor",
    style = 8
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
    name = "Unclosed String",
    style = 10
  },
  [13] = {
    name = "Verbatim String",
    style = 2
  },
  [14] = {
    name = "Regex"
  },
  [15] = {
    name = "Doc Line Comment",
    style = 5
  },
  [16] = {
    name = "Secondary Keyword",
    style = 6
  },
  [17] = {
    name = "Doc Keyword",
    style = 5
  },
  [18] = {
    name = "Invalid Doc Keyword",
    style = 5
  }
}
