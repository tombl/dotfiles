vim.api.nvim_create_autocmd "TermOpen", callback: ->
    vim.opt_local.number = false
    vim.cmd "startinsert"

commands =
    Moon: (data) ->
        lua = vim.fn.system { "moonc", "--" }, data.args
        fn = loadstring lua, "cmdline"
        print vim.inspect fn!

for name, fn in pairs commands
    vim.api.nvim_create_user_command name, fn, nargs: "*"
