vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pve", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- (Exuberant/Universal) Ctags
vim.opt.tags = '.tags'
function RTags()
    vim.cmd [[!ctags -f .tags --languages=ruby --exclude=.git -R .]]
end

vim.keymap.set("n", "rT", RTags)

vim.g['test#strategy'] = "neovim"

vim.keymap.set("n", "<leader>tn", vim.cmd.TestNearest, { desc = '[T]est [N]earest' })
vim.keymap.set("n", "<leader>tf", vim.cmd.TestFile, { desc = '[T]est [F]ile' })
vim.keymap.set("n", "<leader>ts", vim.cmd.TestSuite, { desc = '[T]est [S]uite' })
vim.keymap.set("n", "<leader>tl", vim.cmd.TestLast, { desc = '[T]est [L]ast' })
vim.keymap.set("n", "<leader>tv", vim.cmd.TestVisit, { desc = '[T]est [V]isit' })
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>", { silent = true })
vim.keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>", { silent = true })
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { silent = true })

vim.api.nvim_set_keymap('n', '<leader>ec', ':Econtroller<Space>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>em', ':Emodel<Space>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ev', ':Eview<Space>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>a', ':A<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':R<CR>', { noremap = true, silent = true })

