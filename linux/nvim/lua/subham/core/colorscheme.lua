-- set colorscheme to onedark with protected call
-- in case it isn't installed

local colorscheme = "onedark"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

require(colorscheme).setup({
	style = "darker",
})

require(colorscheme).load()
