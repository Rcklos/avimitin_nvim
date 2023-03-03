-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rcklos/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rcklos/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rcklos/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rcklos/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rcklos/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0" },
    keys = { { "n", "gcc" }, { "n", "gbc" }, { "v", "gc" }, { "v", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["ccc.nvim"] = {
    commands = { "CccPick", "CccHighlighterEnable" },
    config = { "\27LJ\2\0021\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bccc\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/ccc.nvim",
    url = "https://github.com/uga-rosa/ccc.nvim"
  },
  ["cinnamon.nvim"] = {
    config = { 'require("overlays.rc.cinnamon")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cinnamon.nvim",
    url = "https://github.com/declancm/cinnamon.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    after_files = { "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol/after/plugin/cmp_nvim_lsp_document_symbol.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    after_files = { "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-signature-help/after/plugin/cmp_nvim_lsp_signature_help.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    after_files = { "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    after_files = { "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["crates.nvim"] = {
    after_files = { "/home/rcklos/.local/share/nvim/site/pack/packer/opt/crates.nvim/after/plugin/cmp_crates.lua" },
    config = { 'require("overlays.rc.crates")' },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["dashboard-nvim"] = {
    config = { 'require("overlays.rc.dashboard")' },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["dial.nvim"] = {
    config = { 'require("overlays.rc.dial")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/dial.nvim",
    url = "https://github.com/monaqa/dial.nvim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewFileHistory" },
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rdiffview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\2Ü\1\0\0\4\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\2=\2\t\1B\0\2\1K\0\1\0\fsources\fnull-ls\1\0\0\1\0\1\vignore\2\ttext\1\0\0\1\0\1\fspinner\tdots\nsetup\vfidget\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\2\2ã\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\23excluded_filetypes\1\0\1\15signcolumn\1\1\6\0\0\nfterm\tterm\15toggleterm\nMundo\14MundoDiff\nsetup\nfocus\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["friendly-snippets"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { 'require("overlays.rc.galaxyline")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["github-nvim-theme"] = {
    cond = { "\27LJ\2\2°\1\0\0\3\0\a\0\t6\0\0\0009\0\1\0005\1\2\0006\2\0\0009\2\3\0029\2\4\0029\2\5\0029\2\6\2D\0\3\0\ntheme\aui\nnvcfg\6g\1\6\0\0\16github_dark\24github_dark_default\18github_dimmed\17github_light\25github_light_default\17tbl_contains\bvim\0" },
    config = { 'require("overlays.rc.github_theme")' },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("overlays.rc.gitsigns")' },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hlargs.nvim"] = {
    config = { "\27LJ\2\2`\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\tlink\15Identifier\nsetup\vhlargs\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/hlargs.nvim",
    url = "https://github.com/m-demare/hlargs.nvim"
  },
  ["hydra.nvim"] = {
    config = { 'require("overlays.rc.hydra")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/hydra.nvim",
    url = "https://github.com/anuvyklack/hydra.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { 'require("overlays.rc.indent")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    cond = { "\27LJ\2\2Q\0\0\1\0\6\0\v6\0\0\0009\0\1\0009\0\2\0009\0\3\0009\0\4\0\6\0\5\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rkanagawa\ntheme\aui\nnvcfg\6g\bvim\0" },
    config = { 'require("overlays.rc.kanagawa")' },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lightspeed.nvim"] = {
    config = { "\27LJ\2\2g\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21substitute_chars\1\0\0\1\0\2\6\r\bÔ†ê\6 \b‚ê£\nsetup\15lightspeed\frequire\0" },
    keys = { { "n", "s" }, { "v", "s" }, { "n", "S" }, { "v", "S" }, { "n", "f" }, { "n", "F" }, { "n", "t" }, { "n", "T" }, { "v", "f" }, { "v", "F" }, { "v", "t" }, { "v", "T" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lsp_lines.nvim"] = {
    config = { "\27LJ\2\2R\0\0\2\0\4\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\1\1\0B\0\2\0029\0\3\0B\0\1\1K\0\1\0\vtoggle\nsetup\14lsp_lines\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/lsp_lines.nvim",
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
  },
  ["lspsaga.nvim"] = {
    commands = { "Lspsaga" },
    config = { 'require("overlays.rc.lspsaga")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neodim = {
    config = { "\27LJ\2\2º\1\0\0\3\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\1B\0\2\1K\0\1\0\thide\1\0\3\14underline\2\nsigns\2\17virtual_text\2\21update_in_insert\1\0\2\ndelay\3d\venable\1\1\0\2\16blend_color\f#000000\nalpha\4ÊÃô≥\6ÊÃôˇ\3\nsetup\vneodim\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/neodim",
    url = "https://github.com/zbirenbaum/neodim"
  },
  ["neovim-deus"] = {
    cond = { "\27LJ\2\2M\0\0\1\0\6\0\v6\0\0\0009\0\1\0009\0\2\0009\0\3\0009\0\4\0\6\0\5\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\tdeus\ntheme\aui\nnvcfg\6g\bvim\0" },
    config = { "\27LJ\2\2X\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0\21colorscheme deus\bcmd\tdark\15background\bopt\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/neovim-deus",
    url = "https://github.com/Avimitin/neovim-deus"
  },
  ["nui.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    config = { 'require("overlays.rc.null_ls")' },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { 'require("overlays.rc.autopairs")' },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { 'require("overlays.rc.bufferline")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp-vsnip", "cmp-nvim-lsp-document-symbol", "cmp-buffer", "friendly-snippets", "nvim-autopairs", "cmp-nvim-lsp-signature-help", "cmp-cmdline", "vim-vsnip", "cmp-path", "cmp-nvim-lsp" },
    config = { 'require("overlays.rc.cmp")' },
    keys = { { "n", ":" }, { "n", "/" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { 'require("overlays.rc.dap")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-hlslens"] = {
    config = { 'require("overlays.rc.hlslens")' },
    keys = { { "n", "n" }, { "n", "N" }, { "n", "*" }, { "n", "#" }, { "n", "g*" }, { "n", "g#" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    after = { "fidget.nvim", "null-ls.nvim" },
    config = { 'require("overlays.rc.lspconfig")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\2i\0\2\b\0\1\2\0234\2\0\0+\3\0\0U\4\19Ä\21\4\0\0\t\4\0\0X\4\1ÄL\2\2\0\18\5\0\0009\4\0\0)\6\1\0\18\a\1\0B\4\4\2\18\6\0\0009\5\0\0\18\a\1\0B\5\3\2\18\0\5\0\18\3\4\0\21\4\2\0\22\4\1\4<\3\4\2X\4Ï\127K\0\1\0\bsub\0\2ì\2\1\3\17\0\n\00163\3\0\0006\4\1\0\18\5\0\0B\4\2\2\a\4\2\0X\4\20Ä\18\5\0\0009\4\3\0B\4\2\2)\5H\0\1\4\5\0X\4\bÄ6\4\4\0'\5\5\0B\4\2\2\18\5\0\0\18\6\1\0\18\a\2\0002\0\0ÄD\4\4\0006\4\6\0009\4\a\4\18\5\0\0'\6\b\0B\4\3\2\18\0\4\0004\4\0\0006\5\t\0\18\6\0\0B\5\2\4X\b\rÄ\18\n\3\0\18\v\t\0)\fH\0B\n\3\0026\v\t\0\18\f\n\0B\v\2\4X\14\3Ä\21\16\4\0\22\16\0\16<\15\16\4E\14\3\3R\14˚\127E\b\3\3R\bÒ\1276\5\4\0'\6\5\0B\5\2\2\18\6\4\0\18\a\1\0\18\b\2\0002\0\0ÄD\5\4\0\vipairs\6\n\nsplit\bvim\vnotify\frequire\blen\vstring\ttype\0\2#\1\0\2\0\3\0\0046\0\0\0003\1\2\0=\1\1\0K\0\1\0\0\vnotify\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-scrollbar"] = {
    config = { 'require("overlays.rc.scrollbar")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-spectre"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\2_\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\fkeymaps\1\0\0\1\0\1\vvisual\ags\nsetup\18nvim-surround\frequire\0" },
    keys = { { "n", "ys" }, { "n", "yS" }, { "n", "cs" }, { "n", "cS" }, { "n", "ds" }, { "n", "dS" }, { "x", "gs" }, { "x", "gS" }, { "i", "<C-g>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeRefresh", "NvimTreeToggle" },
    config = { 'require("overlays.rc.nvim_tree")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "hlargs.nvim", "vim-illuminate", "nvim-treesitter-textobjects", "nvim-ts-autotag" },
    config = { 'require("overlays.rc.treesitter")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["package-info.nvim"] = {
    config = { 'require("overlays.rc.js_deps")' },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/package-info.nvim",
    url = "https://github.com/vuki656/package-info.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { 'require("overlays.rc.rust")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["sort.nvim"] = {
    commands = { "Sort" },
    config = { "\27LJ\2\0026\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\tsort\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/sort.nvim",
    url = "https://github.com/sQVe/sort.nvim"
  },
  ["splitjoin.vim"] = {
    keys = { { "n", "gJ" }, { "n", "gS" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    config = { 'require("overlays.rc.symbols_outline")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("overlays.rc.telescope")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2I\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\nsigns\1\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    commands = { "ToggleTerm" },
    config = { 'require("overlays.rc.toggleterm")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle" },
    config = { "\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-easy-align"] = {
    commands = { "EasyAlign" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-flog"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-flog",
    url = "https://github.com/rbong/vim-flog"
  },
  ["vim-fugitive"] = {
    commands = { "G", "Git", "Ggrep", "Gdiffsplit", "GBrowse" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\2h\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\14providers\1\0\0\1\3\0\0\15treesitter\blsp\14configure\15illuminate\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-markdown-toc"] = {
    commands = { "GenTocGFM" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-markdown-toc",
    url = "https://github.com/mzlogin/vim-markdown-toc"
  },
  ["vim-matchup"] = {
    after_files = { "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    keys = { { "n", "<Plug>(matchup-%)" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-mundo"] = {
    commands = { "MundoToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-mundo",
    url = "https://github.com/simnalamburt/vim-mundo"
  },
  ["vim-repeat"] = {
    keys = { { "n", "." } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-table-mode"] = {
    commands = { "TableModeToggle" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-visual-multi"] = {
    keys = { { "n", "un" }, { "n", "ux" }, { "n", "<C-down>" }, { "n", "<C-up>" }, { "x", "ua" }, { "x", "uf" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  ["wildfire.vim"] = {
    keys = { { "n", "<Enter>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/wildfire.vim",
    url = "https://github.com/gcmt/wildfire.vim"
  },
  ["winshift.nvim"] = {
    commands = { "WinShift" },
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rwinshift\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rcklos/.local/share/nvim/site/pack/packer/opt/winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cinnamon"] = "cinnamon.nvim",
  ["^cmp"] = "nvim-cmp",
  ["^dap"] = "nvim-dap",
  ["^dapui"] = "nvim-dap-ui",
  ["^dial"] = "dial.nvim",
  ["^hydra"] = "hydra.nvim",
  ["^lsp_lines"] = "lsp_lines.nvim",
  ["^lspconfig"] = "nvim-lspconfig",
  ["^nui"] = "nui.nvim",
  ["^null%-ls"] = "null-ls.nvim",
  ["^nvim%-tree"] = "nvim-tree.lua",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^plenary"] = "plenary.nvim",
  ["^scrollbar"] = "nvim-scrollbar",
  ["^spectre"] = "nvim-spectre",
  ["^telescope"] = "telescope.nvim",
  ["^vim%.ui"] = "dressing.nvim"
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

-- Setup for: vim-vsnip
time([[Setup for vim-vsnip]], true)
try_loadstring("\27LJ\2\2b\0\0\3\0\6\0\t6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\2\5\0B\1\2\2=\1\2\0K\0\1\0\25~/.config/nvim/vsnip\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0", "setup", "vim-vsnip")
time([[Setup for vim-vsnip]], false)
-- Conditional loads
time([[Conditional loading of neovim-deus]], true)
  require("packer.load")({"neovim-deus"}, {}, _G.packer_plugins)
time([[Conditional loading of neovim-deus]], false)
time([[Conditional loading of kanagawa.nvim]], true)
  require("packer.load")({"kanagawa.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of kanagawa.nvim]], false)
time([[Conditional loading of github-nvim-theme]], true)
  require("packer.load")({"github-nvim-theme"}, {}, _G.packer_plugins)
time([[Conditional loading of github-nvim-theme]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'TableModeToggle', function(cmdargs)
          require('packer.load')({'vim-table-mode'}, { cmd = 'TableModeToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-table-mode'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TableModeToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'MundoToggle', function(cmdargs)
          require('packer.load')({'vim-mundo'}, { cmd = 'MundoToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-mundo'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('MundoToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Lspsaga', function(cmdargs)
          require('packer.load')({'lspsaga.nvim'}, { cmd = 'Lspsaga', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'lspsaga.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Lspsaga ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Dispatch', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Dispatch', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Dispatch ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SymbolsOutline', function(cmdargs)
          require('packer.load')({'symbols-outline.nvim'}, { cmd = 'SymbolsOutline', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'symbols-outline.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SymbolsOutline ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'G', function(cmdargs)
          require('packer.load')({'vim-fugitive'}, { cmd = 'G', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-fugitive'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('G ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'WinShift', function(cmdargs)
          require('packer.load')({'winshift.nvim'}, { cmd = 'WinShift', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'winshift.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('WinShift ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'GBrowse', function(cmdargs)
          require('packer.load')({'vim-fugitive'}, { cmd = 'GBrowse', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-fugitive'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('GBrowse ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewOpen', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NvimTreeToggle', function(cmdargs)
          require('packer.load')({'nvim-tree.lua'}, { cmd = 'NvimTreeToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-tree.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NvimTreeToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'EasyAlign', function(cmdargs)
          require('packer.load')({'vim-easy-align'}, { cmd = 'EasyAlign', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-easy-align'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('EasyAlign ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'ToggleTerm', function(cmdargs)
          require('packer.load')({'toggleterm.nvim'}, { cmd = 'ToggleTerm', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'toggleterm.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('ToggleTerm ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TroubleToggle', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TroubleToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'GenTocGFM', function(cmdargs)
          require('packer.load')({'vim-markdown-toc'}, { cmd = 'GenTocGFM', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-markdown-toc'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('GenTocGFM ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Ggrep', function(cmdargs)
          require('packer.load')({'vim-fugitive'}, { cmd = 'Ggrep', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-fugitive'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Ggrep ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewFileHistory', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewFileHistory', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewFileHistory ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CccPick', function(cmdargs)
          require('packer.load')({'ccc.nvim'}, { cmd = 'CccPick', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'ccc.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CccPick ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Gdiffsplit', function(cmdargs)
          require('packer.load')({'vim-fugitive'}, { cmd = 'Gdiffsplit', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-fugitive'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Gdiffsplit ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CccHighlighterEnable', function(cmdargs)
          require('packer.load')({'ccc.nvim'}, { cmd = 'CccHighlighterEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'ccc.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CccHighlighterEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Git', function(cmdargs)
          require('packer.load')({'vim-fugitive'}, { cmd = 'Git', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-fugitive'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Git ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Sort', function(cmdargs)
          require('packer.load')({'sort.nvim'}, { cmd = 'Sort', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'sort.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Sort ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NvimTreeRefresh', function(cmdargs)
          require('packer.load')({'nvim-tree.lua'}, { cmd = 'NvimTreeRefresh', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-tree.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NvimTreeRefresh ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[nnoremap <silent> g# <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "g#", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> ds <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "ds", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gS <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> t <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-down> <cmd>lua require("packer.load")({'vim-visual-multi'}, { keys = "<lt>C-down>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> yS <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "yS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> f <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "f", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> n <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "n", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> ux <cmd>lua require("packer.load")({'vim-visual-multi'}, { keys = "ux", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> cS <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "cS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <Plug>(matchup-%) <cmd>lua require("packer.load")({'vim-matchup'}, { keys = "<lt>Plug>(matchup-%)", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <Enter> <cmd>lua require("packer.load")({'wildfire.vim'}, { keys = "<lt>Enter>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> T <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "T", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> F <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "F", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> un <cmd>lua require("packer.load")({'vim-visual-multi'}, { keys = "un", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> / <cmd>lua require("packer.load")({'nvim-cmp'}, { keys = "/", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> # <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "#", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> F <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "F", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gbc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gbc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> t <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-up> <cmd>lua require("packer.load")({'vim-visual-multi'}, { keys = "<lt>C-up>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gcc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> f <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "f", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <C-g> <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "<lt>C-g>" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> gS <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "gS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> * <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "*", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> ys <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "ys", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gJ <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gJ", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> gs <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "gs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> dS <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "dS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> g* <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "g*", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> uf <cmd>lua require("packer.load")({'vim-visual-multi'}, { keys = "uf", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> s <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> S <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> N <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "N", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> S <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> T <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "T", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> ua <cmd>lua require("packer.load")({'vim-visual-multi'}, { keys = "ua", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> . <cmd>lua require("packer.load")({'vim-repeat'}, { keys = ".", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> s <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> cs <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "cs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> : <cmd>lua require("packer.load")({'nvim-cmp'}, { keys = ":", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType toml ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "toml" }, _G.packer_plugins)]]
vim.cmd [[au FileType zsh ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "zsh" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType comment ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "comment" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType bash ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "bash" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'nvim-treesitter', 'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType erlang ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "erlang" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "html" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au LspAttach * ++once lua require("packer.load")({'neodim', 'lspsaga.nvim'}, { event = "LspAttach *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'nvim-bufferline.lua', 'todo-comments.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au WinEnter * ++once lua require("packer.load")({'focus.nvim'}, { event = "WinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim', 'nvim-scrollbar'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au UIEnter * ++once lua require("packer.load")({'galaxyline.nvim', 'nvim-notify'}, { event = "UIEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
