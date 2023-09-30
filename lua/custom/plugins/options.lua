-- options.lua

local opt = vim.opt


-- ######################### 全般 #########################

-- マウス利用
opt.mouse = 'a'

-- エラー時の音を画面表示に鳴らす
opt.visualbell = true

-- 括弧入力時の対応する括弧を表示
opt.showmatch = true

-- 対応括弧のハイライト表示を3sにする
opt.matchtime = 3

-- ヘルプファイル
opt.helplang = 'ja'

-- tabバーの表示
opt.showtabline = 2

-- インデントをC言語風に設定
opt.smartindent = true

-- ターミナルのタブ名に現在編集中のファイル名を設定
opt.title = true

-- 行を折り返す
opt.wrap = true

-- 全角文字表示設定
-- opt.ambiwidth = 'double'

-- ファイルを上書きする前にバックアップを作ることを無効化
opt.writebackup = false
opt.backup = false

-- スワップファイル無し
opt.swapfile = false

-- vim の矩形選択で文字が無くても右へ進める
opt.virtualedit = "all"

-- バッファ非表示設定
-- opt.hidden = true

-- クリップボード設定
opt.clipboard:append({ unnamedplus = true })

-- 特殊文字表示
opt.list = true
opt.listchars = { tab = '>>', trail = '-', nbsp = '+' }


-- ######################## 検索・置換 ########################

-- 大文字小文字の区別なく検索する
opt.ignorecase = true

-- 検索文字列に大文字が含まれている場合は区別して検索する
opt.smartcase = true

-- 検索が末尾までいったら先頭から検索
opt.wrapscan = true

-- 検索語をハイライト表示
opt.hlsearch = true

-- 検索文字列入力時に順次対象文字列にヒットさせる
opt.incsearch = true

-- インタラクティブに変更
opt.inccommand = "split"


-- ######################## インデント ########################

-- オートインデント
opt.smartindent = true

-- softtabstop や shiftwidth で設定されている値分のスペースが挿入されたときに、挿入されたスペース数が tabstop に達してもタブに変換されない
opt.expandtab = true

-- スペースn個分で1つのタブとしてカウントするか
opt.tabstop = 4

-- <tab>を押したとき、n個のスペースを挿入
opt.softtabstop = 4

-- <Enter>や<<, >>などを押したとき、n個のスペースを挿入
opt.shiftwidth = 4

return {}

-- EOF
