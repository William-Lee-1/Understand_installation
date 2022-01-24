-- Default Styles
local font = "Courier"
local size = 10
if platform == "mac" then
  font = "Monaco"
  size = 12
elseif platform == "win" then
  font = "Courier New"
  size = 10
elseif platform == "x11" then
  font = "Monospace"
  size = 10
end

return {
  [32] = {
    name = tr("Default"),
    font = font,
    size = size,
    fore = "#000000",
    back = "#FFFFFF",
    desc = tr("The default style.  All text that does not match one of " ..
              "the other styles will be rendered in the default style.")
  },
  [33] = {
    name = tr("Line Number"),
    fore = "#000000",
    back = "#A0A0A0",
    desc = tr("The line number margin style.  The background color " ..
              "controls the background color of the entire margin.")
  },
  [34] = {
    name = tr("Brace Highlight"),
    fore = "#000000",
    back = "#00FF00",
    bold = true,
    desc = tr("The style of matching brace highlights.")
  },
  [35] = {
    name = tr("Unmatched Brace"),
    fore = "#000000",
    back = "#FF0000",
    bold = true,
    desc = tr("The style of unmatched brace highlights.")
  }
}
