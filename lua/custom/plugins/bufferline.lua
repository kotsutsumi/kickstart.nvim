return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup()

		vim.keymap.set(
			"n",
			"<C-9>",
			"<Cmd>BufferLineCycleNext<CR>",
			{ desc = 'Buffer: next' }
		)
		vim.keymap.set(
			"n",
			"<C-8>",
			"<Cmd>BufferLineCyclePrev<CR>",
			{ desc = 'Buffer: prev' }
		)
	end,
}
