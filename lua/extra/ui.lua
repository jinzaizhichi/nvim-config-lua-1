vim.opt.pumblend = 0
vim.opt.winblend = 0

local float = require("util.opts").float

return {
  -- editor
  {
    "gitsigns.nvim",
    opts = {
      preview_config = {
        border = float.border,
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      window = {
        border = float.border,
        winblend = float.winblend,
      },
    },
  },
  {
    "telescope.nvim",
    opts = {
      defaults = {
        winblend = float.winblend,
      },
    },
  },

  -- coding
  {
    "nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      local win = require("util.opts").win

      local win_bordered = cmp.config.window.bordered({
        border = float.border,
        winhighlight = win.winhighlight,
      })

      opts.window = {
        completion = win_bordered,
        documentation = win_bordered,
      }
    end,
  },

  -- lsp
  {
    "lspsaga.nvim",
    opts = {
      ui = {
        border = float.border,
        winblend = float.winblend,
      },
    },
  },
  {
    "nvim-lspconfig",
    opts = {
      diagnostics = {
        float = {
          border = float.border,
        },
      },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig.ui.windows").default_options = {
        border = float.border,
      }
    end,
  },
  {
    "mason.nvim",
    opts = {
      ui = {
        border = float.border,
      },
    },
  },
  {
    "null-ls.nvim",
    opts = {
      border = float.border,
    },
  },

  -- ui
  {
    "noice.nvim",
    opts = {
      -- https://github.com/folke/noice.nvim/blob/main/lua/noice/config/views.lua
      views = {
        mini = {
          win_options = {
            winblend = float.winblend,
          },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "dressing.nvim",
    opts = {
      input = {
        win_options = {
          winblend = float.winblend,
        },
      },
      select = {
        nui = {
          win_options = {
            winblend = float.winblend,
          },
        },
      },
      builtin = {
        win_options = {
          winblend = float.winblend,
        },
      },
    },
  },
}
