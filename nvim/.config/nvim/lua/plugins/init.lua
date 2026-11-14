return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { import = "nvchad.blink.lazyspec" },

  {
    "OXY2DEV/markview.nvim",
    lazy = false,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css",
        "rust", "go", "typescript", "python", "gomod", "gowork",
        "markdown", "markdown_inline",
      },
    },
  },

  -- etch: AI code editing via Pi
  {
    dir = "/home/shx/code/sandbox/etch.nvim",
    lazy = false,
    config = function()
      require("etch").setup({
        keybind = "<leader>ea",
        model = "opencode/deepseek-v4-flash-free",
      })
    end,
  },
}
