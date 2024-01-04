---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>w"] = { "<cmd>w<CR>", "Save" },
    ["<leader>ll"] = { "<cmd>TroubleToggle<CR>", "Open Trouble" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<C-d>"] = { "<C-d>zz" },

    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },

    ["<leader>oi"] = { "<cmd>OrganizeImports<CR>", "Organize Imports" },
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
  },
}

M.comment = {
  plugin = true,

  -- toggle comment in both modes
  n = {
    ["<leader>/"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },

  v = {
    ["<leader>/"] = {
      "<ESC><cmd>lua require('Comment.api').comment.blockwise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        require("harpoon"):list():append()
      end,
      "Add file to harpoon",
    },
    ["<C-e>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      "Open harpoon",
    },
    ["<C-j>"] = {
      function()
        require("harpoon"):list():select(1)
      end,
      "Jump to file 1",
    },
    ["<C-k>"] = {
      function()
        require("harpoon"):list():select(2)
      end,
      "Jump to file 2",
    },
    ["<C-l>"] = {
      function()
        require("harpoon"):list():select(3)
      end,
      "Jump to file 3",
    },
    ["<C-;>"] = {
      function()
        require("harpoon"):list():select(4)
      end,
      "Jump to file 4",
    },
  },
}

M.git = {
  n = {
    ["<leader>gl"] = {
      ":Flog<CR>",
      "Git Log",
    },
    ["<leader>gf"] = {
      ":DiffviewFileHistory<CR>",
      "Git File History",
    },
    ["<leader>gc"] = {
      ":DiffviewOpen HEAD~2<CR>",
      "Git Last Commit",
    },
    ["<leader>gt"] = {
      ":DiffviewToggleFile<CR>",
      "Git Last Commit",
    },
  },
}
-- more keybinds!

return M
