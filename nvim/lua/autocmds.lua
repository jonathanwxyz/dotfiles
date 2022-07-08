-- Go to the last position when reopening a file
local group = vim.api.nvim_create_augroup("GoToLastPosition", { clear = true })
vim.api.nvim_create_autocmd("BufReadPost", { callback = function()
    local line = vim.fn.line
    local lastPos = line("'\"")
    if lastPos > 0 and lastPos <= line("$") then
        vim.api.nvim_win_set_cursor(0, { lastPos, 0 })
    end
end, group = group})
