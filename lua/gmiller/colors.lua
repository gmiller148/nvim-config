local M = {}

function M.ColorMyPencils(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	local highlightGroups = {
		"Normal",
        "NormalFloat",
        "Pmenu",
        "PmenuSbar",
        "PmenuThumb",
        "TelescopeSelection",
        "TelescopeNormal",
        "TelescopePromptNormal",
        "TelescopeResultsNormal",
	}

	for _, group in ipairs(highlightGroups) do
		vim.api.nvim_set_hl(0, group, { bg = "none" })
	end

end

return M

