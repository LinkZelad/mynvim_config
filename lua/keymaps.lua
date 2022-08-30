local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", ",", ",", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

--keymap("n", "<leader><F2>", "<cmd>lua require'dap'.toggle_breakpoint(); require'dap-util'.store_breakpoints(true)<cr>", opts)
keymap("n", "<leader><F2>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
--keymap("n", "<F2>", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)

--keymap("n", "<F9>", "<cmd>lua require'dap'.run_last()<cr>", opts)
--keymap('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
--keymap("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
keymap("n", "<leader><F6>", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
--keymap("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)

-- resise
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- bufferline
keymap("n", "<leader>x", ":BufferLinePickClose<CR>", opts)
keymap("n", "<leader>w", ":bd|bp<CR>", opts)
keymap("n","<leader>1",":<Cmd>BufferLineGoToBuffer 1<CR>" ,opts)
keymap("n","<leader>2",":<Cmd>BufferLineGoToBuffer 2<CR>" ,opts)
keymap("n","<leader>3",":<Cmd>BufferLineGoToBuffer 3<CR>" ,opts)
keymap("n","<leader>4",":<Cmd>BufferLineGoToBuffer 4<CR>" ,opts)
keymap("n","<leader>5",":<Cmd>BufferLineGoToBuffer 5<CR>" ,opts)
keymap("n","<leader>6",":<Cmd>BufferLineGoToBuffer 6<CR>" ,opts)
keymap("n","<leader>7",":<Cmd>BufferLineGoToBuffer 7<CR>" ,opts)
keymap("n","<leader>8",":<Cmd>BufferLineGoToBuffer 8<CR>" ,opts)
keymap("n","<leader>9",":<Cmd>BufferLineGoToBuffer 9<CR>" ,opts)
keymap("n","<leader>$",":<Cmd>BufferLineGoToBuffer -1<CR>",opts)


-- cmake
-- Create a new project (:CMake create_project) or open folder with an existing.
-- Configure project (:CMake configure, you can pass any additional CMake arguments) to create build folder and get targets information.
-- Select target to execute (:CMake select_target).
-- Set target arguments (:CMake set_target_arguments, they will be added automatically for running and debugging).
-- Build and run (:CMake build_and_run) or build and debug (:CMake build_and_debug) to execute the selected target. You can pass additional arguments to these commands, which will be temporarily added to the arguments from 4.


