--=============== General Settings ============== 

vim.opt.compatible = false

vim.opt.showmatch = true

vim.opt.incsearch = true

vim.opt.shiftwidth = 4

vim.opt.autoindent = true

vim.opt.clipboard = "unnamedplus"

vim.opt.mouse = 'a'

vim.opt.ttyfast = true

vim.opt.spell = false

vim.opt.filetype = 'on'

vim.opt.filetype.plugin = 'on'

vim.opt.filetype.indent = 'on'

vim.opt.number = true

--"set cursorline" set tabstop=4 set scrolloff=4

vim.opt.ignorecase = true

vim.opt.hlsearch = true

vim.opt.termguicolors = true

--================= Key Bindings ===============

vim.api.nvim_set_keymap("i", "jk", "<esc>", {noremap = true})

vim.api.nvim_set_keymap( 'i', 'kj', '<esc>', {noremap=true, silent=true})

vim.api.nvim_set_keymap('n', '<S-j>', '5j',{noremap=true})

vim.api.nvim_set_keymap('n', '<S-k>', '5k',{noremap=true})

vim.api.nvim_set_keymap('n', '<S-y>', '5<C-y>',{noremap=true})

vim.api.nvim_set_keymap('n', '<S-e>', '5<C-e>',{noremap=true})

vim.api.nvim_set_keymap('n', ';', '$',{noremap=true})

vim.api.nvim_set_keymap('n', 'f', '0',{noremap=true})

vim.api.nvim_set_keymap('n', '<space>', '/',{noremap=true})

vim.api.nvim_set_keymap( 'n', '<space>ff', '<cmd>lua require("telescope.builtin").find_files({cwd = "%:h", hidden = true})<CR>', { noremap=true, silent = true})

vim.api.nvim_set_keymap( 'n', '<space>fg', '<cmd>lua require("telescope.builtin").live_grep({grep_open_files=true, hidden = true, cwd = "%:h"})<CR>', { noremap=true, silent = true})

--==================== Plug ins =================

local Plug = vim.fn['plug#']

vim.fn['plug#begin']('~/.config/nvim/plugged')

--Plug 'Xuyuanp/nerdtree-git-plugin'
--Plug 'preservim/nerdtree'
--Plug 'ryanoasis/vim-devicons'
--jjPlug 'SirVer/ultisnips'"
--Plug 'honza/vim-snippets'
--Plug 'mhinz/vim-startify'
--Plug 'octol/vim-cpp-enhanced-highlight'"
--Plug 'bfrg/vim-cpp-modern'
--============= Themes =========================
Plug 'tanvirtin/monokai.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sainnhe/sonokai'
Plug 'marko-cerovac/material.nvim'
Plug 'sainnhe/edge'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'p00f/nvim-ts-rainbow'

vim.fn['plug#end']()

vim.cmd[[ colorscheme sonokai ]]

--autocmd BufWinEnter * Fern . -reveal:=% -drawer

--autocmd VimEnter * NERDTree

--set splitright

--set splitbelow

vim.g.airline_powerline_fonts = 1
vim.g.airline_section_z = '%p%% Line:%l/%L'
vim.g.airline_extensions = {}


require'nvim-treesitter.configs'.setup{

    ensure_installed = {"c", "cpp", "lua", "python"},

    sync_install = false,

    auto_install = true,

    highlight = {
		    enable = true,

		    --additional_vim_regex_highlighting = false
		},
    
    rainbow = {
	enable = true,
	colors = {"#ffd700","#da70d6","#179fff"}
    }

}



require('telescope').setup{

    defaults={
	layout_strategy = "flex",
	preview_cuttoff = 1
    }
}


