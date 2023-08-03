vim.g.mapleader = " "
vim.g.maplocalleader = " "
--保存本地变量
local map = vim.api.nvim_set_keymap
--复用opt参数
local opt = {noremap = true, silent = true}
-- 取消 s 默认功能
map("n", "s", "", opt)
-- windows 分屏快捷键
map("n", "sh", ":vsp<CR>", opt)
map("n", "sv", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- Alt + hjkl  窗口之间跳转
--map("n", "<leader>h", "<C-w>h", opt)
--map("n", "<leader>j", "<C-w>j", opt)
--map("n", "<leader>k", "<C-w>k", opt)
--map("n", "<leader>l", "<C-w>l", opt)
map("n", "WW", ":source $MYVIMRC<CR>", opt)
-- 左右比例控制
map("n", "<C-l>", ":vertical resize -2<CR>", opt)
map("n", "<C-h>", ":vertical resize +2<CR>", opt)
-- 上下比例
map("n", "<C-j>", ":resize +2<CR>", opt)
map("n", "<C-k>", ":resize -2<CR>", opt)
-- 等比例
-- map("n", "s=", "<C-w>=", opt)
-- insert模式下按住Ctrl-s保存所有窗口的更改
map("i", "<C-s>", "<ESC>:wa<CR>a", opt)
-- normal模式下按住Ctrl-s保存
map("n", "<C-s>", ":wa<CR>", opt)
-- 取消搜索高亮
map("n", "<leader>n", ":noh<CR>", opt)
-- insert模式下左右移动
map("i", "<C-l>", "<Right>", opt)
map("i", "<C-h>", "<Left>", opt)
map("i", "<C-j>", "<Down>", opt)
map("i", "<C-k>", "<Up>", opt)

--插件快捷键
local pluginKeys = {}
-- nvim-tree
-- alt + m 键打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

--bufferline
--左右tab切换
map("n", "<A-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<A-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "<leader>w", ":Bdelete!<CR>", opt)
-- floatterm
map("n", "<leader>f", ":FloatermNew<CR>", opt)
pluginKeys.cmp = function(cmp)
    return {
        -- 出现补全
        ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
        -- 取消
        ["<A-,>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        -- 上一个
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<C-j>"] = cmp.mapping.select_next_item(),
        -- 确认
        ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
        }),
        -- 如果窗口内容太多，可以滚动
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),
    }
end

-- Telescope
-- 查找文件
map("n","<A-f>",":Telescope find_files<CR>",opt)
-- 全局搜索
map("n","<A-p>",":Telescope live_grep<CR>",opt)
-- code runner
map("n","<A-n>",":RunCode<CR>",opt)
map("n","<leader>rc",":RunClose<CR>",opt)
-- leap
map('n', 's', '<Plug>(leap-forward-to)',opt)
map('n', 'S', '<Plug>(leap-backward-to)',opt)

return pluginKeys
