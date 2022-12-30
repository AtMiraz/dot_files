local wk = require('which-key')

local ops = {
	mode = "n", -- NORMAL mode
	-- prefix: use "<leader>f" for example for mapping everything related to finding files
	-- the prefix is prepended to every mapping part of `mappings`
	prefix = "",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
}

local mappings = {
	['<leader>f'] = { name = '+[F]ile' },
	['<leader>s'] = { name = '+[S]earch' },
	['<leader>w'] = { name = '+[W]orkspace' },
	['<leader>q'] = { name = '[Q]uit menu' },
	['<leader>e'] = { name = '[E]xit menu' },
	['<leader>t'] = { name = '+[T]ree' },
	['<leader>tt'] = { '<cmd>NvimTreeToggle<cr>', '[T]oggle' },
	['<leader>tr'] = { '<cmd>NvimTreeRefresh<cr>', '[R]efresh' },
	['<leader>tf'] = { '<cmd>NvimTreeFindFile<cr>', '[F]ind current file' },
	['<leader>fn'] = { '<cmd>enew<cr>', 'New File' },
	['<leader>o'] = { name = '[O]pen' },
	['<leader>oc'] = { '<cmd>:e ~/.config/nvim/init.lua<cr>', '[C]onfiguration' },
	['<leader>od'] = { '<cmd>Dashboard<cr>', '[D]ashboard' },
	['<leader>h'] = { name = '[H]arpoon' },
	['<leader>ha'] = { name = '[A]dd' },
	['<leader>hw'] = { name = '[T]oggle' },
	['<leader>hn'] = { name = '[N]ext mark' },
	['<leader>hp'] = { name = '[P]revious mark' },
	['<leader>u'] = { name = 'Open [U]ndo tree' },
}

wk.register(mappings, ops)
