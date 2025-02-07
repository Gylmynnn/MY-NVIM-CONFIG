local plugins = {
   {
      "shellRaining/hlchunk.nvim",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
         require "custom.configs.chank"
      end
   },
   {
      "giusgad/pets.nvim",
      dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
      config = function()
         require "custom.configs.pets"
      end
   },

   {
      "rachartier/tiny-inline-diagnostic.nvim",
      event = "VeryLazy", -- Or `LspAttach`
      priority = 1000,    -- needs to be loaded in first
      config = function()
         require "custom.configs.inline-diagnostic"
      end
   },

   {
      "kdheepak/lazygit.nvim",
      lazy = true,
      cmd = {
         "LazyGit",
         "LazyGitConfig",
         "LazyGitCurrentFile",
         "LazyGitFilter",
         "LazyGitFilterCurrentFile",
      },
      dependencies = {
         "nvim-lua/plenary.nvim",
      },

      keys = {
         { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
      }
   },



   {
      "neovim/nvim-lspconfig",
      config = function()
         require "plugins.configs.lspconfig"
         require "custom.configs.lspconfig"
      end,
   },
   {
      "williamboman/mason.nvim",
      opts = {
         ensure_installed = {
            "eslint-lsp",
            "prettierd",
            "tailwindcss-language-server",
            "typescript-language-server",
            "prisma-language-server",
            "svelte-language-server",
            "gopls",
            "pyright"
         },
      },
   },

   { -- This plugin
      "Zeioth/compiler.nvim",
      cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
      dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
      opts = {},
   },
   { -- The task runner we use
      "stevearc/overseer.nvim",
      commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
      cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
      opts = {
         task_list = {
            direction = "bottom",
            min_height = 25,
            max_height = 25,
            default_detail = 1
         },
      },
   },

   {
      'akinsho/flutter-tools.nvim',
      lazy = false,
      dependencies = {
         'nvim-lua/plenary.nvim',
         'stevearc/dressing.nvim', -- optional for vim.ui.select
      },
      config = function()
         require "custom.configs.flutter-tools"
      end,
   },
   {
      "nvimtools/none-ls.nvim",
      event = "VeryLazy",
      opts = function()
         return require "custom.configs.null-ls"
      end,
   },
   {
      "windwp/nvim-ts-autotag",
      ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      config = function()
         require("nvim-ts-autotag").setup()
      end,
   },
   {
      "nvim-treesitter/nvim-treesitter",
      opts = function()
         local opts = require "plugins.configs.treesitter"
         opts.ensure_installed = {
            "lua",
            "javascript",
            "typescript",
            "tsx",
         }
         return opts
      end,
   }
}
return plugins
