return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "*",
      css = {
        css_fn = true,
        names = true,
      },
      scss = {
        css_fn = true,
        names = true,
      },
      sass = {
        css_fn = true,
        names = true,
      },
    }, { RRGGBBAA = true, name = false })
  end,
}
