return {
  -- change layout preset for hint keybinding
  {
    "folke/which-key.nvim",
    opts = {
      preset = "modern", -- Keep your existing preset
      spec = {
        -- Add Alt-d group for debugger
        { "<A-d>", group = "debug" },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = { eslint = {} },
      setup = {
        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" or client.name == "vtsls" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
}
