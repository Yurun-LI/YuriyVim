local config = {}

function config.telescope_file_browser()
    -- You don't need to set any of these options.
    -- IMPORTANT!: this is only a showcase of how you can set default options!
    require("telescope").setup {
        extensions = {
            file_browser = {
                theme = "ivy",
                mappings = {
                    ["i"] = {},
                    ["n"] = {}
                }
            }
        }
    }
    -- To get telescope-file-browser loaded and working with telescope,
    -- you need to call load_extension, somewhere after setup function:
    require("telescope").load_extension "file_browser"
end

function config.hlslens()
    require("hlslens").setup(
        {
            override_lens = function(render, posList, nearest, idx, relIdx)
                local sfw = vim.v.searchforward == 1
                local indicator, text, chunks
                local absRelIdx = math.abs(relIdx)
                if absRelIdx > 1 then
                    indicator = ("%d%s"):format(absRelIdx, sfw ~= (relIdx > 1) and "▲" or "▼")
                elseif absRelIdx == 1 then
                    indicator = sfw ~= (relIdx == 1) and "▲" or "▼"
                else
                    indicator = ""
                end

                local lnum, col = unpack(posList[idx])
                if nearest then
                    local cnt = #posList
                    if indicator ~= "" then
                        text = ("[%s %d/%d]"):format(indicator, idx, cnt)
                    else
                        text = ("[%d/%d]"):format(idx, cnt)
                    end
                    chunks = {{" ", "Ignore"}, {text, "HlSearchLensNear"}}
                else
                    text = ("[%s %d]"):format(indicator, idx)
                    chunks = {{" ", "Ignore"}, {text, "HlSearchLens"}}
                end
                render.setVirt(0, lnum - 1, col - 1, chunks, nearest)
            end
        }
    )
    vim.api.nvim_command("hi default link HlSearchNear IncSearch")
    vim.api.nvim_command("hi default link HlSearchLens WildMenu")
    vim.api.nvim_command("hi default link HlSearchLensNear IncSearch")
    vim.api.nvim_command("hi default link HlSearchFloat IncSearch")
end
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
