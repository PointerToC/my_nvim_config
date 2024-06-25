local status, barbar = pcall(require, "barbar")
if not status then
    vim.notify("没有找到 barbar")
  return
end

barbar.setup({})
