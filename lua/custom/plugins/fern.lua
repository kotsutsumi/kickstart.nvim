-- 操作	ショートカット
--
-- カーソルを動かす 上 / 下	j / k
-- ノードを選択 / もとに戻る	l / h
-- 新しいファイルを作成	N
-- 新しいディレクトリを作成	K
-- ノードをリネーム	R
-- Finderで開く（Mac）	x
-- ファイルを開く	e
-- 垂直分割してファイルを開く	E
-- 新規タブでファイルを開く	t
-- フォルダを開く	ctrl + m
-- 親ディレクトリに移動する	ctrl + h
-- ファイルを新規作成する	N
-- ディレクトリを新規作成する	K
-- ファイルを削除する	D
-- ファイルを移動する	m
-- ファイル名を変更する	R
-- ファイルを選択する	-
-- ファイルをコピーする	C
-- ペーストする	P
-- ファイルを移動する（ペーストで元ファイルを削除）	M
-- ファイルパスをコピーする	y
-- ファイル名に合わせてウィンドウ幅を広げる	z
-- 隠しファイルを表示/非表示する	!

return {
	"lambdalisue/fern.vim",
	dependencies = {
		{ 'lambdalisue/nerdfont.vim', },
		{
			'lambdalisue/fern-renderer-nerdfont.vim',
			config = function()
				vim.g['fern#renderer'] = "nerdfont"
				vim.g['fern#default_hidden'] = 1
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
