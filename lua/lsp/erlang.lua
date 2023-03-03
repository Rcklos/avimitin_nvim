return {
  setup = function(opts)
    require("lsp").start("erlangls", opts.config or {})
  end,
}
