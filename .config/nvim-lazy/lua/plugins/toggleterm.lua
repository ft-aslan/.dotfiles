return {
  {
    "akinsho/toggleterm.nvim",
    enabled = false,
    version = "*",
    lazy = false,
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-t>]],
      })
    end,
    -- opts = { shell = 'nu' },
    keys = {
      { "<leader>wt", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Open terminal" },
    },
  },
}
