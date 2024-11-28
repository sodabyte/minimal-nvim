vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.fillchars = { eob = " " }
opt.autowrite = true -- enable auto write
opt.clipboard = "unnamedplus" -- sync with system clipboard
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3 -- hide * markup for bold and italic
opt.confirm = true -- confirm to save changes before exiting modified buffer
opt.cursorline = true -- enable highlighting of the current line
opt.expandtab = true -- use spaces instead of tabs
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.list = true -- show some invisible characters (tabs...
opt.mouse = "a" -- enable mouse mode
opt.number = true -- print line number
opt.pumblend = 10 -- popup blend
opt.pumheight = 10 -- maximum number of entries in a popup
opt.relativenumber = true -- relative line numbers
opt.scrolloff = 4 -- lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true -- round indent
opt.shiftwidth = 2 -- size of an indent
opt.shortmess:append({ W = true, I = true, c = true })
opt.showmode = true -- show/hide mode in statusline
opt.sidescrolloff = 8 -- columns of context
opt.signcolumn = "yes" -- always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- don't ignore case with capitals
opt.smartindent = true -- insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- put new windows below current
opt.splitright = true -- put new windows right of current
opt.tabstop = 2 -- number of spaces tabs count
opt.termguicolors = true -- true color support
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- command-line completion mode
opt.winminwidth = 5 -- minimum window width
opt.wrap = false -- disable line wrap

if vim.fn.has("nvim-0.9.0") == 1 then
  opt.splitkeep = "screen"
  opt.shortmess:append({ C = true })
end

-- fix markdown indentation settings
vim.g.markdown_recommended_style = 0
