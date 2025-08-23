vim.g.mapleader = " "
-- vim.g.maplocalleader = " "
--保存本地变量
local map = vim.api.nvim_set_keymap
--复用opt参数
local opt = {noremap = true, silent = true}

-- windows 分屏快捷键
map("n", "sh", ":vsp<CR>", opt)
map("n", "sv", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)

map("n", "WW", ":source $MYVIMRC<CR>", opt)
-- 左右比例控制
map("n", "<C-l>", ":vertical resize -2<CR>", opt)
map("n", "<C-h>", ":vertical resize +2<CR>", opt)
-- 上下比例
map("n", "<C-j>", ":resize +2<CR>", opt)
map("n", "<C-k>", ":resize -2<CR>", opt)
-- 取消搜索高亮
map("n", "<leader>n", ":noh<CR>", opt)

-- nvim-tree
-- alt + m 键打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

--barbar-line
--左右tab切换
map("n", "<A-h>", "<Cmd>BufferPrevious<CR>", opt)
map("n", "<A-l>", "<Cmd>BufferNext<CR>", opt)

-- 关闭
map("n", "<leader>w", "<Cmd>BufferClose<CR>", opt)
map("n", "<leader>W", ":BufferCloseAllButCurrent<CR>", opt)

-- floatterm
map("n", "<leader>f", ":FloatermNew<CR>", opt)

-- paste to the sys clipboard
map('v', '<leader>y', '"+y',opt)
map('n', '<leader>p', '"+p',opt)

-- 查找文件
map("n","<A-f>",":Telescope find_files<CR>",opt)
-- 全局搜索
map("n","<A-p>",":Telescope live_grep<CR>",opt)

-- upper word
map('n', '<leader>k', 'gUiw',opt)
