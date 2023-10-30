require("lint").linters_by_ft = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d", "eslint", "biome" },
  typescriptreact = { "eslint_d", "eslint", "biome" },
  javascriptreact = { "eslint_d" },
  solidity = { "solhint" },
  sol = { "solhint" },
}
