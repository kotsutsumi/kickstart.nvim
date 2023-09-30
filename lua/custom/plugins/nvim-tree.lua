-- nvim-tree

return {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        -- netrwの無効化
        vim.api.nvim_set_var('loaded_netrw', 1)
        vim.api.nvim_set_var('loaded_netrwPlugin', 1)

        require('nvim-tree').setup {
            view = {
                width = '20%',
                signcolumn = 'no',
            },

            renderer = {
                highlight_git = true,
                highlight_opened_files = 'name',
                icons = {
                    glyphs = {
                        git = {
                            unstaged = '❗',
                            renamed = '»',
                            untracked = '❓',
                            deleted = '✘',
                            staged = '✓',
                            unmerged = '',
                            ignored = '◌',
                        },
                    },
                },
            },

            actions = {
                expand_all = {
                    max_folder_discovery = 100,
                    exclude = { '.git', 'target', 'build' },
                },
            },
            on_attach = require('custom.nvim-tree-actions').on_attach,
        }
    end
}

-- EOF
