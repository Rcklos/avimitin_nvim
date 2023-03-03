if require("libs.cache")["erlang_lsp"] then
  return
end

local opt = vim.cfg.erlang
if not opt.enable then
  return
end

require("lsp.erlang").setup(opt)
