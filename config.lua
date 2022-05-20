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

