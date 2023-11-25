local status, code_runner = pcall(require, "code_runner")
if not status then
    vim.notify("没有找到 code_runner")
  return
end

require('code_runner').setup({
  before_run_filetype = function()
    vim.cmd(":w")
  end,
  filetype = {
    cpp = {
      "cd $dir &&",
      "clang++ -lpthread $fileName",
      "-o $fileNameWithoutExt &&",
      "$dir/$fileNameWithoutExt"
    },
    c = {
      "cd $dir &&",
      "gcc $fileName",
      "-o $fileNameWithoutExt &&",
      "$dir/$fileNameWithoutExt"
    },
  },
})
