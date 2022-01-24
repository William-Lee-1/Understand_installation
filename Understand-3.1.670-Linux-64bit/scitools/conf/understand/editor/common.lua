-- Common Styles
return {
  style = {
    [0] = {
      name = tr("Whitespace"),
      fore = "#808080",
      desc = tr("The style of visible whitespace.  Whitespace must be " ..
                "made visible for this style to have any effect.")
    },
    [1] = {
      name = tr("Number"),
      fore = "#008080",
      desc = tr("The style of numerical literals.")
    },
    [2] = {
      name = tr("Double-quoted String"),
      fore = "#CC0000",
      desc = tr("The style of double-quoted string literals.")
    },
    [3] = {
      name = tr("Single-quoted String"),
      fore = "#800080",
      desc = tr("The style of single-quoted string literals.")
    },
    [4] = {
      name = tr("Identifier"),
      desc = tr("The style of identifiers.")
    },
    [5] = {
      name = tr("Comment"),
      fore = "#0000FF",
      italic = true,
      desc = tr("The style of comments.")
    },
    [6] = {
      name = tr("Keyword"),
      fore = "#000080",
      bold = true,
      desc = tr("The style of keywords.")
    },
    [7] = {
      name = tr("Operator"),
      bold = true,
      desc = tr("The style of operator and punctuation tokens.")
    },
    [8] = {
      name = tr("Preprocessor"),
      fore = "#008000",
      bold = true,
      desc = tr("The style of preprocessor and compiler control text.")
    },
    [9] = {
      name = tr("Label"),
      fore = "#800000",
      desc = tr("The style of labels.")
    },
    [10] = {
      name = tr("Unclosed Double-quoted String"),
      back = "#E0C0E0",
      eolfilled = true,
      desc = tr("The style of unclosed double-quoted strings.")
    },
    [11] = {
      name = tr("Unclosed Single-quoted String"),
      back = "#E0C0E0",
      eolfilled = true,
      desc = tr("The style of unclosed single-quoted strings.")
    },
    [12] = {
      name = tr("Error"),
      fore = "#FFFF00",
      back = "#FF0000",
      eolfilled = true,
      desc = tr("The style of lexical errors.")
    },
    [13] = {
      name = tr("Inactive"),
      back = "#FFDDDD",
      eolfilled = true,
      desc = tr("The background color of inactive code.")
    },
    [14] = {
      name = tr("Selection"),
      back = "#CCCCFF",
      eolfilled = (platform == "mac"),
      desc = tr("The style of selected text.")
    },
    [15] = {
      name = tr("Doc Comment"),
      fore = "#993300",
      italic = true,
      desc = tr("The style of documentation comments.")
    },
    [16] = {
      name = tr("Doc Keyword"),
      fore = "#663300",
      italic = true,
      bold = true,
      desc = tr("The style of keywords within documentation comments.")
    },
    [17] = {
      name = tr("Fold Margin"),
      back = "#C0C0C0",
      desc = tr("The background color of the fold margin.")
    }
  }
}
