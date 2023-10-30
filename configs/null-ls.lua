local null_ls = require "null-ls"

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
}

null_ls.setup {
  debug = true,
  sources = sources,
}
