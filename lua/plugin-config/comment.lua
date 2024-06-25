local status, comment = pcall(require, "Comment")
if not status then
    vim.notify("没有找到 comment")
  return
end

local ft = require('Comment.ft')

require('Comment').setup({})

ft.set('cpp',{'//%s','//%s'})
ft.set('py',{'#%s','#%s'})
