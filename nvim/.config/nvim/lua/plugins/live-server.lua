return {
  "barrett-ruth/live-server.nvim",
  cmd = { "LiveServerStart", "LiveServerStop" },
  build = "npm i -g live-server",
  config = true,
  keys = {
    {
      "<leader>cp",
      ft = "html",
      "<cmd>LiveServerStart<cr>",
      desc = "Start Live Server",
    },
    {
      "<leader>cP",
      ft = "html",
      "<cmd>LiveServerStop<cr>",
      desc = "Stop Live Server",
    },
  },
}
