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
local package_path_str = "/home/tom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/tom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/tom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/tom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n«\1\0\0\6\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2D\0\2\0\foptions\1\0\0\foffsets\1\0\3\15text_align\tleft\ttext\nFiles\rfiletype\rNvimTree\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  devicons = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0D\0\2\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-o-matic"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0D\0\2\0\nsetup\19indent-o-matic\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/indent-o-matic",
    url = "https://github.com/Darazaki/indent-o-matic"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\24set_default_keymaps\tleap\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lsp-format.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0D\0\2\0\nsetup\15lsp-format\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/lsp-format.nvim",
    url = "https://github.com/lukas-reineke/lsp-format.nvim"
  },
  ["lsp_lines.nvim"] = {
    config = { "\27LJ\2\nn\0\0\3\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0005\2\6\0D\0\2\0\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/lsp_lines.nvim",
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nP\0\2\a\1\4\0\n6\2\0\0009\2\1\2-\4\0\0009\4\2\4'\5\3\0\18\6\0\0&\5\6\0058\4\5\4\18\5\1\0D\2\3\0\0À\rlualine_\rsections\vinsert\ntableŠ\1\0\2\a\1\5\0\0206\2\0\0009\2\1\2-\4\0\0009\4\2\4'\5\3\0\18\6\0\0&\5\6\0058\4\5\4\18\5\1\0B\2\3\0016\2\0\0009\2\1\2-\4\0\0009\4\4\4'\5\3\0\18\6\0\0&\5\6\0058\4\5\4\18\5\1\0D\2\3\0\0À\22inactive_sections\rlualine_\rsections\vinsert\ntable<\0\0\4\0\5\0\a6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2B\2\1\0C\0\0\0\tmode\afn\bvim\nupper\vstring€\1\0\0\3\0\b\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\4\0019\1\5\1\15\0\1\0X\1\5€6\1\0\0009\1\4\0019\1\6\1\15\0\1\0X\2\3€\18\1\0\0'\2\a\0&\0\2\1L\0\2\0\bï ½\rreadonly\15modifiable\abo\b%:t\vexpand\afn\bvimt\0\0\5\1\6\0\0146\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2-\1\0\0\18\3\0\0005\4\4\0B\1\3\3\18\3\1\0'\4\5\0&\3\4\3L\3\2\0\3€\6 \1\0\1\fdefault\2\rfiletype\24nvim_buf_get_option\bapi\bvimt\0\0\5\1\a\0\r6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2-\1\0\0\18\3\0\0005\4\4\0B\1\3\0035\3\5\0=\2\6\3L\3\2\0\3€\afg\1\0\0\1\0\1\fdefault\2\rfiletype\24nvim_buf_get_option\bapi\bvimÐ\4\1\0\t\0#\0?5\0\3\0005\1\0\0005\2\1\0=\2\2\1=\1\4\0005\1\5\0004\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0014\2\0\0=\2\n\0014\2\0\0=\2\v\1=\1\f\0+\1\0\0003\1\r\0+\2\0\0003\2\14\0+\3\0\0006\4\15\0'\6\16\0B\4\2\0029\3\17\4\18\4\1\0'\6\18\0003\a\19\0B\4\3\1\18\4\1\0'\6\20\0003\a\21\0B\4\3\1\18\4\1\0'\6\22\0005\a\23\0005\b\24\0=\b\25\a5\b\26\0=\b\27\aB\4\3\1\18\4\1\0'\6\22\0'\a\28\0B\4\3\1\18\4\1\0'\6\22\0005\a\31\0003\b\29\0>\b\1\a3\b\30\0=\b \aB\4\3\0016\4\15\0'\6!\0B\4\2\0029\4\"\4\18\6\0\0002\0\0€D\4\2\0\nsetup\flualine\ncolor\1\0\0\0\0\rlocation\fsymbols\1\0\3\tinfo\tï”§ \twarn\tï”¥ \nerror\tï™˜ \fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\6x\0\6c\0\6a\31get_icon_color_by_filetype\22nvim-web-devicons\frequire\0\0\rsections\14lualine_z\14lualine_y\14lualine_x\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23section_separators\1\0\2\tleft\5\nright\5\1\0\2\25component_separators\5\ntheme\fonedark\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["moon.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0D\0\2\0\nsetup\14moon-nvim\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tom/.local/share/nvim/site/pack/packer/opt/moon.nvim",
    url = "https://github.com/tombl/moon.nvim"
  },
  ["moonscript-vim"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/moonscript-vim",
    url = "https://github.com/leafo/moonscript-vim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n†\4\0\0\f\0\30\0E,\0\2\0006\3\0\0'\5\1\0B\3\2\0029\4\2\0039\5\3\0039\2\4\3\18\1\5\0\18\0\4\0\18\3\0\0005\5\18\0009\6\5\0019\6\6\0065\b\b\0009\t\a\1)\vüÿB\t\2\2=\t\t\b9\t\a\1)\v\4\0B\t\2\2=\t\n\b9\t\v\1B\t\1\2=\t\f\b9\t\r\1B\t\1\2=\t\14\b9\t\15\0015\v\16\0B\t\2\2=\t\17\bB\6\2\2=\6\3\0059\6\19\0024\b\3\0005\t\20\0>\t\1\b5\t\21\0>\t\2\bB\6\2\2=\6\19\5B\3\2\0019\3\22\0'\5\23\0005\6\24\0009\a\5\0019\a\22\aB\a\1\2=\a\3\0064\a\3\0005\b\25\0>\b\1\a=\a\19\6B\3\3\0019\3\22\0'\5\26\0005\6\27\0009\a\5\0019\a\22\aB\a\1\2=\a\3\0064\a\3\0005\b\28\0>\b\1\a5\b\29\0>\b\2\a=\a\19\6D\3\3\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\1\0\1\tname\fcopilot\1\0\1\tname\rnvim_lsp\fsources\1\0\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\vconfig\fmapping\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nr\0\2\t\1\6\0\15\v\1\0\0X\2\1€4\1\0\0006\2\0\0'\4\1\0B\2\2\0028\2\0\0029\2\2\0026\4\3\0009\4\4\4'\6\5\0-\a\0\0\18\b\1\0B\4\4\0C\2\0\0\1À\nforce\15tbl_extend\bvim\nsetup\14lspconfig\frequireû\3\1\0\n\0\26\0<6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\0015\1\a\0=\0\b\0016\2\4\0'\4\t\0B\2\2\0029\2\n\2=\2\n\1+\2\0\0003\2\v\0\18\3\2\0'\5\f\0B\3\2\1\18\3\2\0'\5\r\0B\3\2\1\18\3\2\0'\5\14\0B\3\2\1\18\3\2\0'\5\15\0006\6\4\0'\b\16\0B\6\2\0029\6\17\0064\b\0\0B\6\2\0A\3\1\0016\3\4\0'\5\18\0B\3\2\0029\4\17\0035\6\24\0004\a\3\0009\b\19\0039\b\20\b9\b\21\b>\b\1\a9\b\19\0039\b\22\b9\b\23\b>\b\2\a=\a\25\0066\a\4\0'\t\t\0B\a\2\0029\a\n\a=\a\n\0062\0\0€D\4\2\0\fsources\1\0\0\15shellcheck\16diagnostics\nshfmt\15formatting\rbuiltins\fnull-ls\nsetup\flua-dev\16sumneko_lua\18rust_analyzer\vdenols\28arduino_language_server\0\14on_attach\15lsp-format\17capabilities\1\0\0\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0D\0\2\0\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\tload\fonedark\frequire\0" },
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  plenary = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/plenary",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/tom/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nr\0\2\t\1\6\0\15\v\1\0\0X\2\1€4\1\0\0006\2\0\0'\4\1\0B\2\2\0028\2\0\0029\2\2\0026\4\3\0009\4\4\4'\6\5\0-\a\0\0\18\b\1\0B\4\4\0C\2\0\0\1À\nforce\15tbl_extend\bvim\nsetup\14lspconfig\frequireû\3\1\0\n\0\26\0<6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\0015\1\a\0=\0\b\0016\2\4\0'\4\t\0B\2\2\0029\2\n\2=\2\n\1+\2\0\0003\2\v\0\18\3\2\0'\5\f\0B\3\2\1\18\3\2\0'\5\r\0B\3\2\1\18\3\2\0'\5\14\0B\3\2\1\18\3\2\0'\5\15\0006\6\4\0'\b\16\0B\6\2\0029\6\17\0064\b\0\0B\6\2\0A\3\1\0016\3\4\0'\5\18\0B\3\2\0029\4\17\0035\6\24\0004\a\3\0009\b\19\0039\b\20\b9\b\21\b>\b\1\a9\b\19\0039\b\22\b9\b\23\b>\b\2\a=\a\25\0066\a\4\0'\t\t\0B\a\2\0029\a\n\a=\a\n\0062\0\0€D\4\2\0\fsources\1\0\0\15shellcheck\16diagnostics\nshfmt\15formatting\rbuiltins\fnull-ls\nsetup\flua-dev\16sumneko_lua\18rust_analyzer\vdenols\28arduino_language_server\0\14on_attach\15lsp-format\17capabilities\1\0\0\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lsp-format.nvim
time([[Config for lsp-format.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0D\0\2\0\nsetup\15lsp-format\frequire\0", "config", "lsp-format.nvim")
time([[Config for lsp-format.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0D\0\2\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: lsp_lines.nvim
time([[Config for lsp_lines.nvim]], true)
try_loadstring("\27LJ\2\nn\0\0\3\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0005\2\6\0D\0\2\0\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0", "config", "lsp_lines.nvim")
time([[Config for lsp_lines.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n«\1\0\0\6\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2D\0\2\0\foptions\1\0\0\foffsets\1\0\3\15text_align\tleft\ttext\nFiles\rfiletype\rNvimTree\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\24set_default_keymaps\tleap\frequire\0", "config", "leap.nvim")
time([[Config for leap.nvim]], false)
-- Config for: indent-o-matic
time([[Config for indent-o-matic]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0D\0\2\0\nsetup\19indent-o-matic\frequire\0", "config", "indent-o-matic")
time([[Config for indent-o-matic]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0D\0\2\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n†\4\0\0\f\0\30\0E,\0\2\0006\3\0\0'\5\1\0B\3\2\0029\4\2\0039\5\3\0039\2\4\3\18\1\5\0\18\0\4\0\18\3\0\0005\5\18\0009\6\5\0019\6\6\0065\b\b\0009\t\a\1)\vüÿB\t\2\2=\t\t\b9\t\a\1)\v\4\0B\t\2\2=\t\n\b9\t\v\1B\t\1\2=\t\f\b9\t\r\1B\t\1\2=\t\14\b9\t\15\0015\v\16\0B\t\2\2=\t\17\bB\6\2\2=\6\3\0059\6\19\0024\b\3\0005\t\20\0>\t\1\b5\t\21\0>\t\2\bB\6\2\2=\6\19\5B\3\2\0019\3\22\0'\5\23\0005\6\24\0009\a\5\0019\a\22\aB\a\1\2=\a\3\0064\a\3\0005\b\25\0>\b\1\a=\a\19\6B\3\3\0019\3\22\0'\5\26\0005\6\27\0009\a\5\0019\a\22\aB\a\1\2=\a\3\0064\a\3\0005\b\28\0>\b\1\a5\b\29\0>\b\2\a=\a\19\6D\3\3\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\1\0\1\tname\fcopilot\1\0\1\tname\rnvim_lsp\fsources\1\0\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\vconfig\fmapping\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nP\0\2\a\1\4\0\n6\2\0\0009\2\1\2-\4\0\0009\4\2\4'\5\3\0\18\6\0\0&\5\6\0058\4\5\4\18\5\1\0D\2\3\0\0À\rlualine_\rsections\vinsert\ntableŠ\1\0\2\a\1\5\0\0206\2\0\0009\2\1\2-\4\0\0009\4\2\4'\5\3\0\18\6\0\0&\5\6\0058\4\5\4\18\5\1\0B\2\3\0016\2\0\0009\2\1\2-\4\0\0009\4\4\4'\5\3\0\18\6\0\0&\5\6\0058\4\5\4\18\5\1\0D\2\3\0\0À\22inactive_sections\rlualine_\rsections\vinsert\ntable<\0\0\4\0\5\0\a6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2B\2\1\0C\0\0\0\tmode\afn\bvim\nupper\vstring€\1\0\0\3\0\b\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\4\0019\1\5\1\15\0\1\0X\1\5€6\1\0\0009\1\4\0019\1\6\1\15\0\1\0X\2\3€\18\1\0\0'\2\a\0&\0\2\1L\0\2\0\bï ½\rreadonly\15modifiable\abo\b%:t\vexpand\afn\bvimt\0\0\5\1\6\0\0146\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2-\1\0\0\18\3\0\0005\4\4\0B\1\3\3\18\3\1\0'\4\5\0&\3\4\3L\3\2\0\3€\6 \1\0\1\fdefault\2\rfiletype\24nvim_buf_get_option\bapi\bvimt\0\0\5\1\a\0\r6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2-\1\0\0\18\3\0\0005\4\4\0B\1\3\0035\3\5\0=\2\6\3L\3\2\0\3€\afg\1\0\0\1\0\1\fdefault\2\rfiletype\24nvim_buf_get_option\bapi\bvimÐ\4\1\0\t\0#\0?5\0\3\0005\1\0\0005\2\1\0=\2\2\1=\1\4\0005\1\5\0004\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0014\2\0\0=\2\n\0014\2\0\0=\2\v\1=\1\f\0+\1\0\0003\1\r\0+\2\0\0003\2\14\0+\3\0\0006\4\15\0'\6\16\0B\4\2\0029\3\17\4\18\4\1\0'\6\18\0003\a\19\0B\4\3\1\18\4\1\0'\6\20\0003\a\21\0B\4\3\1\18\4\1\0'\6\22\0005\a\23\0005\b\24\0=\b\25\a5\b\26\0=\b\27\aB\4\3\1\18\4\1\0'\6\22\0'\a\28\0B\4\3\1\18\4\1\0'\6\22\0005\a\31\0003\b\29\0>\b\1\a3\b\30\0=\b \aB\4\3\0016\4\15\0'\6!\0B\4\2\0029\4\"\4\18\6\0\0002\0\0€D\4\2\0\nsetup\flualine\ncolor\1\0\0\0\0\rlocation\fsymbols\1\0\3\tinfo\tï”§ \twarn\tï”¥ \nerror\tï™˜ \fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\6x\0\6c\0\6a\31get_icon_color_by_filetype\22nvim-web-devicons\frequire\0\0\rsections\14lualine_z\14lualine_y\14lualine_x\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23section_separators\1\0\2\tleft\5\nright\5\1\0\2\25component_separators\5\ntheme\fonedark\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\tload\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType moon ++once lua require("packer.load")({'moon.nvim'}, { ft = "moon" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
