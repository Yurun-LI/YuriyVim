-- TODO: User Config for predefined plugins
lvim.builtin.comment.active = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.dashboard.section.header.val = require("others.dashboard_config").headers.bingo
lvim.builtin.alpha.dashboard.section.footer = require("others.dashboard_config").footer
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "cpp",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml"
}
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.ignore_install = {"haskell"}
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.notify.opts.stages = "fade"

-- TODO: Additional plugins
lvim.customs = require("custom.plugin_configs")

lvim.plugins = {
    {
        "lukas-reineke/indent-blankline.nvim",
        opt = false,
        event = "BufRead",
        config = lvim.customs.indent_blankline
    },
    {
        "wfxr/minimap.vim",
        opt = true,
        event = "BufRead"
    },
    {
        "petertriho/nvim-scrollbar",
        opt = false,
        event = "BufRead",
        config = function()
            require("scrollbar").setup()
            require("scrollbar.handlers.search").setup()
        end
    },
    {
        "kevinhwang91/nvim-hlslens",
        opt = false,
        config = lvim.customs.hlslens
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        after = "telescope.nvim",
        config = lvim.customs.telescope_file_browser
    },
    {"tami5/sqlite.lua"},
    {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require "telescope".load_extension("frecency")
        end,
        requires = {{"tami5/sqlite.lua", opt = true}}
    },
    {
        "jvgrootveld/telescope-zoxide",
        opt = true,
        after = "telescope-frecency.nvim",
        config = function()
            require "telescope".load_extension("zoxide")
        end
    },
    {
        "gelguy/wilder.nvim",
        event = "CmdlineEnter",
        config = function()
            -- config goes here
            vim.cmd(
                [[
                call wilder#setup({'modes': [':', '/', '?']})
                call wilder#set_option('use_python_remote_plugin', 0)
                call wilder#set_option('pipeline', [wilder#branch(wilder#cmdline_pipeline({'use_python': 0,'fuzzy': 1, 'fuzzy_filter': wilder#lua_fzy_filter()}),wilder#vim_search_pipeline(), [wilder#check({_, x -> empty(x)}), wilder#history(), wilder#result({'draw': [{_, x -> ' ' . x}]})])])
                call wilder#set_option('renderer', wilder#renderer_mux({':': wilder#popupmenu_renderer({'highlighter': wilder#lua_fzy_highlighter(), 'left': [wilder#popupmenu_devicons()], 'right': [' ', wilder#popupmenu_scrollbar()]}), '/': wilder#wildmenu_renderer({'highlighter': wilder#lua_fzy_highlighter()})}))
                ]]
            )
        end,
        requires = {{"romgrk/fzy-lua-native", after = "wilder.nvim"}}
    },
    {
        "iamcco/markdown-preview.nvim",
        opt = true,
        run = "cd app && yarn install",
        setup = function()
            vim.g.mkdp_filetypes = {"markdown"}
        end,
        ft = {"markdown"}
    },
    {
        "junegunn/vim-easy-align",
        cmd = "EasyAlign"
    },
    {
        "mg979/vim-visual-multi",
        config = function()
            vim.cmd(
                [[
                aug VMlens
                    au!
                    au User visual_multi_start lua require('others.vmlens').start()
                    au User visual_multi_exit lua require('others.vmlens').exit()
                aug END
            ]]
            )
        end
    }
}
