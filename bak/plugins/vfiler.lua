-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	'obaland/vfiler.vim',
	dependencies = {
		'obaland/vfiler-column-devicons',
		{ "junegunn/fzf", dir = "~/.fzf", run = "./install --all" },
		'junegunn/fzf.vim',
		'obaland/vfiler.vim',
		'obaland/vfiler-fzf'
	},
	config = function()
		vim.keymap.set('n', '<leader>O',
			":VFiler -auto-cd -auto-resize -keep -layout=left -name=explorer -width=30 -columns=indent,devicons,name<CR>",
			{ desc = 'VFiler: open' })
	end,
}
