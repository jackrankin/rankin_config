vim.cmd [[packadd packer.nvim]]

local capabilities = require('cmp_nvim_lsp').default_capabilities()

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

    use {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'}
    use {'williamboman/mason.nvim'}
    use {'williamboman/mason-lspconfig.nvim'}
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'L3MON4D3/LuaSnip'}
    use {'saadparwaiz1/cmp_luasnip'}


    require('lspconfig').lua_ls.setup{
        capabilities = capabilities,
        on_attach = function()
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        end
    }

    require('lspconfig').pyright.setup{
        capabilities = capabilities,
        on_attach = function()
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        end
    }

    require('lspconfig').clangd.setup{
        capabilities = capabilities,
        on_attach = function()
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        end
    }

    require('lspconfig').gopls.setup{
        capabilities = capabilities,
        on_attach = function()
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        end
    }

    vim.opt.completeopt={'menu', 'menuone', 'noselect'}

    local cmp = require'cmp'

    cmp.setup({
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            end,
        },
        window = {
            completion = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' }, -- For luasnip users.
        }, {
            { name = 'buffer' },
        })
    })

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

    use {'sthendev/mariana.vim'}

    use {'ray-x/material_plus.nvim'}

    use { 'rose-pine/neovim', as = 'rose-pine' }

    use { "catppuccin/nvim", as = "catppuccin" }

    use {'theprimeagen/harpoon'}

    use { "zootedb0t/citruszest.nvim" }

    use {'Mofiqul/vscode.nvim'}


end)
