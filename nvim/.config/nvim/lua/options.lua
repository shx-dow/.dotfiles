require "nvchad.options"

local o = vim.o
o.number = true
o.relativenumber = true

if vim.fn.has "wsl" == 1 then
  vim.g.clipboard = {
    name = "WSLClipboard",
    copy = {
      ["+"] = "win32yank.exe -i",
      ["*"] = "win32yank.exe -i",
    },
    paste = {
      ["+"] = "win32yank.exe -o",
      ["*"] = "win32yank.exe -o",
    },
    cache_enabled = 0,
  }
end
