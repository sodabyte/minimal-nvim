local function root_pattern(marker)
    return function()
        return vim.fs.root(0, marker)
    end
end

local servers = {
    lua_ls = {
        name = "lua-language-server",
        cmd = { "lua-language-server" },
        _root_dir = root_pattern({ ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" }),
        filetypes = { "lua" },
    },
    gopls = {
        name = "gopls",
        cmd = { "gopls" },
        _root_dir = root_pattern({ "go.work", "go.mod", ".git" }),
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
    },
    rust_analyzer = {
        name = "rust-analyzer",
        cmd = { "rust-analyzer" },
        _root_dir = root_pattern({ "Cargo.toml", ".git" }),
        filetypes = { "rust" },
    },
}

local group = vim.api.nvim_create_augroup("UserLspStart", { clear = true })
for _, config in pairs(servers) do
    if vim.fn.executable(config.cmd[1]) ~= 0 then
        vim.api.nvim_create_autocmd("FileType", {
            group = group,
            pattern = config.filetypes,
            callback = function(ev)
                if config._root_dir then
                    config.root_dir = config._root_dir()
                end
                vim.lsp.start(config, { bufnr = ev.buf })
            end,
        })
    end
end

local set = vim.keymap.set

set('n', '<leader>e', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
set('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
set('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
set('n', '<leader>rf', ':lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
set('n', '<leader>df', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
set('v', '<leader>gq', ':lua vim.lsp.buf.formatting()<CR>', { noremap = true, silent = true })
set('i', '<C-S>', ':lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
set('i', '<C-X><C-O>', ':lua vim.lsp.buf.completion()<CR>', { noremap = true, silent = true })
