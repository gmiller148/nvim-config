return {
    "laytan/cloak.nvim",

    config = function()
        require("cloak").setup({
            enabled = true,
            cloak_character = "*",

            highlight_group = "Comment",
            patterns = {
                {
                    -- Match any file starting with ".env"
                    file_pattern = {
                        ".env*",
                    },
                    -- Match an equals sign and any character after it
                    cloak_pattern = { "=.+", "-.+" },
                },
            },
        })
    end,
}
