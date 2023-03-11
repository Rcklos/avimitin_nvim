return {
  setup = function(opts)

    local on_attach = function(client, bufnr)
      local getline = function()
        vim.fn.getline(".")
      end
      local function append(line, content)
        vim.fn.append(line, content)
      end
      local function appends(contents)
        for i = 1, #contents do
          append(i - 1, contents[i])
        end
      end

      local cmd = function(...)
        vim.api.nvim_buf_create_user_command(bufnr, ...)
      end
      cmd("ErlHeader", function()
        appends({
           '%% -------------------------------------------------------------------'
          ,'%% @author ' .. os.getenv("USER")
          ,'%% @doc'
          ,'%% Created: ' .. os.date("%Y-%m-%d %H:%M:%S", os.time())
          ,'%% -------------------------------------------------------------------'
        })
      end, {
          desc = "test"
      })
      cmd("ErlTopic", function()
        local cur = vim.fn.line(".")
        append(cur - 1, '%% -------------------------------------------------------------------')
        append(cur - 1, '%% ')
        append(cur - 1, '%% -------------------------------------------------------------------')
      end, {
          desc = "test"
      })
      cmd("ErlDivide", function()
        local cur = vim.fn.line(".")
        append(cur - 1, '%% ===================================================================')
      end, {
          desc = "test"
      })
    end

    opts.on_attach = on_attach
    require("lsp").start("erlangls", opts or {})
  end,
}
