return {
	"lambdalisue/fern.vim",
	dependencies = {
		{ 'lambdalisue/nerdfont.vim', },
		{
			'lambdalisue/fern-renderer-nerdfont.vim',
			config = function()
				vim.g['fern#renderer'] = "nerdfont"
			end
		},
	},
	config = function()
		vim.keymap.set(
			"n",
			"<leader>o",
			"<Cmd>Fern . -reveal=% -drawer<CR>",
			{ desc = 'Fern: open' }
		)
	end,
}

-- EOF
