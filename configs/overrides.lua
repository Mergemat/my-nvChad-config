local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "prisma",
    "go",
    "solidity",
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  autotag = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    "pyright",
    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "eslint_d",
    "oxlint",
    "deno",
    "prettier",
    "biome",
    "solhint",
    "solidity-ls",
    "nomicfoundation-solidity-language-server",
    "prisma-language-server",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  view = {
    adaptive_size = true,
    side = "left",
    width = 25,
  },

  actions = {
    open_file = {
      resize_window = true,
      quit_on_open = true,
    },
  },

  renderer = {
    -- highlight_opened_files = "all",
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        git = {
          unstaged = "",
          deleted = "",
          untracked = "",
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
}
M.telescope = {
  defaults = {
    layout_config = {
      horizontal = {
        preview_width = 0.45,
        results_width = 0.9,
      },
    },
  },
}
return M
