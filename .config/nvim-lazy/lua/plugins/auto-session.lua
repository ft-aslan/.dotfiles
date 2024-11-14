return {
  {
    "nvimdev/dashboard-nvim",
    optional = true,
    opts = function(_, opts)
      local projects = {
        action = 'lua require("auto-session.session-lens").search_session()',
        desc = " Projects",
        icon = " ",
        key = "p",
      }
      projects.key_format = "  %s"

      table.insert(opts.config.center, 3, projects)
    end,
  },
  {
    "rmagatti/auto-session",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    lazy = false,
    config = function()
      require("auto-session").setup({
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/projects", "/mnt/c/Windows/System32" },
        bypass_save_filetypes = { "dashboard" },

        -- ⚠️ This will only work if Telescope.nvim is installed
        -- The following are already the default values, no need to provide them if these are already the settings you want.
        session_lens = {
          -- If load_on_setup is false, make sure you use `:SessionSearch` to open the picker as it will initialize everything first
          load_on_setup = true,
          previewer = false,
          mappings = {
            -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
            delete_session = { "i", "<C-D>" },
            alternate_session = { "i", "<C-S>" },
            copy_session = { "i", "<C-Y>" },
          },
          -- Can also set some Telescope picker options
          -- For all options, see: https://github.com/nvim-telescope/telescope.nvim/blob/master/doc/telescope.txt#L112
          theme_conf = {
            border = true,
            -- layout_config = {
            --   width = 0.8, -- Can set width and height as percent of window
            --   height = 0.5,
            -- },
          },
        },
      })
      vim.keymap.set("n", "<leader>fp", require("auto-session.session-lens").search_session)
    end,
  },
}
