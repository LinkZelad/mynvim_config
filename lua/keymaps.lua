local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", ";", ",", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>", opts)
keymap("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)

--keymap("n", "<F9>", "<cmd>lua require'dap'.run_last()<cr>", opts)
--keymap('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
--keymap("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
--keymap("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
--keymap("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
--keymap("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
--keymap("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
--keymap("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)

-- resise
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)
