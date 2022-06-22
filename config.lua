package.path = get_config_dir() .. "/?.lua;" .. package.path

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
lvim.transparent_window = true

require "custom.keymaps"
require "custom.options"
require "custom.plugins"
require "custom.other_configs"
