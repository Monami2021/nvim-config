local keymap = vim.keymap

-- General Mappings
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Window Navigation (Alt + Arrows)
keymap.set("n", "<A-Left>", "<C-w>h", { desc = "Move to left split" })
keymap.set("n", "<A-Down>", "<C-w>j", { desc = "Move to bottom split" })
keymap.set("n", "<A-Up>", "<C-w>k", { desc = "Move to top split" })
keymap.set("n", "<A-Right>", "<C-w>l", { desc = "Move to right split" })

-- Buffers (Tabs) navigation
keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })

-- Stay in visual mode while indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
-- Terminal Mappings
local keymap = vim.keymap

-- Toggle Terminal (VS Code style)
keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle Bottom Terminal" })

-- Better Terminal Navigation
-- This allows you to use Ctrl+hjkl to move out of the terminal split
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- Apply these mappings only when a terminal is open
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
