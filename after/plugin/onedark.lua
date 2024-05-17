
require('onedark').setup {
    style = 'deep',
    transparent = true,
    term_colors = true,
    code_style = {
        comments = 'italic',
        keywords = 'bold',
        functions = 'bold',
        strings = 'none',
        variables = 'none'
    },
    lualine = {
        transparent = true,
    }
}

require('onedark').load()
