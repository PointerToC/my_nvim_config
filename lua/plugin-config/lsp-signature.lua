local status, lsp_signature = pcall(require, "lsp_signature")
if not status then
    vim.notify("没有找到 lsp_signature")
  return
end

lsp_signature.setup({
  floating_window = false,
  max_height = 5,
  max_width = 80,
  close_timeout = 1000,
  floating_window_above_cur_line = false,
  fix_pos = true,
  handler_opts = {
    border = "single"
  },
  timer_interval = 50,
})
