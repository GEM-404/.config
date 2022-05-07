----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme


local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require 'packer'

-- Add packages
return packer.startup(function()
  use 'wbthomason/packer.nvim' -- packer can manage itself

  -- lspsaga.nvim
  use 'glepnir/lspsaga.nvim'

  -- treesitter.nvim
  use 'nvim-treesitter/nvim-treesitter'

  -- fatih/vim-go
  use 'fatih/vim-go'

  -- auto-completion
  use 'nvim-lua/completion-nvim'
    

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- Vim fugitive
  use 'tpope/vim-fugitive'

  -- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'



  -- Color schemes
  use 'navarasu/onedark.nvim'

  use 'tanvirtin/monokai.nvim'

  use { 'rose-pine/neovim', as = 'rose-pine' }

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  use 'hrsh7th/nvim-compe'

  -- Statusline
  use {
    'famiu/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- use { 
  --   'glepnir/galaxyline.nvim',
  --   branch = 'main',
  --   requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  --   config = function()
  -- 	    require("my_statusline")
  --   end,
  -- }


  -- Dashboard (start screen) -- mhinz/startify

  use { 'mhinz/vim-startify' }

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = {
      'NvimTreeClipboard',
      'NvimTreeClose',
      'NvimTreeFindFile',
      'NvimTreeOpen',
      'NvimTreeRefresh',
      'NvimTreeToggle',
    },
    event = 'VimEnter',
  }


    use {
    'neovim/nvim-lspconfig',
    requires = {
      { 'b0o/SchemaStore.nvim' },
      { 'williamboman/nvim-lsp-installer' },
      { 'jose-elias-alvarez/nvim-lsp-ts-utils' },
      {
        'jose-elias-alvarez/null-ls.nvim',
        after = 'nvim-lspconfig',
      },
      {
        'ray-x/lsp_signature.nvim',
        after = 'nvim-lspconfig',
      },
    },
    event = 'BufWinEnter',
  }

  -- williamboman/nvim-lsp-installer
  use 'williamboman/nvim-lsp-installer'

    -- floating terminal
  use {
    'voldikss/vim-floaterm',
  }

  -- file navigation
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim'} }
  }

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}

  use {'JohnnyMorganz/Stylua'}

  use {'artanikin/vim-synthwave84'}


  use { 'terrortylor/nvim-comment' }

  use { 'Vimjas/vim-python-pep8-indent' }


end)

