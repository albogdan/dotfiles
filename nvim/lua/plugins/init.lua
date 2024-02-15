return {
  -- Plugins that require no config

  -- lua functions that many plugins use
  "nvim-lua/plenary.nvim", 

  -- tmux & split window navigation
  "christoomey/vim-tmux-navigator",

   -- Git related plugins
   'tpope/vim-fugitive',
   'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

   -- TODO: addin noice.nvim

   {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('onedark').setup {
        -- Set a style preset. 'dark' is default.
        style = 'dark', -- dark, darker, cool, deep, warm, warmer, light
      }
      require('onedark').load()
    end,
  },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },

  -- "gc" to comment visual regions/lines
  -- { 'numToStr/Comment.nvim', opts = {} },

}
