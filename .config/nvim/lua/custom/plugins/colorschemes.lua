return {
  'folke/tokyonight.nvim',
  'sainnhe/gruvbox-material',
  'sainnhe/everforest',
  {
    -- colorscheme picker
    'vague2k/huez.nvim',
    -- if you want registry related features, uncomment this
    import = 'huez-manager.import',
    branch = 'stable',
    event = 'UIEnter',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('huez').setup {}
    end,
  },
}
