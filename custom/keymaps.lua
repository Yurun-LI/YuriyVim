-- keymappings [view all the defaults by pressing <leader>Lk]
local bind = require("others.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w!<cr>"
lvim.keys.normal_mode["D"] = ":d$"

-- unmap a default keymapping
lvim.keys.normal_mode["<C-Up>"] = false
lvim.keys.normal_mode["<C-Down>"] = false
lvim.keys.normal_mode["<C-Left>"] = false
lvim.keys.normal_mode["<C-Right>"] = false
lvim.keys.normal_mode["<M-Up>"] = false
lvim.keys.normal_mode["<M-Down>"] = false
lvim.keys.normal_mode["<ESC>"] = false
lvim.keys.normal_mode["<C-p>"] = ":Telescope<cr>"
-- edit a default keymapping
lvim.keys.normal_mode["Q"] = ":q<cr>"

lvim.keys.normal_mode["<C-q>"] = ":q!<cr>"
lvim.keys.normal_mode["<C-n>"] = "<cmd>NvimTreeToggle<CR>"
-- Tab switch buffer
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
    -- for input mode
    i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev
    },
    -- for normal mode
    n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous
    }
}

-- EasyAlign
vim.api.nvim_command("xmap ga <Plug>(EasyAlign)")
vim.api.nvim_command("nmap ga <Plug>(EasyAlign)")

-- ";"
lvim.builtin.which_key.mappings[";"] = { "<cmd>Alpha<CR>", "Dashboard" }
lvim.builtin.which_key.mappings["w"] = nil
lvim.builtin.which_key.mappings["q"] = nil


lvim.builtin.which_key.mappings["f"] = nil
lvim.builtin.which_key.mappings["h"] = nil
lvim.builtin.which_key.mappings["c"] = nil
lvim.builtin.which_key.mappings["s"] = nil
lvim.builtin.which_key.mappings["L"] = nil


-- Buffer
lvim.builtin.which_key.mappings["b"] = nil
lvim.builtin.which_key.mappings["b"] = {
    name = "Buffer",
    ["1"] = { "<cmd>BufferLineGoToBuffer 1<cr>", "Buffer 1" },
    ["2"] = { "<cmd>BufferLineGoToBuffer 2<cr>", "Buffer 2" },
    ["3"] = { "<cmd>BufferLineGoToBuffer 3<cr>", "Buffer 3" },
    ["4"] = { "<cmd>BufferLineGoToBuffer 4<cr>", "Buffer 4" },
    ["5"] = { "<cmd>BufferLineGoToBuffer 5<cr>", "Buffer 5" },
    ["6"] = { "<cmd>BufferLineGoToBuffer 6<cr>", "Buffer 6" },
    b = { "<cmd>BufferLinePick<cr>", "Jump" },
    f = { "<cmd>Telescope buffers<cr>", "Find" },
    j = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
    k = { "<cmd>BufferLineCycleNext<cr>", "Next" },
    p = { "<cmd>BufferLineMovePrev<cr>", "Move previous" },
    n = { "<cmd>BufferLineMoveNext<cr>", "Move next" },
    e = { "<cmd>tabedit ", "Edit" },
    a = { "<cmd>tabnew<cr>", "Add" },
    c = {
        name = "Close",
        c = { "<cmd>BufferLinePickClose<cr>", "Close buffer with prefix" },
        l = { "<cmd>BufferLineCloseLeft<cr>", "Close left all" },
        r = { "<cmd>BufferLineCloseRight<cr>", "Close right all" },
        k = { "<cmd>BufferKill<cr>", "Kill buffer" }
    },
    s = {
        name = "Sort",
        d = { "<cmd>BufferLineSortByDirectory<cr>", "Sort by directory" },
        e = { "<cmd>BufferLineSortByExtension<cr>", "Sort by extension" },
        t = { "<cmd>BufferLineSortByTabs<cr>", "Sort By tabs" }
    },
    ["z"] = { "Press number to jump" }
}
-- Comment
lvim.builtin.which_key.mappings["/"] = { "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment" }
lvim.builtin.which_key.mappings["c"] = {
    name = "Comment",
    m = { "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment line" },
    c = { "<Plug>(comment_toggle_linewise)", "Comment linewise" },
    b = { "<Plug>(comment_toggle_blockwise)", "Comment blockwise" },

}
lvim.builtin.which_key.mappings["d"] = {
    name = "DiffView",
    d = { ":DiffviewOpen<cr>", "Open different view" },
    c = { ":DiffviewClose<cr>", "Close different view" },
    t = { ":DiffviewToggleFiles", " Toggle Files" },
    r = { ":DiffviewRefresh<cr>", "Refresh different view" },
    h = { ":DiffviewFileHistory", " Different view history" },
}
-- Edit
lvim.builtin.which_key.mappings["e"] = nil
lvim.builtin.which_key.mappings["e"] = {
    name = "Explorer",
    a = { "<Plug>(EasyAlign)", "Easy alignment" },
    e = { ":NvimTreeToggle<cr>", "Explorer" },
    m = { ":MinimapToggle<cr>", "Mini map" },
}

lvim.builtin.which_key.mappings["Y"] = {
    name = "YuriyVim",
    c = {
        "<cmd>edit " .. get_config_dir() .. "/config.lua<cr>",
        "Edit config.lua",
    },
    o = {
        "<cmd>edit " .. get_config_dir() .. "/custom/options.lua<cr>",
        "Edit options.lua"
    },
    p = {
        "<cmd>edit " .. get_config_dir() .. "/custom/plugins.lua<cr>",
        "Edit plugins.lua"
    },
    k = {
        "<cmd>edit " .. get_config_dir() .. "/custom/keymaps.lua<cr>",
        "Edit keymaps.lua"
    },

    C = {
        "<cmd>lua require('lvim.core.telescope.custom-finders').find_lunarvim_files()<cr>",
        "Find configuration files"
    },
    g = {
        "<cmd>lua require('lvim.core.telescope.custom-finders').grep_lunarvim_files()<cr>",
        "Grep configuration files",
    },
    i = {
        "<cmd>lua require('lvim.core.info').toggle_popup(vim.bo.filetype)<cr>",
        "Toggle Info",
    },
    v = {
        "<cmd>lua require('lvim.core.telescope.custom-finders').view_lunarvim_changelog()<cr>",
        "View changelog",
    },
    l = {
        name = "+logs",
        d = {
            "<cmd>lua require('lvim.core.terminal').toggle_log_view(require('lvim.core.log').get_path())<cr>",
            "view default log",
        },
        D = {
            "<cmd>lua vim.fn.execute('edit ' .. require('lvim.core.log').get_path())<cr>",
            "Open the default logfile",
        },
        l = {
            "<cmd>lua require('lvim.core.terminal').toggle_log_view(vim.lsp.get_log_path())<cr>",
            "view lsp log",
        },
        L = { "<cmd>lua vim.fn.execute('edit ' .. vim.lsp.get_log_path())<cr>", "Open the LSP logfile" },
        n = {
            "<cmd>lua require('lvim.core.terminal').toggle_log_view(os.getenv('NVIM_LOG_FILE'))<cr>",
            "view neovim log",
        },
        N = { "<cmd>edit $NVIM_LOG_FILE<cr>", "Open the Neovim logfile" },
        p = {
            "<cmd>lua require('lvim.core.terminal').toggle_log_view(get_cache_dir() .. '/packer.nvim.log')<cr>",
            "view packer log",
        },
        P = { "<cmd>edit $LUNARVIM_CACHE_DIR/packer.nvim.log<cr>", "Open the Packer logfile" },
    },
    n = { "<cmd>Telescope notify<cr>", "View Notifications" },
    r = { "<cmd>LvimReload<cr>", "Reload configuration" },
}
--Find
lvim.builtin.which_key.mappings["f"] = {
    name = "Find",
    v = { ":Telescope treesitter<cr>", "Variables" },
    w = { ":Telescope current_buffer_fuzzy_find<cr>", "Words" },
    f = { ":Telescope frecency<cr>", "Frequency files" },
    c = { ":Telescope command_history<cr>", "Command history" },
    s = { ":Telescope find_files<cr>", "File scanner" },
    b = { ":Telescope file_browser<cr>", "File browser" },
    S = { ":Telescope search_history<cr>", "Search history" },
    r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymappings" },
}

-- Packer
lvim.builtin.which_key.mappings["p"] = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    r = { "<cmd>lua require('lvim.plugin-loader').recompile()<cr>", "Re-compile" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
    l = { "<cmd>PackerLoad<cr>", "Load" },
    C = { "<cmd>PackerClean<cr>", "Clean" }
}
-- CodeRunner

lvim.builtin.which_key.mappings["r"] = {
    name = "Code Runner",
    r = { ":RunCode<cr>", "Run code" },
    f = { ":RunFile<cr>", "Run file" },
    p = { ":RunProject<cr>", "Run project" },
    c = { ":RunClose<cr>", "Run close" },
}

--Settings
lvim.builtin.which_key.mappings['s'] = {
    name = "Setting",
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
    h = { "<cmd>Telescope help_tags<cr>", "Help" },
    m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
    R = { "<cmd>Telescope registers<cr>", "Registers" },
    t = { "<cmd>Telescope live_grep<cr>", "Text" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
    p = {
        "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>",
        "Colorscheme with Preview",
    },
}
-- Telescope
lvim.builtin.which_key.mappings["t"] = {
    name = "Telescope",
    m = { ":Telescope marks<cr>", "Marks" },
    h = { ":Telescope highlights<cr>", "Highlight Scheme" },
    f = { ":Telescope find_files<cr>", "Files find" },
    c = { ":Telescope commands", "Command explorer" },
    o = { ":Telescope vim_options<cr>", "Vim options" }
}



-- M map
lvim.builtin.which_key.mappings["u"] = {
    name = "Utility",
    m = { ":MinimapToggle<cr>", "Mini map" },
    e = { ":NvimTreeToggle<cr>", "Explorer" },
    a = { ":EasyAlign<cr>", "Easy alignment" },
}

lvim.builtin.which_key.mappings["m"] = {
    name = "Match",
    p = { "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", "Previous match" },
    P = { "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", "Previous match" },
    n = { "*<Cmd>lua require('hlslens').start()<CR>", "Forewards" },
    N = { "#<Cmd>lua require('hlslens').start()<CR>", "Backwards" },
    l = { "g*<Cmd>lua require('hlslens').start()<CR>", "Lazzy Forewards" },
    L = { "g#<Cmd>lua require('hlslens').start()<CR>", "Lazzy Backwards" },
    c = { ":noh<CR>", "Cancel match" }

}

-- default map
local def_map = {
    -- Vim map
    -- ["n|<C-s>"] = map_cu("write"):with_noremap(),
    -- ["n|Y"] = map_cmd("y$"),
    ["n|D"] = map_cmd("d$"),
    ["n|n"] = map_cmd("nzzzv"):with_noremap(),
    -- Plugin Hop
    ["n|<leader>jf"] = map_cu("HopWord"):with_noremap(),
    ["n|<leader>jj"] = map_cu("HopLineStart"):with_noremap(),
    ["n|<leader>ji"] = map_cu("HopChar1"):with_noremap(),
    ["n|<leader>jo"] = map_cu("HopChar2"):with_noremap(),
    ["n|N"] = map_cmd("Nzzzv"):with_noremap(),
    ["n|J"] = map_cmd("mzJ`z"):with_noremap(),
    ["n|<C-;>"] = map_cr("vertical resize +1"):with_silent(),
    ["n|<C-'>"] = map_cr("vertical resize -1"):with_silent(),
    ["n|<C-[>"] = map_cr("resize -1"):with_silent(),
    ["n|<C-]>"] = map_cr("resize +1"):with_silent(),
    -- Insert
    ["i|<C-u>"] = map_cmd("<C-G>u<C-U>"):with_noremap(),
    ["i|<C-b>"] = map_cmd("<Left>"):with_noremap(),
    ["i|<C-f>"] = map_cmd("<Right>"):with_noremap(),
    ["i|<C-a>"] = map_cmd("<ESC>^i"):with_noremap(),
    -- command line
    ["c|<C-b>"] = map_cmd("<Left>"):with_noremap(),
    ["c|<C-f>"] = map_cmd("<Right>"):with_noremap(),
    ["c|<C-a>"] = map_cmd("<Home>"):with_noremap(),
    ["c|<C-e>"] = map_cmd("<End>"):with_noremap(),
    ["c|<C-d>"] = map_cmd("<Del>"):with_noremap(),
    ["c|<C-h>"] = map_cmd("<BS>"):with_noremap(),
    ["c|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]]):with_noremap(),
    ["c|w!!"] = map_cmd("execute 'silent! write !sudo tee % >/dev/null' <bar> edit!"),
    -- Visual
    ["v|J"] = map_cmd(":m '>+1<cr>gv=gv"),
    ["v|K"] = map_cmd(":m '<-2<cr>gv=gv"),
    ["v|<"] = map_cmd("<gv"),
    ["v|>"] = map_cmd(">gv"),
}
bind.nvim_load_mapping(def_map)
vim.api.nvim_command("nnoremap U <C-r>")
