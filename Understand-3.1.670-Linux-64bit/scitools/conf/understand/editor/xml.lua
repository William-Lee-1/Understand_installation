-- XML
return {
  name = "XML",
  lexer = 5,
  extensions = "xml",
  style = {
    [1] = {
      name = "Tag",
      style = 6
    },
    [2] = {
      name = "Unknown Tag",
      style = 6
    },
    [3] = {
      name = "Attribute",
      style = 9
    },
    [4] = {
      name = "Unknown Attribute",
      style = 9
    },
    [5] = {
      name = "Number",
      style = 1
    },
    [6] = {
      name = "Double-quoted String",
      style = 2
    },
    [7] = {
      name = "Single-quoted String",
      style = 3
    },
    [8] = {
      name = "Other Inside Tag",
      style = 6
    },
    [9] = {
      name = "Comment",
      style = 5
    },
    [10] = {
      name = "Entity"
    },
    [11] = {
      name = "XML style tag end '/>'",
      style = 6
    },
    [12] = {
      name = "XML identifier start '<?'",
      style = 6
    },
    [13] = {
      name = "XML identifier end '?>'",
      style = 6
    },
    [17] = {
      name = "CDATA"
    },
    [18] = {
      name = "Question"
    },
    [19] = {
      name = "Unquoted Value"
    },
    [21] = {
      name = "SGML Tag <! ... >",
      style = 6
    },
    [22] = {
      name = "SGML Command"
    },
    [23] = {
      name = "SGML 1st Param"
    },
    [24] = {
      name = "SGML Double-quoted String",
      style = 2
    },
    [25] = {
      name = "SGML Single-quoted String",
      style = 3
    },
    [26] = {
      name = "SGML Error",
      style = 12
    },
    [27] = {
      name = "SGML Special (#xxxx type)"
    },
    [28] = {
      name = "SGML Entity"
    },
    [29] = {
      name = "SGML Comment",
      style = 5
    },
    [31] = {
      name = "SGML Block"
    }
  }
}
