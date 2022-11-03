-- import nvim-autopairs safely
local jester_setup, jester = pcall(require, "jester")
if not jester_setup then
	return
end
