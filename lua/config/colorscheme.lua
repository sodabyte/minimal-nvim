local normal_bg = "#11111b"
local normal_fg = "#89b4fa"
local comment_fg = "#9399b2"
local keyword_fg = "#cba6f7"
local string_fg = "#a6e3a1"

vim.cmd('highlight Normal guibg=' .. normal_bg .. ' guifg=' .. normal_fg)
vim.cmd('highlight Comment guifg=' .. comment_fg)
vim.cmd('highlight Keyword guifg=' .. keyword_fg)
vim.cmd('highlight String guifg=' .. string_fg)

vim.cmd('highlight Identifier guifg=#8ec07c')
vim.cmd('highlight Constant guifg=#fabd2f')
