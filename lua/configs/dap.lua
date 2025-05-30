local dap = require "dap"

-- dap.adapters.codelldb = {
--   type = "server",
--   port = "13000",
--   executable = {
--     -- Change this to your path!
--     command = "/opt/codelldb/adapter/codelldb",
--     args = { "--port", "13000" },
--   },
-- }
--
-- dap.configurations.rust = {
--   {
--     name = "Launch file",
--     type = "codelldb",
--     request = "launch",
--     program = function()
--       return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
--     end,
--     cwd = "${workspaceFolder}",
--     stopOnEntry = false,
--   },
-- }

local dapui = require "dapui"
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
require("dapui").setup()
