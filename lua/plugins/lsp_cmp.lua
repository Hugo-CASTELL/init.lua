return {
	-- LSP
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		lazy = true,
		config = false,
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'},
		}
	},
	-- Autocompletion
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{'L3MON4D3/LuaSnip'},
        },
    },

    -- Mason 
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

    -- Copilot
    {
        'github/copilot.vim',
        init = function()
            vim.g.copilot_no_tab_map = true
        end,
        config = function()
            vim.keymap.set('i', '<C-e>', [[copilot#Accept("\<CR>")]], {
                silent = true,
                expr = true,
                script = true,
                replace_keycodes = false,
            })
        end,
    },}
