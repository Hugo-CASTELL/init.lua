return {
    {
        "rust-lang/rust.vim",
        ft = "rust",
        config = function()
            vim.g.rustfmt_autosave = 1
        end,
    },
    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
        depends = {
            "nvim-lspconfig",
            "nvim-cmp",
        },
        opts = function()
            require("rust-tools").setup({})
        end,
    }
}
