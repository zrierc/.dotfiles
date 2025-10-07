return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      -- Remove default keymaps
      { "<leader>dB", false },
      { "<leader>db", false },
      { "<leader>dc", false },
      { "<leader>dC", false },
      { "<leader>dg", false },
      { "<leader>di", false },
      { "<leader>dj", false },
      { "<leader>dk", false },
      { "<leader>dl", false },
      { "<leader>do", false },
      { "<leader>dO", false },
      { "<leader>dp", false },
      { "<leader>dr", false },
      { "<leader>dR", false },
      { "<leader>ds", false },
      { "<leader>dt", false },
      { "<leader>du", false },
      { "<leader>dw", false },

      -- Add new Alt-d keymaps
      {
        "<A-d>B",
        function()
          require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
        end,
        desc = "Breakpoint Condition",
      },
      {
        "<A-d>b",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle Breakpoint",
      },
      {
        "<A-d>c",
        function()
          require("dap").continue()
        end,
        desc = "Run/Continue",
      },
      {
        "<A-d>a",
        function()
          require("dap").continue({ before = get_args })
        end,
        desc = "Run with Args",
      },
      {
        "<A-d>C",
        function()
          require("dap").run_to_cursor()
        end,
        desc = "Run to Cursor",
      },
      {
        "<A-d>g",
        function()
          require("dap").goto_()
        end,
        desc = "Go to Line (No Execute)",
      },
      {
        "<A-d>i",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
      },
      {
        "<A-d>j",
        function()
          require("dap").down()
        end,
        desc = "Down",
      },
      {
        "<A-d>k",
        function()
          require("dap").up()
        end,
        desc = "Up",
      },
      {
        "<A-d>l",
        function()
          require("dap").run_last()
        end,
        desc = "Run Last",
      },
      {
        "<A-d>o",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
      {
        "<A-d>O",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<A-d>P",
        function()
          require("dap").pause()
        end,
        desc = "Pause",
      },
      {
        "<A-d>r",
        function()
          require("dap").repl.toggle()
        end,
        desc = "Toggle REPL",
      },
      {
        "<A-d>s",
        function()
          require("dap").session()
        end,
        desc = "Session",
      },
      {
        "<A-d>t",
        function()
          require("dap").terminate()
        end,
        desc = "Terminate",
      },
      {
        "<A-d>w",
        function()
          require("dap.ui.widgets").hover()
        end,
        desc = "Widgets",
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    keys = {
      -- Remove default keymaps
      { "<leader>du", false },
      { "<leader>de", false },

      -- Add new Alt-d keymaps
      {
        "<A-d>u",
        function()
          require("dapui").toggle({})
        end,
        desc = "Dap UI",
      },
      {
        "<A-d>e",
        function()
          require("dapui").eval()
        end,
        desc = "Eval",
        mode = { "n", "v" },
      },
    },
  },
  {
    "mfussenegger/nvim-dap-python",
    keys = {
      -- Disable default python debug keymaps
      { "<leader>dPc", false },
      { "<leader>dPt", false },

      -- Add new Alt-d keymaps for Python debugging
      {
        "<A-d>Pc",
        function()
          require("dap-python").debug_class()
        end,
        desc = "Debug Class",
        ft = "python",
      },
      {
        "<A-d>Pt",
        function()
          require("dap-python").debug_method()
        end,
        desc = "Debug Method",
        ft = "python",
      },
    },
  },
}
