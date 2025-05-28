local util = require "conform.util"

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascriptreact = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },

  formatters = {
    eslint_d = {
      cwd = util.root_file { ".eslintrc", ".eslintrc.js", ".eslintrc.json", "package.json" },
    },
    prettier = {
      cwd = util.root_file { ".prettierrc", ".prettierrc.js", ".prettierrc.json", "package.json" },
    },
  },
}

return options
