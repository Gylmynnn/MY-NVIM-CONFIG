---@type ChadrcConfig
local M = {}
M.ui = {theme = 'catppuccin',

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    overriden_modules = nil,
  },
}
M.plugins = "custom.plugins"

return M
