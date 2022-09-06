vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt_local.number = false
    return vim.cmd("startinsert")
  end
})
local commands = {
  Moon = function(data)
    local lua = vim.fn.system({
      "moonc",
      "--"
    }, data.args)
    local fn = loadstring(lua, "cmdline")
    return print(vim.inspect(fn()))
  end
}
for name, fn in pairs(commands) do
  vim.api.nvim_create_user_command(name, fn, {
    nargs = "*"
  })
end
