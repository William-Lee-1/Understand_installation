-- PL/M
return {
  name = "PL/M",
  lexer = 82,
  extensions = "plm,lit",
  keywords = {
    name = "Keywords",
    keywords =
      [[address and at based by byte call case data declare disable
      do else enable end eof external go goto halt if initial
      interrupt label literally minus mod not or plus procedure
      public reentrant return structure then to while xor dword
      integer pointer real selector word]]
  },
  style = {
    [1] = {
      name = "Comment",
      style = 5
    },
    [2] = {
      name = "String",
      style = 2
    },
    [3] = {
      name = "Number",
      style = 1
    },
    [4] = {
      name = "Identifier",
      style = 4
    },
    [5] = {
      name = "Operator",
      style = 7
    },
    [6] = {
      name = "Control",
      style = 8
    },
    [7] = {
      name = "Keyword",
      style = 6
    }
  },
  chars = {
    word =
      "abcdefghijklmnopqrstuvwxyz" ..
      "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ..
      "0123456789$_"
  }
}
