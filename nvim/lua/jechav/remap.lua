
vim.g.mapleader = " "

-- Swap selection up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- keep screen centered on navigate
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep screen centered on search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without overriding clipboard register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy on system register
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- quick search and replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- set root directory as current file
vim.api.nvim_create_user_command('CDC', [[:lcd%:p:h]], {})


-- NvimTree
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>b", "<cmd>NvimTreeFindFileToggle<CR>")

--  Close current buffer
vim.keymap.set("n", "<leader>bq", "<cmd>bd<CR>")
--  Close all buffer
vim.keymap.set("n", "<leader>ba", "<cmd>bufdo bd<CR>")
-- Close close file
vim.keymap.set("n", "<leader>fq", "<cmd>q<CR>")
-- Save file
vim.keymap.set("n", "<leader>ss", "<cmd>update<CR>")

-- Close quickfix
vim.keymap.set("n", "<leader>cq", "<cmd>ccl<CR>")

-- Show  file path
vim.keymap.set("n", "<leader>fa", "<cmd>echo expand('%:p')<CR>")
vim.keymap.set("n", "<leader>fz", "<cmd>echo expand('%:~:.')<CR>")

vim.keymap.set("n", "<leader>mm", "<cmd>Prettier<CR>")
