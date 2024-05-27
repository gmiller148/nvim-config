local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

vim.keymap.set("n", "<leader>ph", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>pk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ps", builtin.grep_string, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>pw", builtin.builtin, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>pd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>pr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>p.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

vim.keymap.set("n", "<leader>/", function()
    -- You can pass additional configuration to Telescope to change the theme, layout, etc.
    builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        winblend = 10,
        previewer = false,
    }))
end, { desc = "[/] Fuzzily search in current buffer" })

vim.keymap.set("n", "<leader>s/", function()
    builtin.live_grep({
        grep_open_files = true,
        prompt_title = "Live Grep in Open Files",
    })
end, { desc = "[S]earch [/] in Open Files" })

-- It's also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
require('telescope').setup{
    active=true,
    defaults = {
        winblend = 0,
    },
    dependencies = {
        { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    },
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
        },
    },
}
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")
