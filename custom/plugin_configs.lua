local config = {}

function config.indent_blankline()
    vim.opt.termguicolors = true
    vim.opt.list = true
    vim.opt.listchars:append("space: ")
    vim.opt.listchars:append("tab:  ")
    vim.opt.listchars:append("eol:↴")
    vim.opt.listchars:append("trail: ,extends:→,precedes:←")

    require("indent_blankline").setup(
        {
            char = "│",
            -- show_first_indent_level = true,
            filetype_exclude = {
                "startify",
                "dashboard",
                "dotooagenda",
                "log",
                "fugitive",
                "gitcommit",
                "packer",
                "vimwiki",
                "markdown",
                "json",
                "txt",
                "vista",
                "help",
                "todoist",
                "NvimTree",
                "peekaboo",
                "git",
                "TelescopePrompt",
                "undotree",
                "flutterToolsOutline",
                "" -- for all buffers without a file type
            },
            buftype_exclude = {"terminal", "nofile"},
            show_trailing_blankline_indent = true,
            show_current_context = true,
            show_current_context_start = true,
            context_patterns = {
                "class",
                "function",
                "method",
                "block",
                "list_literal",
                "selector",
                "^if",
                "^table",
                "if_statement",
                "while",
                "for",
                "type",
                "var",
                "import"
            },
            space_char_blankline = " "
        }
    )
    -- because lazy load indent-blankline so need readd this autocmd
    vim.cmd("autocmd CursorMoved * IndentBlanklineRefresh")
end

return config
