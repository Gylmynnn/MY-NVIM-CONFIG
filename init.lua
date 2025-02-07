require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
   dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
   require("core.bootstrap").gen_chadrc_template()
   require("core.bootstrap").lazy(lazypath)
end

vim.o.guifont = "JetBrainsMono Nerd Font:h16"
-- vim.o.guifont = "Maple Mono:h14"

-- vim.opt.linespace = 5
vim.g.neovide_transparency = 1.00
vim.g.neovide_fullscreen = true
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_padding_top = 30
-- vim.g.neovide_padding_bottom = 30
vim.g.neovide_padding_right = 30
vim.g.neovide_padding_left = 30

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"
