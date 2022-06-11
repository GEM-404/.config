
-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ' '

-- telescope planets
map('n', '<leader>pp', ':lua require"telescope.builtin".planets{}<cr>')
map('n', 'ff', ':FZF<cr>')

--lazygit configurations
map('n', '<leader>gg', ':LazyGit<cr>')

-- nvimranger configurations
map('n', '<leader>ra', ':RnvimrToggle<cr>')

-- quit! mapping
map('n', '<C-q>', ':q!<cr>')

-- Quickfix mappings
map('i', 'jj', '<esc>', { noremap = true, silent = true })
map('n', '<leader>ck', ':cexpr []<cr>')
map('n', '<leader>cc', ':cclose <cr>')
map('n', '<leader>co', ':copen <cr>')
map('n', '<leader>cf', ':cfdo %s/')
map('n', '<leader>cp', ':cprev<cr>zz')
map('n', '<leader>cn', ':cnext<cr>zz')

-- Yanking and copying whole files in neovim
map('n', '<f5>', ':%y<cr>')
map('n', '<f6>', 'ggVGp')
map('n', '<f4>', 'ggVG')
map('n', '<f8>', 'ggVGd')

-- Quick Colorscheme changings
map('n', 'tc', ':colorscheme rose-pine<cr>')
map('n', 'tm', ':colorscheme monokai_soda<cr>')

map('n', 'td', ':colorscheme default<cr>')
map('n', 'ts', ':colorscheme synthwave84<cr>')
map('n', 'tz', ':colorscheme zellner<cr>')
map('n', 'tu', ':colorscheme murphy<cr>')

-- buffer navigation
map('n', 'bp', ':bprev<cr>')
map('n', 'bn', ':bnext<cr>')
map('n', 'bd', ':bdelete<cr>')

-- resize with arrows
map('n', '<C-Up>', ':resize -2<CR>')
map('n', '<C-Down>', ':resize +2<CR>')
map('n', '<C-Left>', ':vertical resize -2<CR>')
map('n', '<C-Right>', ':vertical resize +2<CR>')

-- resize with arrows
map('n', '<C-Up>', ':resize -2<CR>')
map('n', '<C-Down>', ':resize +2<CR>')
map('n', '<C-Left>', ':vertical resize -2<CR>')
map('n', '<C-Right>', ':vertical resize +2<CR>')
map('n', 'J', '5j')
map('x', 'J', '5j')
map('n', 'K', '5k')
map('x', 'K', '5k')

map("n", "L", "g_")
map("n", "H", "^")
map("x", "L", "g_")
map("x", "H", "^")

map("n", "W", "5w")
map("n", "B", "5b")


map("n", "<", "<<")
map("n", ">", ">>")
map("x", "<", "<gv")
map("x", ">", ">gv")

map("n", ";d", ":Dispatch ", {noremap = true, silent = false})

map("n", "-", "N")
map("n", "=", "n")
map("n", ";", ":")
map("v", ";", ":")

map("n", "<C-t>h", ":tabprevious<CR>")

map("n", "<C-t>l", ":tabnext<CR>")
map("n", ",", ":tabnext<CR>")

map("n", "<C-t>n", ":tabnew<CR>")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-h>", "<C-w>h")

map("", "<Space>", "<Nop>")

map("n", ";w", ":w<CR>")
map("n", ";q", ":q<CR>")
map("n", ";x", ":x<cr>")

map("x", "<C-y>", [["+y]])
map("n", "<C-p>", [["+p]])
map("i", "<C-p>", [[<ESC>"+pa]])

map("n", "<ESC>", ":nohlsearch<CR>")

map("n", "<C-up>", ":res +5<CR>")
map("n", "<C-down>", ":res -5<CR>")
map("n", "<C-right>", ":vertical resize-5<CR>")
map("n", "<C-left>", ":vertical resize+5<CR>")

-- center line
map("i", "<C-c>", "<ESC>zzi")

-- EasyAlign
-- map("v", "<leader>e", ":EasyAlign<CR>")

-- nvim-tree
map("n", "tt", ":NvimTreeToggle<CR>")
map("n", "tr", ":NvimTreeRefresh<CR>")

-- vsplit commands
map("n", "<C-v>", ":vsplit<CR>")
map("n", "<C-w>", ":split<CR>")

-- commentary
map("n", "<C-n>", ":CommentToggle<CR>")
map("v", "<C-n>", ":CommentToggle<CR>")


map("n", "<C-\\>", [[:terminal<CR>]])
map("t", "<C-\\>", [[:terminal<CR>]])

map("n", "tl", ":lua require('telescope.builtin').find_files{}<CR>")
map("n", "tg", "<cmd>Telescope live_grep<cr>")

map("n", "<LEADER>g", [[<CMD>Git<CR>]])
map("n", "<LEADER>l", [[<CMD>LazyGit<CR>]])

map("i", "<A-;>", "<ESC>")
map("i", "jj", "<ESC>")
map("i", "JJ", "<ESC>")
map("v", "aa", "<ESC>")

-- my own line for LExplore
map("n", "<LEADER>e", ":Lex 30<CR>")

-- my own line for moving normal texts up and down
-- map("n", "<A-j>", ":m .+1<CR>==gn")
-- map("n", "<A-k>", ":m .-2<CR>==gn")

-- for saving automatically,
map("n", ";", ":")
map("n", "<leader>w", ":w!<CR>")
map("n", "<leader>q", ":q!<CR>")

-- my own line for moving blocks of visual texts up and down
-- map("v", "<A-j>", ":m .+1<CR>==gn", opt)
-- map("v", "<A-k>", ":m .-2<CR>==gn", opt)


-- bufferline tab stuff
map("n", "<C-c>", ":BufferLinePickClose<CR>") -- close tab
-- map("n", "<S-x>", [[:Sayonara<CR>]])
map("n", "<A-q>", [[:Sayonara<CR>]])

-- move between tabs
-- map("n", ".", [[<Cmd>BufferLineCycleNext<CR>]])
map("n", ",", [[<Cmd>BufferLineCyclePrev<CR>]])

-- move tabs
map("n", "<A->>", [[<CMD>BufferLineMoveNext<CR>]])
-- map("n", "<C-.>", [[<CMD>BufferLineMoveNext<CR>]])
map("n", "<A-<>", [[<CMD>BufferLineMovePrev<CR>]])
-- map("n", "<C-,>", [[<CMD>BufferLineMovePrev<CR>]])
map("n", "<A-p>", [[<CMD>:BufferLinePick<CR>]])
map("n", "<S-x>", [[<CMD>:BufferLinePick<CR>]])

-- map("n", "<LEADER>f", "<CMD> lua require"telescope.builtin".find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>")
map("n", "<C-t>", "<CMD>Telescope live_grep<CR>")

map("n", "<leader>n", "<ESC>:tabnew<CR>")
-- map("i", "<leader>n", "<ESC>:tabnew<CR>")

map("n", "<LEADER>s", [[<ESC>:Startify<CR>]])

map("n", "<leader>gd", [[<ESC>:call CocAction('jumpDefinition', 'vsplit')<CR>]])

map("n", "tf", "<ESC>:FloatermToggle<CR>")

map("n", "<leader>rt", "<ESC>:RnvimrToggle<CR>")


-- map('n', '<A-j>', ":MoveLine(1)<CR>")
-- map('n', '<A-k>', ":MoveLine(-1)<CR>")
-- map('v', '<A-j>', ":MoveBlock(1)<CR>")
-- map('v', '<A-k>', ":MoveBlock(-1)<CR>")

 -- map('n', ':pyt', ":!python %<CR>")
-- map('n', 'cpp', ":!c++ % -o %:r && ./%:r <CR>")
-- map('n', 'sh', ":!chmod +x % && source %<CR>")
-- map('n', 'c', ":!clang % -o %:r && ./%:r <CR>")
-- map('n', 'jv', ":!javac % && java %:r <CR>")
--
-- lsp saga mappings
--
-- map("n", "gh", ":Lspsaga lsp_finder<cr>")
-- map("n", "<leader>ca", ":Lspsaga code_action<cr>")
-- map("v", "<leader>ca", ":<C-U>Lspsaga ranger_code_action<cr>")

-- map("n", "<C-f>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
-- map("n", "<C-b>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")

-- map("n", "gs", ":Lspsaga signature_help<cr>")
--
-- map("n", "gr", ":Lspsaga rename<cr>")
-- map("n", "gd", ":Lspsaga preview_definition")
--
-- map("n", "<leader>cd", ":Lspsaga show_line_diagnostics<cr>")
-- map("n", "<leader>cc", ":Lspsaga show_cursor_diagnostics<cr>")
--
-- -- jump diagnostic
-- map("n", "[e", ":Lspsaga diagnostic_jump_next<cr>")
-- map("n", "]e", ":Lspsaga diagnostic_jump_prev<cr>")
--
--
-- -- Float terminal
-- map("n", "<A-d>", ":Lspsaga open_floaterm<cr>")
-- map("t", "<A-d>", "<C-\\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<cr>")

map("n", "<C-s>", ":wqa!<cr>")


map("i", "<C-Space>", ":compe#complete()")
map("i", "<CR>",      ":compe#confirm(lexima#expand('<LT>CR>', 'i'))")
map("i", "<C-e>",     ":compe#close('<C-e>')")
map("i", "<C-f>",     ":compe#scroll({ 'delta': +4 })")
map("i", "<C-d>",     ":compe#scroll({ 'delta': -4 })")

-- map("n", "<leader>ex", ":Ex<cr>")
map("n", ";d", ":bd<cr>")
