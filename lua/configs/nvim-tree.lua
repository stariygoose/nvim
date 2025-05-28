local M = {}

M.on_attach = function(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return {
      desc = "nvim-tree: " .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true,
    }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close Dir")
  vim.keymap.set("n", "v", api.node.open.vertical, opts "Open in vsplit")
  vim.keymap.set("n", "<leader>e", api.tree.toggle, opts "Toggle Tree")
end

M.setup = function()
  require("nvim-tree").setup {
    on_attach = M.on_attach,
    git = {
      enable = true,
      ignore = false,
      timeout = 500,
    },
    renderer = {
      highlight_git = true,
      icons = {
        show = {
          git = true,
          folder = true,
          file = true,
          folder_arrow = true,
        },
      },
    },
    view = {
      width = 30,
      side = "left",
    },
  }
end

return M
