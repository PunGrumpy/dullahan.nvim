local colors = require("dullahan.colors").setup({ transform = true })
local config = require("dullahan.config").options
local util = require("dullahan.util")

local dullahan = {}

dullahan.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = util.lighten(colors.bg_statusline, 0.9, colors.fg), fg = colors.fg },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

dullahan.insert = {
  a = { bg = colors.green, fg = colors.black },
}

dullahan.command = {
  a = { bg = colors.yellow, fg = colors.black },
}

dullahan.visual = {
  a = { bg = colors.magenta, fg = colors.black },
}

dullahan.replace = {
  a = { bg = colors.red, fg = colors.black },
}

dullahan.terminal = {
  a = { bg = colors.green, fg = colors.black },
}

dullahan.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

if config.lualine_bold then
  for _, mode in pairs(dullahan) do
    mode.a.gui = "bold"
  end
end

return dullahan
