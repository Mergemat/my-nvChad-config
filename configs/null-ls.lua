local null_ls = require "null-ls"

require("Comment.ft").set("typescriptreact", { "//%s", "{/*%s*/}" })
local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with {
    extra_filetypes = { "solidity" },
  }, -- so prettier works only on these filetypes
  b.diagnostics.eslint_d,
  b.code_actions.eslint_d,
  -- Lua
  b.formatting.stylua,
  -- cpp
  b.formatting.clang_format,

  b.formatting.black,
  b.formatting.djlint,
  b.diagnostics.curlylint,
  b.diagnostics.ruff,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
