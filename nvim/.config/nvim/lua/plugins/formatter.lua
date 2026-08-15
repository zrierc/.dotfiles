local OXFMT_MARKERS = { ".oxfmtrc.json", ".oxfmtrc.jsonc", "oxfmt.config.ts" }
local BIOME_MARKERS = { "biome.json", "biome.jsonc" }

return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters = opts.formatters or {}
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      -- oxfmt covers the same filetypes biome used to (parity with biome extra)
      for _, ft in ipairs({
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "json",
        "jsonc",
        "css",
        "graphql",
        "vue",
        "svelte",
        "astro",
        "markdown",
        "markdown.mdx",
      }) do
        opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
        table.insert(opts.formatters_by_ft[ft], "oxfmt")
      end

      -- Priority: oxfmt > biome > prettier (conform runs only formatters whose condition passes)
      opts.formatters.oxfmt = {
        condition = function(_, ctx)
          return vim.fs.root(ctx.filename, OXFMT_MARKERS) ~= nil
        end,
      }

      -- biome: keep the extra's require_cwd, add the oxfmt-first gate
      opts.formatters.biome = vim.tbl_extend("force", opts.formatters.biome or {}, {
        condition = function(_, ctx)
          return vim.fs.root(ctx.filename, BIOME_MARKERS) ~= nil and vim.fs.root(ctx.filename, OXFMT_MARKERS) == nil
        end,
      })

      -- prettier: keep the extra's parser/config check, add the marker gate
      local prev_prettier = opts.formatters.prettier

      opts.formatters.prettier = {
        condition = function(fc, ctx)
          if prev_prettier and prev_prettier.condition and not prev_prettier.condition(fc, ctx) then
            return false
          end
          return vim.fs.root(ctx.filename, BIOME_MARKERS) == nil and vim.fs.root(ctx.filename, OXFMT_MARKERS) == nil
        end,
      }
    end,
  },
}
