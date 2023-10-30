---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>w"] = { "<cmd>w<CR>", "Save" },
    ["<leader>ll"] = { "<cmd>TroubleToggle<CR>", "Open Trouble" },
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

-- more keybinds!

return M
