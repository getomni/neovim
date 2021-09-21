local util = require("omni.util")
local theme = require("omni.theme")

local M = {}

function M.colorscheme()
  util.load(theme)
end

return M
