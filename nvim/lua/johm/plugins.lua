vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

	use({"nvim-treesitter/nvim-treesitter"})

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
    }

    use { 'alexghergh/nvim-tmux-navigation', config = function()

        local nvim_tmux_nav = require('nvim-tmux-navigation')

        vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
        vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
        vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
        vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
        vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
        vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
    end
    }

    use {'ofirgall/ofirkai.nvim', config = function()
        vim.cmd("colo ofirkai")
    end
    }

    use { 'sthendev/mariana.vim', as ="mariana2" }

    use {'ray-x/material_plus.nvim'}

    use { 'rose-pine/neovim', as = 'rose-pine' }

    use { "catppuccin/nvim", as = "catppuccin" }

    use {'theprimeagen/harpoon'}
    
    use {'edluffy/hologram.nvim', config = function()
        require('hologram').setup{
            auto_display = true -- WIP automatic markdown image display, may be prone to breaking
        }
    end
    }

end)
