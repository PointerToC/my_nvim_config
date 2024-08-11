local status, vscode = pcall(require, "vscode")
if not status then
  vim.notify("没有找到 vscode")
  return
end

local c = require('vscode.colors').get_colors()

vscode.setup({
  style = 'light',
  italic_comments = true,
  color_overrides = {
    vscLineNumber = '#bda891',
  },
  group_overrides = {
    CursorLine = {bg='#2F2F2F'}
  },
})

vscode.load()

