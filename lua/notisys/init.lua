local M = {}

local function process_osc(osc)
    local in_tmux = os.getenv('TMUX') ~= nil
    if not in_tmux then
      return string.format('\x1b]%s\x1b\\', osc)
    end
    -- using tmux's escape sequence passthrough:
    -- https://github.com/tmux/tmux/wiki/FAQ#what-is-the-passthrough-escape-sequence-and-how-do-i-use-it
    return string.format('\x1bPtmux;\x1b\x1b]%s\a\x1b\\', osc)
end

M.setup = function()
  vim.notify = function(msg, level, opts)
    local title = 'Neovim'
    local opts = opts or {}

    if opts.title then
      title = opts.title
    end

    io.write(process_osc(string.format('99;i=0:d=0:p=title;%s', title)))
    io.write(process_osc(string.format('99;i=0:d=1:p=body;%s', msg)))
  end
end

return M
