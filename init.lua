vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    callback = function()
        vim.fn.system("./switch2us.sh")
    end,
})
