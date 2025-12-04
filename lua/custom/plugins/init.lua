-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'numToStr/Comment.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('Comment').setup {
        toggler = {
          line = '<localleader>/',
        },
        opleader = {
          line = '<localleader>/',
        },
      }
    end,
  },
  {
    'lervag/vimtex',
    lazy = false, -- load on startup (vimtex likes this)
    init = function()
      -- Use latexmk as the default compiler
      vim.g.vimtex_compiler_method = 'latexmk'

      -- Choose your PDF viewer, adjust this to your system:
      -- common values: "zathura", "skim", "okular", "sioyek", "general"
      vim.g.vimtex_view_method = 'zathura'

      -- Don’t use `tex` as a generic filetype for plaintex
      vim.g.vimtex_filetype_map = { tex = 'latex' }

      vim.g.vimtex_quickfix_mode = 2 -- show errors only
      vim.g.vimtex_quickfix_open_on_warning = 0 -- don't auto-open on warnings
      vim.g.vimtex_syntax_enabled = 0
      vim.g.vimtex_imaps_enabled = 1
      vim.g.vimtex_imaps_leader = ';' -- for example
      -- Optional: disable vimtex mappings if they clash
      -- vim.g.vimtex_mappings_enabled = 0
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('bufferline').setup {}
    end,
  },
  {
    'SirVer/ultisnips',
    dependencies = { 'honza/vim-snippets' }, -- optional, but gives a lot of LaTeX snippets
    init = function()
      vim.g.UltiSnipsExpandTrigger = '<tab>'
      vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
      vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        size = 20,
        open_mapping = [[<A-h>]], -- Alt + h to toggle
        direction = 'horizontal',
        close_on_exit = true,
        persist_size = true,
      }
    end,
  },
}
