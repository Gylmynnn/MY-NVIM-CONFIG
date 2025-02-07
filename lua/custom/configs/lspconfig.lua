local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = { "ts_ls", "tailwindcss", "eslint", "prismals", "gopls", "svelte", "pyright", "intelephense", "html" }

for _, lsp in ipairs(servers) do
   lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
   }
end


-- lspconfig.emmet_ls.setup({
--    on_attach = on_attach,
--    capabilities = capabilities,
--    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
--    init_options = {
--       html = {
--          options = {
--             ["bem.enabled"] = true,
--          },
--       }
--    }
-- })
