return {
  "vyfor/cord.nvim",
  enabled = true, -- enable plugins
  build = ":Cord update",
  opts = {
    editor = {
      client = "neovim", -- vim, neovim, lunarvim, nvchad, astronvim or your application's client id
      tooltip = "god's in heaven all's right with the world 🍁", -- Text to display when hovering over the editor's image
    },
    display = {
      theme = "catppuccin",
      flavour = "accent",
    },
    idle = {
      details = "AFK",
    },
  },
}
