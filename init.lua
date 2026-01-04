vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    callback = function()
        vim.fn.system("<path_to_config_dir>/switch2us.sh")
    end,
})
