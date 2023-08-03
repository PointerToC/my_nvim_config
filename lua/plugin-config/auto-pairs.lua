local status, auto_pairs = pcall(require, "nvim-autopairs")
if not status then
    vim.notify("没有找到 nvim-autopairs")
  return
end

auto_pairs.setup({})

