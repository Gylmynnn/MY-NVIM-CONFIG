---@type ChadrcConfig
local M = {}
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)
M.ui = {
    theme = 'catppuccin',

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
