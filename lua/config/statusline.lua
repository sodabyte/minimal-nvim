_G.lsp_clients = function()
    local clients = vim.lsp.get_active_clients({ bufnr = vim.api.nvim_get_current_buf() })
    if #clients == 0 then
        return " " -- no active lsp clients
    end
    local client_names = {}
    for _, client in ipairs(clients) do
        table.insert(client_names, client.name)
    end
    return "LSP: " .. table.concat(client_names, ", ")
end

_G.lsp_diagnostics = function()
    local clients = vim.lsp.get_active_clients({ bufnr = vim.api.nvim_get_current_buf() })
    if #clients == 0 then
        return " " -- no diagnostics to show if no lsp is attached
    end

    local bufnr = vim.api.nvim_get_current_buf()
    local error_count = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.ERROR })
    local warn_count = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.WARN })
    local info_count = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.INFO })
    local hint_count = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.HINT })

    return string.format("E:%d W:%d I:%d H:%d", error_count, warn_count, info_count, hint_count)
end

vim.opt.statusline = " %t %m %r %h%w %{v:lua.lsp_clients()} %{v:lua.lsp_diagnostics()} %= %l:%c %p%% "
