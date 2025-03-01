local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
    local config = require("onedarkpro.config")

    return {
        ToggleTerm = { bg = (config.options.transparency or config.options.nobackground) and "NONE" or theme.palette.bg, fg = theme.palette.fg },
        ToggleTermBorder = { fg = theme.palette.gray },
    }
end

return M
