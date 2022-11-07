-- et leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
keymap.set("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>")
---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fH", "<cmd>Telescope highlights<cr>") -- list available highlights
keymap.set("n", "<leader>fi", "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>") -- Media
keymap.set("n", "<leader>fl", "<cmd>Telescope resume<cr>") -- Last serach
keymap.set("n", "<leader>fM", "<cmd>Telescope man_pages<cr>") -- Man pages
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>") -- Recent files
keymap.set("n", "<leader>fR", "<cmd>Telescope registers<cr>") -- Registers
keymap.set("n", "<leader>fk", "<cmd>Telescope Keymaps<cr>") -- Keymaps
keymap.set("n", "<leader>fC", "<cmd>Telescope commands<cr>") -- Commands

-- comment
keymap.set("n", "<m-/>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>")
keymap.set("x", "<m-/>", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')
