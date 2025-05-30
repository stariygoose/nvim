require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })

map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical Split" })

-- Trouble

map("n", "<leader>tt", "<cmd>Trouble<CR>", { desc = "Open Trouble" })
map("n", "<leader>td", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Diagnostics" })
map("n", "<leader>tb", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Buffer Diagnostic" })

-- Debug
map("n", "<F5>", function()
  require("dap").continue()
end, { desc = "Continue Debugging" })

map("n", "<F6>", function()
  require("dap").terminate()
end, { desc = "Terminate Debugger" })

map("n", "<F10>", function()
  require("dap").step_over()
end, { desc = "Step Over" })

map("n", "<F11>", function()
  require("dap").step_into()
end, { desc = "Step Into" })

map("n", "<F12>", function()
  require("dap").step_out()
end, { desc = "Step Out" })

map("n", "<F9>", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })

map("n", "<leader>dr", function()
  require("dap").repl.open()
end, { desc = "Open REPL" })

map("n", "<leader>dl", function()
  require("dap").run_last()
end, { desc = "Run Last Debug" })

-- Git
map("n", "<leader>gl", ":Flog<CR>", { desc = "Git Log" })
map("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
map("n", "<leader>gc", ":DiffviewOpen HEAD~1<CR>", { desc = "Git Last Commit" })
map("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Git File History" })

-- Terminal
map("n", "<C-]>", function()
  require("nvchad.term").toggle { pos = "vsp", size = 0.4 }
end, { desc = "Toogle Terminal Vertical" })
map("n", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp", size = 0.4 }
end, { desc = "Toogle Terminal Horizontal" })
map("n", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end, { desc = "Toogle Terminal Float" })
map("t", "<C-]>", function()
  require("nvchad.term").toggle { pos = "vsp" }
end, { desc = "Toogle Terminal Vertical" })
map("t", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp" }
end, { desc = "Toogle Terminal Horizontal" })
map("t", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end, { desc = "Toogle Terminal Float" })

-- Basic

map("i", "jj", "<ESC>")
map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
