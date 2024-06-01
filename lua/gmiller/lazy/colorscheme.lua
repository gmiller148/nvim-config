return {
    "navarasu/onedark.nvim",
    opts = {
        style = "cool",
        transparent = true,
        term_colors = true,
        code_style = {
            comments = "italic",
            keywords = "bold",
            functions = "bold",
            strings = "none",
            variables = "none",
        },
        lualine = {
            transparent = true,
        },
    },
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("onedark")

        vim.cmd.hi("Comment gui=none")
    end,
}
