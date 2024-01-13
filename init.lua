-- local autocmd = vim.api.nvim_create_autocmd

vim.opt.relativenumber = true
vim.o.mouse = ""
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 100 }
  end,
})
-- vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
--
-- })
--1. Using method signature
-- Set only line comment or both
-- You can also chain the set calls
