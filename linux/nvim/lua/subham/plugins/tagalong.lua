-- import tagalong plugin safely
local setup, tagalone = pcall(require, "tagalong")
if not setup then
	return
end

-- configure/enable tagalong
tagalone.setup()
