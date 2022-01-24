-- Lua
return {
  name = "Lua",
  lexer = 15,
  extensions = "lua",
  keywords = {
    [0] = {
      name = "Keywords",
      keywords =
        [[and break do else elseif end false for function goto if in
        local nil not or repeat return then true until while]]
    },
    [1] = {
      name = "Basic Functions",
      keywords =
        [[_VERSION assert collectgarbage dofile error gcinfo loadfile
        loadstring print rawget rawset require tonumber tostring
        type unpack _ALERT _ERRORMESSAGE _INPUT _PROMPT _OUTPUT
        _STDERR _STDIN _STDOUT call dostring foreach foreachi getn
        globals newtype sort tinsert tremove _G getfenv getmetatable
        ipairs loadlib next pairs pcall rawequal setfenv setmetatable
        xpcall string table math coroutine io os debug load module
        select]]
    },
    [2] = {
      name = "String & Math Functions",
      keywords =
        [[abs acos asin atan atan2 ceil cos deg exp floor format frexp
        gsub ldexp log log10 max min mod rad random randomseed sin
        sqrt strbyte strchar strfind strlen strlower strrep strsub
        strupper tan string.byte string.char string.dump string.find
        string.len string.lower string.rep string.sub string.upper
        string.format string.gfind string.gsub table.concat
        table.foreach table.foreachi table.getn table.sort table.insert
        table.remove table.setn math.abs math.acos math.asin math.atan
        math.atan2 math.ceil math.cos math.deg math.exp math.floor
        math.frexp math.ldexp math.log math.log10 math.max math.min
        math.mod math.pi math.pow math.rad math.random math.randomseed
        math.sin math.sqrt math.tan string.gmatch string.match
        string.reverse table.maxn math.cosh math.fmod math.modf
        math.sinh math.tanh math.huge]]
    },
    [3] = {
      name = "I/O & System Functions",
      keywords =
        [[openfile closefile readfrom writeto appendto remove rename
        flush seek tmpfile tmpname read write clock date difftime
        execute exit getenv setlocale time coroutine.create
        coroutine.resume coroutine.status coroutine.wrap coroutine.yield
        io.close io.flush io.input io.lines io.open io.output io.read
        io.tmpfile io.type io.write io.stdin io.stdout io.stderr
        os.clock os.date os.difftime os.execute os.exit os.getenv
        os.remove os.rename os.setlocale os.time os.tmpname
        coroutine.running package.cpath package.loaded package.loadlib
        package.path package.preload package.seeall io.popen]]
    }
  },
  style = {
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
      style = 15
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
      name = "Double-quoted String",
      style = 2
    },
    [7] = {
      name = "Single-quoted String",
      style = 3
    },
    [8] = {
      name = "Literal String",
      style = 2
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
      name = "Basic Function",
      style = 6
    },
    [14] = {
      name = "String & Math Function",
      style = 6
    },
    [15] = {
      name = "I/O & System Function",
      style = 6
    },
    [16] = {
      name = "User Keyword",
      style = 6
    },
    [17] = {
      name = "User Keyword",
      style = 6
    },
    [18] = {
      name = "User Keyword",
      style = 6
    },
    [19] = {
      name = "User Keyword",
      style = 6
    },
    [20] = {
      name = "Label",
      style = 9
    }
  }
}
