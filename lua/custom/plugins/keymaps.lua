-- keymaps.lua

-- keymap options
local opts = { noremap = true, silent = true }

-- local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap


-- ##################### ノーマルモード #####################

-- <Space>q で強制終了
keymap("n", "<Space>q", ":<C-u>q!<Return>", opts)

-- Tabでインデント
keymap("n", "<Tab>", ">>", opts)
keymap("n", "<S-Tab>", "<<", opts)

-- ESC*2 でハイライトやめる
keymap("n", "<Esc><Esc>", ":<C-u>set nohlsearch!<CR>", opts)


-- ##################### インサートモード #####################

-- jkでESC
keymap("i", "jk", "<ESC>", opts)


-- #################### ビジュアルモード ####################



return {}

-- EOF
