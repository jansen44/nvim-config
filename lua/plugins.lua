return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	
	use 'nvim-lua/plenary.nvim'
	
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-fzf-native.nvim'
	use 'BurntSushi/ripgrep'

	use 'nvim-treesitter/nvim-treesitter'
	use 'JoosepAlviste/nvim-ts-context-commentstring'

	use 'folke/tokyonight.nvim'

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		}
	}
end)
