local supported = {
  "css",
  "graphql",
  "handlebars",
  "html",
  "javascript",
  "javascriptreact",
  "json",
  "jsonc",
  "less",
  "markdown",
  "markdown.mdx",
  "scss",
  "typescript",
  "typescriptreact",
  "vue",
  "yaml",
}

return {

  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "prettierd" } },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    ---@param opts ConformOpts
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      for _, ft in ipairs(supported) do
        opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
        table.insert(opts.formatters_by_ft[ft], "prettierd")
      end

      -- opts.formatters = opts.formatters or {}
      -- opts.formatters.prettierd = {
      --   condition = function(_, ctx)
      --     return M.has_parser(ctx) and (vim.g.lazyvim_prettier_needs_config ~= true or M.has_config(ctx))
      --   end,
      -- }
    end,
  },
  -- none-ls support
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.prettierd)
    end,
  },
}
