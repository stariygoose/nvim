require("lint").linters_by_ft = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  javascriptreact = { "eslint_d" },
}

require("lint").linters.eslint_d = {
  cwd = function()
    return require("conform.util").root_file {
      ".eslintrc",
      ".eslintrc.js",
      ".eslintrc.json",
      "package.json",
    }()
  end,
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
