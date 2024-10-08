return {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup {
      detection_methods = { "pattern" },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".sln" },
    }
  end
}
