return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
        -- vim.keymap.set("n", "<C-/>", "gcc<down>", { remap = true })
    end,

}

-- EOF
