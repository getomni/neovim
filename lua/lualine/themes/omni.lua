local colors = require "omni.colors"

local omni = {}

omni.normal = {
  a = { bg = colors.purple, fg = colors.bg_darker },
  b = { bg = colors.bg_darker, fg = colors.purple },
  c = { bg = colors.bg_darker, fg = colors.fg },
}

omni.insert = {
  a = { bg = colors.green, fg = colors.bg_darker },
  b = { bg = colors.bg_darker, fg = colors.green },
}

omni.command = {
  a = { bg = colors.pink, fg = colors.bg_darker },
  b = { bg = colors.bg_darker, fg = colors.pink },
}

omni.visual = {
  a = { bg = colors.orange, fg = colors.bg_darker },
  b = { bg = colors.bg_darker, fg = colors.orange },
}

omni.replace = {
  a = { bg = colors.cyan, fg = colors.bg_darker },
  b = { bg = colors.bg_darker, fg = colors.cyan },
}

omni.inactive = {
  a = { bg = colors.bg_darker, fg = colors.purple },
  b = { bg = colors.bg_darker, fg = colors.pink, gui = "bold" },
  c = { bg = colors.bg_darker, fg = colors.pink },
}

return omni
