local status, cmp = pcall(require, "Comment")

if not status then
  vim.notify("没有找到 Comment")
  return
end

local ft = require('Comment.ft')
ft.set('cpp', {'/*%s*/', '/*%s*/'})
ft.set('c', {'/*%s*/', '/*%s*/'})
