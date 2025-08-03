local status, barbar = pcall(require, "barbar")

if not status then
  vim.notify("barbar not found")
  return
end

barbar.setup()
