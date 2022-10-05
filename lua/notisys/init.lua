local M = {}

M.setup = function()
  vim.notify = function(msg, level, opts)
    local title = 'Neovim'
    local opts = opts or {}

    if opts.title then
      title = opts.title
    end

    io.write(string.format('\x1b]99;i=0:d=0:p=title;%s\x1b\\', title))
    io.write(string.format('\x1b]99;i=0:d=1:p=body;%s\x1b\\', msg))
  end
end

return M
