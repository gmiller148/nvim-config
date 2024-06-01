return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = { "markdown" },
        },
        auto_install = true,
        sync_install = false,
        ensure_installed = {
            "bash",
            "c",
            "python",
            "diff",
            "lua",
            "luadoc",
            "markdown",
            "vim",
            "vimdoc",
            "rust",
        },
        indent = {
            enable = true,
        },
    },
    config = function(_, opts)
        -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
        -- Prefer git instead of curl in order to improve connectivity in some environments
        require("nvim-treesitter.install").prefer_git = true
        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup(opts)
    end,
}
