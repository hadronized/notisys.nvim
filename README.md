<p align="center">
  <img src="https://img.shields.io/github/issues/phaazon/notisys.nvim?color=cyan&style=for-the-badge"/>
  <img src="https://img.shields.io/github/issues-pr/phaazon/notisys.nvim?color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/github/contributors-anon/phaazon/notisys.nvim?color=blue&style=for-the-badge"/>
  <img src="https://img.shields.io/github/last-commit/phaazon/notisys.nvim?style=for-the-badge"/>
  <img src="https://img.shields.io/github/v/tag/phaazon/notisys.nvim?color=pink&label=release&style=for-the-badge"/>
</p>

**Notisys** is a system-wide notification plugin for Neovim. It leverages [OSC-99] terminal escape sequences to emit
system-wide notifications. Not all terminals implement it so you should probably ensure that your terminal supports it
first before installing this plugin.

Known to be working:

- [kitty]

# How to install

You must call `setup()` to effectively override `vim.notify` to make it emit system-wide notifications.

## [packer]

```lua
  use {
    'phaazon/notisys.nvim',
    config = function()
      require'notisys'.setup()
    end
  }
```

# Supported features and limitations

Currently, the following features from `vim.notify`are supported / not supported:

| Feature      | Supported? | Note                               |
| =======      | ========== | ====                               |
| `level`      | No         | Set the log level.                 |
| `opts.title` | Yes        | Set the title of the notification. |
| `opts.icon`  | No         | Set the icon of the notification.  |

[kitty]: https://sw.kovidgoyal.net/kitty
[OSC-99]: https://gitlab.freedesktop.org/terminal-wg/specifications/-/issues/13
[packer]: https://github.com/wbthomason/packer.nvim
