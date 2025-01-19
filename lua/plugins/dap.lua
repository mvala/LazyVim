return {
  { "nvim-telescope/telescope-dap.nvim" },
  {
    "rcarriga/nvim-dap-ui",
    opts = {
      layouts = {
        {
          elements = {
            {
              id = "scopes",
              size = 0.25,
            },
            {
              id = "breakpoints",
              size = 0.25,
            },
            {
              id = "stacks",
              size = 0.25,
            },
            {
              id = "watches",
              size = 0.25,
            },
          },
          position = "left",
          size = 40,
        },
        {
          elements = {
            {
              id = "repl",
              size = 0.3,
            },
            {
              id = "console",
              size = 0.7,
            },
          },
          position = "right",
          size = 100,
        },
      },
    },
    config = function(_, opts)
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup(opts)
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        -- dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        -- dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap",
    -- stylua: ignore
    keys = {
      { "<F4>", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint", mode="n" },
      { "<F5>", function() require("dap").continue() end, desc = "Dap continue", mode="n" },
      { "<F6>", function() require("dap").step_over() end, desc = "Dap step over", mode = {"n"} },
      { "<F7>", function() require("dap").step_into() end, desc = "Dap step into", mode = {"n"} },
      { "<F8>", function() require("dap").step_out() end, desc = "Dap step out", mode = {"n"} },
      { "<F10>", function() require("dapui").toggle({}) end, desc = "Dap ui toggle", mode = {"n"} },
    },
  },
}
