return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls" }
         })
      end
   },
   {
      "neovim/nvim-lspconfig",
      dependencies = { 'saghen/blink.cmp' },
      config = function()
         vim.lsp.enable("lua_ls", "hyprls", "bashls", "jdtls",
            "pylsp", "shellcheck", "debugpy", "qmlls")
         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
         vim.keymap.set({ 'n', 'v' }, '<Leader>ca', vim.lsp.buf.code_action, {})
      end
   },
   {
      "folke/trouble.nvim",
      opts = {
         ---@type trouble.Window.opts
         win = {type=float},
      }, -- for default options, refer to the configuration section for custom setup.
      lazy = false;
      -- cmd = "Trouble",
      keys = {
         {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle focus=ture win.position=bottom<cr>",
            desc = "Diagnostics (Trouble)",
         },
         {
            "<leader>xX",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
         },
         {
            "<leader>cs",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols (Trouble)",
         },
         {
            "<leader>cl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
         },
         {
            "<leader>xL",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List (Trouble)",
         },
         {
            "<leader>xQ",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)",
         },
         {
            "<leader>gr",
            "<cmd>Trouble lsp_references toggle focus=true win.position=bottom<cr>",
            desc="find all references",
         },
      },
   }
}
