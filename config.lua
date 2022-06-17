package.path = get_config_dir() .. "/?.lua;" .. package.path

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
lvim.transparent_window = true

-- keymappings [view all the defaults by pressing <leader>Lk]
require "custom.keymaps"
require "custom.options"
require "custom.plugins"


local tabnine = require('cmp_tabnine.config')
tabnine:setup({
    max_lines = 1000;
    max_num_results = 20;
    sort = true;
    run_on_every_keystroke = true;
    snippet_placeholder = '..';
    ignored_file_types = { -- default is not to ignore
        -- uncomment to ignore in lua:
        -- lua = true
    };
    show_prediction_strength = false;
})
vim.api.nvim_command("nmap j <Plug>(accelerated_jk_gj)")
vim.api.nvim_command("nmap k <Plug>(accelerated_jk_gk)")
