local keymapper = require("libs.keymap")
local lib = require("libs")

local function setup(passthru)
  -- setup keymap
  keymapper.map("n", passthru.keymap.normal)
  keymapper.map("x", passthru.keymap.select)
  keymapper.map("i", passthru.keymap.insert)
  keymapper.map("t", passthru.keymap.terminal)
  vim.g.mapleader = passthru.keymap.mapleader

  -- setup option
  lib.disable_builtin_plugins(passthru.option.disabled.builtin_plugins)
  lib.disable_builtin_providers(passthru.option.disabled.builtin_providers)
  lib.set_vim_opt(passthru.option.vim_options)

  -- setup auto commands
  for fn, opt in pairs(passthru.autocmd) do
    if opt.enable then
      local autocmds = require("libs.autocmds")
      autocmds[fn](opt)
    end
  end

  -- load plugins
  lib.load_plugins(passthru.plugins)
end

return {
  setup = setup,
}
