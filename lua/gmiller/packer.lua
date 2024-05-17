vim.cmd [[ packadd packer.nvim ]]

return require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
    use 'glepnir/lspsaga.nvim'

    -- Color themes
	use('rose-pine/neovim')
    use('navarasu/onedark.nvim')

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
end)


