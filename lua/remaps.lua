-- GUI
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Movements
vim.keymap.set("n", "<C-d>", "20jzz")
vim.keymap.set("n", "<C-u>", "20kzz")

vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

vim.keymap.set("n", "''", "''zz")

-- Formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Yanking/Pasting
vim.keymap.set("n", "<C-y>", "0p<ESC>")
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Saving and undo/redo
vim.keymap.set("n", "<C-w>", ":wq!<ESC>")
vim.keymap.set("n", "<C-s>", ":w!<ESC>")

vim.keymap.set("n", "U", "<C-R>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Quickfixes
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
