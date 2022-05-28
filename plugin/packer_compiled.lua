-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/liyurun/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/liyurun/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/liyurun/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/liyurun/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/liyurun/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    after_files = { "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim/after/plugin/Comment.lua" },
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\n�\3\0\0\n\0\18\2-6\0\0\0'\2\1\0B\0\2\0024\1\3\0009\2\2\0006\4\3\0B\4\1\2'\5\4\0'\6\5\0'\a\6\0'\b\a\0'\t\b\0B\2\a\0?\2\0\0009\2\2\0006\4\t\0B\4\1\2'\5\n\0B\2\3\0029\3\v\0\18\5\2\0B\3\2\2\15\0\3\0X\4\3�\21\3\1\0\22\3\1\3<\2\3\0016\3\0\0'\5\f\0B\3\2\0029\3\r\3B\3\1\0016\3\0\0'\5\14\0B\3\2\0029\3\r\0035\5\15\0=\1\16\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3\r\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\15lvim.utils\frequire\3����\4\2\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["code_runner.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\nfloat\1\0\b\nblend\3\0\rfloat_hl\vNormal\6y\4\0����\3\14border_hl\20TelescopeBorder\vheight\4����\t����\3\nwidth\4����\t����\3\vborder\vsingle\6x\4\0����\3\rfiletype\1\0\2\16startinsert\2\tmode\nfloat\1\0\6\trust;cd $dir && rustc $fileName && $dir/$fileNameWithoutExt\6cRcd $dir && clang $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt\15typescript\rdeno run\bcppTcd $dir && clang++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt\vpython\15python3 -u\tjava;cd $dir && javac $fileName && java $fileNameWithoutExt\nsetup\16code_runner\frequire\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/code_runner.nvim",
    url = "https://github.com/CRAG666/code_runner.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fzy-lua-native"] = {
    load_after = {
      ["wilder.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\6\0\0\4\0\22\00056\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0009\0\4\0\18\2\0\0009\0\5\0'\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\4\0\18\2\0\0009\0\5\0'\3\a\0B\0\3\0016\0\0\0009\0\1\0009\0\4\0\18\2\0\0009\0\5\0'\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\4\0\18\2\0\0009\0\5\0'\3\t\0B\0\3\0016\0\n\0'\2\v\0B\0\2\0029\0\f\0005\2\r\0005\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0009\0\20\0'\2\21\0B\0\2\1K\0\1\0001autocmd CursorMoved * IndentBlanklineRefresh\bcmd\21context_patterns\1\15\0\0\nclass\rfunction\vmethod\nblock\17list_literal\rselector\b^if\v^table\17if_statement\nwhile\bfor\ttype\bvar\vimport\20buftype_exclude\1\3\0\0\rterminal\vnofile\21filetype_exclude\1\22\0\0\rstartify\14dashboard\16dotooagenda\blog\rfugitive\14gitcommit\vpacker\fvimwiki\rmarkdown\tjson\btxt\nvista\thelp\ftodoist\rNvimTree\rpeekaboo\bgit\20TelescopePrompt\rundotree\24flutterToolsOutline\5\1\0\5\25show_current_context\2\25space_char_blankline\6 \tchar\b│\31show_current_context_start\2#show_trailing_blankline_indent\2\nsetup\21indent_blankline\frequire%trail: ,extends:→,precedes:←\feol:↴\vtab:  \fspace: \vappend\14listchars\tlist\18termguicolors\bopt\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/lua-dev.nvim",
    url = "https://github.com/max397574/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["minimap.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/minimap.vim",
    url = "https://github.com/wfxr/minimap.vim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5�6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\n�\4\0\5\19\0\19\1f6\5\0\0009\5\1\0059\5\2\5\b\5\0\0X\5\2�+\5\1\0X\6\1�+\5\2\0,\6\b\0006\t\3\0009\t\4\t\18\v\4\0B\t\2\2)\n\1\0\1\n\t\0X\n\18�'\n\5\0\18\f\n\0009\n\6\n\18\r\t\0)\14\1\0\0\14\4\0X\14\2�+\14\1\0X\15\1�+\14\2\0\4\5\14\0X\14\2�'\14\a\0X\15\1�'\14\b\0B\n\4\2\18\6\n\0X\n\14�\t\t\0\0X\n\v�\b\4\0\0X\n\2�+\n\1\0X\v\1�+\n\2\0\4\5\n\0X\n\2�'\6\a\0X\n\1�'\6\b\0X\n\1�'\6\t\0006\n\n\0008\f\3\1B\n\2\3\15\0\2\0X\f\27�\21\f\1\0\6\6\t\0X\r\t�'\r\v\0\18\15\r\0009\r\6\r\18\16\6\0\18\17\3\0\18\18\f\0B\r\5\2\18\a\r\0X\r\a�'\r\f\0\18\15\r\0009\r\6\r\18\16\3\0\18\17\f\0B\r\4\2\18\a\r\0004\r\3\0005\14\r\0>\14\1\r5\14\14\0>\a\1\14>\14\2\r\18\b\r\0X\f\14�'\f\15\0\18\14\f\0009\f\6\f\18\15\6\0\18\16\3\0B\f\4\2\18\a\f\0004\f\3\0005\r\16\0>\r\1\f5\r\17\0>\a\1\r>\r\2\f\18\b\f\0009\f\18\0)\14\0\0\23\15\0\n\23\16\0\v\18\17\b\0\18\18\2\0B\f\6\1K\0\1\0\fsetVirt\1\3\0\0\0\17HlSearchLens\1\3\0\0\6 \vIgnore\f[%s %d]\1\3\0\0\0\21HlSearchLensNear\1\3\0\0\6 \vIgnore\f[%d/%d]\15[%s %d/%d]\vunpack\5\b▼\b▲\vformat\t%d%s\babs\tmath\18searchforward\6v\bvim\2�\2\1\0\4\0\r\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\n\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\v\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\f\0B\0\2\1K\0\1\0,hi default link HlSearchFloat IncSearch/hi default link HlSearchLensNear IncSearch*hi default link HlSearchLens WildMenu+hi default link HlSearchNear IncSearch\17nvim_command\bapi\bvim\18override_lens\1\0\0\0\nsetup\fhlslens\frequire\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\21lvim.core.notify\frequire\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-scrollbar"] = {
    config = { "\27LJ\2\ne\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\30scrollbar.handlers.search\nsetup\14scrollbar\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedarker.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\t\0\0196\0\0\0\15\0\0\0X\1\15�6\0\0\0009\0\1\0\a\0\2\0X\0\v�6\0\3\0'\2\2\0B\0\2\0029\0\4\0B\0\1\0016\0\0\0009\0\5\0009\0\6\0009\0\a\0'\1\2\0=\1\b\0K\0\1\0\ntheme\foptions\flualine\fbuiltin\nsetup\frequire\14onedarker\16colorscheme\tlvim\30\1\0\3\0\2\0\0046\0\0\0003\2\1\0B\0\2\1K\0\1\0\0\npcall\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/onedarker.nvim",
    url = "https://github.com/lunarvim/onedarker.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["structlog.nvim"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/structlog.nvim",
    url = "https://github.com/Tastyep/structlog.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\b\0005\4\3\0005\5\4\0004\6\0\0=\6\5\0054\6\0\0=\6\6\5=\5\a\4=\4\t\3=\3\v\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\t\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\17file_browser\1\0\0\rmappings\6n\6i\1\0\0\1\0\1\ntheme\bivy\nsetup\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    after = { "telescope-zoxide" },
    loaded = true,
    only_config = true
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-zoxide"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\vzoxide\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/telescope-zoxide",
    url = "https://github.com/jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    after = { "telescope-file-browser.nvim" },
    loaded = true,
    only_config = true
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-easy-align"] = {
    commands = { "EasyAlign" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-visual-multi"] = {
    config = { "\27LJ\2\n�\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\2                aug VMlens\n                    au!\n                    au User visual_multi_start lua require('others.vmlens').start()\n                    au User visual_multi_exit lua require('others.vmlens').exit()\n                aug END\n            \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/max397574/which-key.nvim"
  },
  ["wilder.nvim"] = {
    after = { "fzy-lua-native" },
    config = { "\27LJ\2\n�\6\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\5                call wilder#setup({'modes': [':', '/', '?']})\n                call wilder#set_option('use_python_remote_plugin', 0)\n                call wilder#set_option('pipeline', [wilder#branch(wilder#cmdline_pipeline({'use_python': 0,'fuzzy': 1, 'fuzzy_filter': wilder#lua_fzy_filter()}),wilder#vim_search_pipeline(), [wilder#check({_, x -> empty(x)}), wilder#history(), wilder#result({'draw': [{_, x -> ' ' . x}]})])])\n                call wilder#set_option('renderer', wilder#renderer_mux({':': wilder#popupmenu_renderer({'highlighter': wilder#lua_fzy_highlighter(), 'left': [wilder#popupmenu_devicons()], 'right': [' ', wilder#popupmenu_scrollbar()]}), '/': wilder#wildmenu_renderer({'highlighter': wilder#lua_fzy_highlighter()})}))\n                \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/liyurun/.local/share/lunarvim/site/pack/packer/opt/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^lua%-dev"] = "lua-dev.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\21lvim.core.notify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: telescope-frecency.nvim
time([[Config for telescope-frecency.nvim]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0", "config", "telescope-frecency.nvim")
time([[Config for telescope-frecency.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n�\3\0\0\n\0\18\2-6\0\0\0'\2\1\0B\0\2\0024\1\3\0009\2\2\0006\4\3\0B\4\1\2'\5\4\0'\6\5\0'\a\6\0'\b\a\0'\t\b\0B\2\a\0?\2\0\0009\2\2\0006\4\t\0B\4\1\2'\5\n\0B\2\3\0029\3\v\0\18\5\2\0B\3\2\2\15\0\3\0X\4\3�\21\3\1\0\22\3\1\3<\2\3\0016\3\0\0'\5\f\0B\3\2\0029\3\r\3B\3\1\0016\3\0\0'\5\14\0B\3\2\0029\3\r\0035\5\15\0=\1\16\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3\r\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\15lvim.utils\frequire\3����\4\2\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: vim-visual-multi
time([[Config for vim-visual-multi]], true)
try_loadstring("\27LJ\2\n�\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\2                aug VMlens\n                    au!\n                    au User visual_multi_start lua require('others.vmlens').start()\n                    au User visual_multi_exit lua require('others.vmlens').exit()\n                aug END\n            \bcmd\bvim\0", "config", "vim-visual-multi")
time([[Config for vim-visual-multi]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5�6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: code_runner.nvim
time([[Config for code_runner.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\nfloat\1\0\b\nblend\3\0\rfloat_hl\vNormal\6y\4\0����\3\14border_hl\20TelescopeBorder\vheight\4����\t����\3\nwidth\4����\t����\3\vborder\vsingle\6x\4\0����\3\rfiletype\1\0\2\16startinsert\2\tmode\nfloat\1\0\6\trust;cd $dir && rustc $fileName && $dir/$fileNameWithoutExt\6cRcd $dir && clang $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt\15typescript\rdeno run\bcppTcd $dir && clang++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt\vpython\15python3 -u\tjava;cd $dir && javac $fileName && java $fileNameWithoutExt\nsetup\16code_runner\frequire\0", "config", "code_runner.nvim")
time([[Config for code_runner.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: onedarker.nvim
time([[Config for onedarker.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\t\0\0196\0\0\0\15\0\0\0X\1\15�6\0\0\0009\0\1\0\a\0\2\0X\0\v�6\0\3\0'\2\2\0B\0\2\0029\0\4\0B\0\1\0016\0\0\0009\0\5\0009\0\6\0009\0\a\0'\1\2\0=\1\b\0K\0\1\0\ntheme\foptions\flualine\fbuiltin\nsetup\frequire\14onedarker\16colorscheme\tlvim\30\1\0\3\0\2\0\0046\0\0\0003\2\1\0B\0\2\1K\0\1\0\0\npcall\0", "config", "onedarker.nvim")
time([[Config for onedarker.nvim]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\n�\4\0\5\19\0\19\1f6\5\0\0009\5\1\0059\5\2\5\b\5\0\0X\5\2�+\5\1\0X\6\1�+\5\2\0,\6\b\0006\t\3\0009\t\4\t\18\v\4\0B\t\2\2)\n\1\0\1\n\t\0X\n\18�'\n\5\0\18\f\n\0009\n\6\n\18\r\t\0)\14\1\0\0\14\4\0X\14\2�+\14\1\0X\15\1�+\14\2\0\4\5\14\0X\14\2�'\14\a\0X\15\1�'\14\b\0B\n\4\2\18\6\n\0X\n\14�\t\t\0\0X\n\v�\b\4\0\0X\n\2�+\n\1\0X\v\1�+\n\2\0\4\5\n\0X\n\2�'\6\a\0X\n\1�'\6\b\0X\n\1�'\6\t\0006\n\n\0008\f\3\1B\n\2\3\15\0\2\0X\f\27�\21\f\1\0\6\6\t\0X\r\t�'\r\v\0\18\15\r\0009\r\6\r\18\16\6\0\18\17\3\0\18\18\f\0B\r\5\2\18\a\r\0X\r\a�'\r\f\0\18\15\r\0009\r\6\r\18\16\3\0\18\17\f\0B\r\4\2\18\a\r\0004\r\3\0005\14\r\0>\14\1\r5\14\14\0>\a\1\14>\14\2\r\18\b\r\0X\f\14�'\f\15\0\18\14\f\0009\f\6\f\18\15\6\0\18\16\3\0B\f\4\2\18\a\f\0004\f\3\0005\r\16\0>\r\1\f5\r\17\0>\a\1\r>\r\2\f\18\b\f\0009\f\18\0)\14\0\0\23\15\0\n\23\16\0\v\18\17\b\0\18\18\2\0B\f\6\1K\0\1\0\fsetVirt\1\3\0\0\0\17HlSearchLens\1\3\0\0\6 \vIgnore\f[%s %d]\1\3\0\0\0\21HlSearchLensNear\1\3\0\0\6 \vIgnore\f[%d/%d]\15[%s %d/%d]\vunpack\5\b▼\b▲\vformat\t%d%s\babs\tmath\18searchforward\6v\bvim\2�\2\1\0\4\0\r\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\n\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\v\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\f\0B\0\2\1K\0\1\0,hi default link HlSearchFloat IncSearch/hi default link HlSearchLensNear IncSearch*hi default link HlSearchLens WildMenu+hi default link HlSearchNear IncSearch\17nvim_command\bapi\bvim\18override_lens\1\0\0\0\nsetup\fhlslens\frequire\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd telescope-file-browser.nvim ]]

-- Config for: telescope-file-browser.nvim
try_loadstring("\27LJ\2\n�\1\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\b\0005\4\3\0005\5\4\0004\6\0\0=\6\5\0054\6\0\0=\6\6\5=\5\a\4=\4\t\3=\3\v\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\t\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\17file_browser\1\0\0\rmappings\6n\6i\1\0\0\1\0\1\ntheme\bivy\nsetup\14telescope\frequire\0", "config", "telescope-file-browser.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file EasyAlign lua require("packer.load")({'vim-easy-align'}, { cmd = "EasyAlign", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'bufferline.nvim', 'toggleterm.nvim', 'which-key.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au CmdlineEnter * ++once lua require("packer.load")({'wilder.nvim'}, { event = "CmdlineEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'Comment.nvim', 'nvim-scrollbar', 'minimap.vim', 'indent-blankline.nvim', 'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
