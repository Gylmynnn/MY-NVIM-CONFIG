---@type ChadrcConfig
local M = {}
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
   vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = false
   }
)

M.ui = {
   theme = 'catppuccin',
   cmp = {
      icons = true,
      lspkind_text = true,
      style = "default",
      border_color = "cyan",
      selected_item_bg = "colored",
   },

   telescope = { style = "bordered" },

   statusline = {
      theme = "minimal",
      separator_style = "round",
      overriden_modules = nil,
   },

   tabufline = {
      show_numbers = false,
      enabled = false,
      lazyload = true,
      overriden_modules = nil,
      tabufline = {
         show_numbers = false,
         enabled = true,
         lazyload = true,
         overriden_modules = nil,
      },

      -- nvdash (dashboard)
      nvdash = {
         load_on_startup = true,

         header = {
            "           ▄ ▄                   ",
            "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
            "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
            "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
            "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
            "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
            "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
            "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
            "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
         },

         buttons = {
            { "  Find File", "Spc f f", "Telescope find_files" },
            { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
            { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
            { "  Bookmarks", "Spc m a", "Telescope marks" },
            { "  Themes", "Spc t h", "Telescope themes" },
            { "  Mappings", "Spc c h", "NvCheatsheet" },
         },
      },

      cheatsheet = { theme = "grid" }, -- simple/grid
   },

   -- nvdash (dashboard)
   nvdash = {
      load_on_startup = true,

      header = {
         "           ▄ ▄                   ",
         "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
         "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
         "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
         "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
         "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
         "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
         "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
         "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
      },

      buttons = {
         { "  Find File", "Spc f f", "Telescope find_files" },
         { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
         { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
         { "  Bookmarks", "Spc m a", "Telescope marks" },
         { "  Themes", "Spc t h", "Telescope themes" },
         { "  Mappings", "Spc c h", "NvCheatsheet" },
      },
   },

   cheatsheet = { theme = "grid" }, -- simple/grid
}
M.plugins = "custom.plugins"

return M
