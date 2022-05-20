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
lvim.builtin.which_key.mappings[";"] = {"<cmd>Alpha<CR>", "Dashboard"}
lvim.builtin.which_key.mappings["w"] = nil
lvim.builtin.which_key.mappings["q"] = nil


lvim.builtin.which_key.mappings["f"] = nil
lvim.builtin.which_key.mappings["h"] = nil
lvim.builtin.which_key.mappings["c"] = nil



-- Buffer
lvim.builtin.which_key.mappings["b"] = nil
lvim.builtin.which_key.mappings["b"] = {
    name = "Buffer",
    ["1"] = {"<cmd>BufferLineGoToBuffer 1<cr>", "Buffer 1"},
    ["2"] = {"<cmd>BufferLineGoToBuffer 2<cr>", "Buffer 2"},
    ["3"] = {"<cmd>BufferLineGoToBuffer 3<cr>", "Buffer 3"},
    ["4"] = {"<cmd>BufferLineGoToBuffer 4<cr>", "Buffer 4"},
    ["5"] = {"<cmd>BufferLineGoToBuffer 5<cr>", "Buffer 5"},
    ["6"] = {"<cmd>BufferLineGoToBuffer 6<cr>", "Buffer 6"},
    b = {"<cmd>BufferLinePick<cr>", "Jump"},
    f = {"<cmd>Telescope buffers<cr>", "Find"},
    j = {"<cmd>BufferLineCyclePrev<cr>", "Previous"},
    k = {"<cmd>BufferLineCycleNext<cr>", "Next"},
    p = {"<cmd>BufferLineMovePrev<cr>", "Move previous"},
    n = {"<cmd>BufferLineMoveNext<cr>", "Move next"},
    c = {
        name = "Close",
        c = {"<cmd>BufferLinePickClose<cr>", "Close buffer with prefix"},
        l = {"<cmd>BufferLineCloseLeft<cr>", "Close left all"},
        r = {"<cmd>BufferLineCloseRight<cr>", "Close right all"},
        k = {"<cmd>BufferKill<cr>", "Kill buffer"}
    },
    s = {
        name = "Sort",
        d = {"<cmd>BufferLineSortByDirectory<cr>", "Sort by directory"},
        e = {"<cmd>BufferLineSortByExtension<cr>", "Sort by extension"},
        t = {"<cmd>BufferLineSortByTabs<cr>", "Sort By tabs"}
    },
    ["z"] = {"Press number to jump"}
}
-- Comment
lvim.builtin.which_key.mappings["/"] = {"<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment"}
lvim.builtin.which_key.mappings["c"] = {
    name = "Comment",
    m = {"<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment line"},
    c = {"<Plug>(comment_toggle_linewise)", "Comment linewise"},
    b = {"<Plug>(comment_toggle_blockwise)", "Comment blockwise"},

}

-- Edit
lvim.builtin.which_key.mappings["e"] = nil
lvim.builtin.which_key.mappings["e"] = {
    name = "Edit",
    a = {"<Plug>(EasyAlign)", "Easy alignment"}
}

--Find
lvim.builtin.which_key.mappings["f"] = {
    name = "Find",
    v = {":Telescope treesitter<cr>", "Variables"},
    w = {":Telescope current_buffer_fuzzy_find<cr>", "Words"},
    f = {":Telescope frecency<cr>", "Frequency files"},
    c = {":Telescope command_history<cr>", "Command history"},
    o = {":Telescope oldfiles<cr>", "Old files"},
    s = {":Telescope find_files<cr>", "File scanner"},
    b = {":Telescope file_browser<cr>", "File browser"},
    S = {":Telescope search_history<cr>", "Search history"}
}

-- Packer
lvim.builtin.which_key.mappings["p"] = {
    name = "Packer",
    c = {"<cmd>PackerCompile<cr>", "Compile"},
    i = {"<cmd>PackerInstall<cr>", "Install"},
    r = {"<cmd>lua require('lvim.plugin-loader').recompile()<cr>", "Re-compile"},
    s = {"<cmd>PackerSync<cr>", "Sync"},
    S = {"<cmd>PackerStatus<cr>", "Status"},
    u = {"<cmd>PackerUpdate<cr>", "Update"},
    l = {"<cmd>PackerLoad<cr>", "Load"},
    C = {"<cmd>PackerClean<cr>", "Clean"}
}

-- Telescope
lvim.builtin.which_key.mappings["t"] = {
    name = "Telescope",
    m = {":Telescope marks<cr>", "Marks"},
    h = {":Telescope highlights<cr>", "Highlight Scheme"},
    f = {":Telescope find_files<cr>", "Files find"},
    c = {":Telescope commands", "Command explorer"},
    o = {":Telescope vim_options<cr>", "Vim options"}
}



-- M map
lvim.builtin.which_key.mappings["u"] = {
    name = "Utility",
    m = {":MinimapToggle<cr>", "Mini map"},
    e = {":NvimTreeToggle<cr>", "Explorer"},
    a = {":EasyAlign<cr>", "Easy qajkji
}

lvim.builtin.which_key.mappings["m"] = {
    name = "Match",
    p = {"<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", "Previous match"},
    P = {"<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", "Previous match"},
    n = {"*<Cmd>lua require('hlslens').start()<CR>", "Forewards"},
    N = {"#<Cmd>lua require('hlslens').start()<CR>", "Backwards"},
    l = {"g*<Cmd>lua require('hlslens').start()<CR>", "Lazzy Forewards"},
    L = {"g#<Cmd>lua require('hlslens').start()<CR>", "Lazzy Backwards"},
    ["c"] = {":noh<CR>", "Cancel match"}
}

-- default map
local def_map = {
    -- Vim map
    -- ["n|<C-s>"] = map_cu("write"):with_noremap(),
    -- ["n|Y"] = map_cmd("y$"),
    -- ["n|D"] = map_cmd("d$"),
    ["n|n"] = map_cmd("nzzzv"):with_noremap(),
    ["n|N"] = map_cmd("Nzzzv"):with_noremap(),
    ["n|J"] = map_cmd("mzJ`z"):with_noremap(),
    ["n|<C-;>"] = map_cr("vertical resize -1"):with_silent(),
    ["n|<C-'>"] = map_cr("vertical resize +1"):with_silent(),
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
    ["v|>"] = map_cmd(">gv")
}
bind.nvim_load_mapping(def_map)
