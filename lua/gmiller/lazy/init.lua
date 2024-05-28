return {
    { "tpope/vim-sleuth" }, -- Detect tabstop and shiftwidth automatically
    { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    { "numToStr/Comment.nvim", opts = {} }, -- `gc` for line comment, `gb` for block comment
    {
        "folke/todo-comments.nvim",
        event = "VimEnter",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = { signs = true }
    },
    {
        "Eandrju/cellular-automaton.nvim",
        config = function ()
            vim.keymap.set("n", "<leader>rain", ":CellularAutomaton make_it_rain<CR>")
        end,
    },
}, {
    ui = {
        -- If you are using a Nerd Font: set icons to an empty table which will use the
        -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
        icons = vim.g.have_nerd_font and {} or {
            cmd = "⌘",
            config = "🛠",
            event = "📅",
            ft = "📂",
            init = "⚙",
            keys = "🗝",
            plugin = "🔌",
            runtime = "💻",
            require = "🌙",
            source = "📄",
            start = "🚀",
            task = "📌",
            lazy = "💤 ",
        },
    },
}
