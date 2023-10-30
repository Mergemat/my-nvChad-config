local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "gopls",
  "gradle_ls",
  "solidity_ls_nomicfoundation",
}

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end

local function quick_fix()
  local params = {
    context = {
      diagnostics = vim.lsp.diagnostic.get_line_diagnostics(),
    },
  }
  vim.lsp.buf.code_action(params)
end

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    commands = {
      OrganizeImports = {
        organize_imports,
        description = "Organize Imports",
      },
      QuickFix = {
        quick_fix,
        description = "quick fix",
      },
    },
  }
  lspconfig.prismals.setup {}
end

--
-- lspconfig.pyright.setup { blabla}
