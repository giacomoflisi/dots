-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- local variable
local opt = vim.opt

-- try this: vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
--

-- make search not case sensitive
opt.ignorecase = true

-- pandoc related, prevent it from folding text in .MD and .YML
opt.spell = false
opt.foldmethod = "manual"
opt.foldenable = false

-- colorschemes
-- require('gruvbox-material').setup()
-- o.termguicolors = true
-- opt.gruvbox_material_enable_italic_comment = 1
-- undo
-- vim.opt.undodir = vim.fn.expand('~/.nvim/undodir')

-- scrolling
opt.number = true -- side numbers
opt.relativenumber = true
opt.scrolloff = 8 -- hovering by 8 lines from the bottom while scrolling
opt.linebreak = true

-- indentation
-- o.expandtab = true              -- convert tabs to spaces
-- o.tabstop = 4                   -- insert 4 spaces for a tab
-- o.shiftwidth = 4                -- the number of spaces inserted for each indentation
-- o.smartindent = true

-- windows
-- vim.o.splitbelow = true
-- vim.o.splitright = true

-- completion
-- vim.o.timeoutlen = 300 -- time to wait for a mapped sequence to complete
--
-- g.vim_markdown_conceal = 0
--
--
-- opt.vim_markdown_conceal = 0
--
-- the next section is needed to preview MD files in the browser
-- vim.g.mkdp_browser = "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"

-- lazygit
-- vim.g.lazygit_config = false
