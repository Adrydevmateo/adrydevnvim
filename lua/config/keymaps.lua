local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Save
map("n", "<C-s>", "<CMD>update<CR>")
map("i", "<C-s>", "<Esc><CMD>update<CR>a")

-- Quit
map("n", "<leader>q", "<CMD>qa<CR>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

---- External
-- Curl => oysandvik94/curl.nvim
map(
	"n",
	"<leader>cc",
	"<CMD>lua require('curl').open_curl_tab()<CR>",
	{ desc = "Open a curl tab scoped to the current working directory" }
)

map("n", "<leader>co", "<CMD>lua require('curl').open_global_tab()<CR>", { desc = "Open a curl tab with global scope" })

map(
	"n",
	"<leader>csc",
	"<CMD>lua require('curl').create_scoped_collection()<CR>",
	{ desc = "Create or open a collection with a name from user input" }
)

map(
	"n",
	"<leader>cgc",
	"<CMD>lua require('curl').create_global_collection()<CR>",
	{ desc = "Create or open a global collection with a name from user input" }
)
