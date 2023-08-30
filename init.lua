--=============== General Settings ============== 

vim.opt.syntax = "on"

vim.opt.compatible = false

vim.opt.showmatch = true

vim.opt.incsearch = true

vim.opt.shiftwidth = 4

vim.opt.autoindent = true

-- Install wl-clipboard to use clipboard in wayland
vim.opt.clipboard = "unnamedplus"

vim.opt.mouse = 'a'

vim.opt.ttyfast = true

vim.opt.spell = false

vim.opt.filetype = 'on'

vim.opt.filetype.plugin = 'on'

vim.opt.filetype.indent = 'on'

vim.opt.number = true

vim.opt.smartindent = true

vim.opt.swapfile = false

vim.opt.backup = false

vim.undodir = os.getenv("HOME") .. "/.nvim/undodir"

vim.opt.undofile = true

vim.opt.updatetime = 50

--"set cursorline" set tabstop=4 set scrolloff=4

vim.opt.ignorecase = true

vim.opt.hlsearch = false

vim.opt.termguicolors = true

--================= Key Bindings ===============

vim.keymap.set({ 'i', 'v'}, 'jk', '<esc>')

vim.keymap.set({ 'i', 'v'}, 'kj', '<esc>')

vim.keymap.set({'n','v'}, '<S-j>', 'gT')

vim.keymap.set({'n','v'}, '<S-k>', 'gt')

vim.keymap.set('n', '<S-e>', '5<C-e>')

vim.keymap.set({'n','v'}, ';', '$')

vim.keymap.set({'n','v'}, 'f', '0')

vim.keymap.set('n', '<space>', '/')

vim.keymap.set('n', '<A-k>', 'ddkP')

vim.keymap.set('n', '<A-j>', 'ddjP')

vim.keymap.set( 'n', '<space>ff', '<cmd>lua require("telescope.builtin").find_files({cwd = "$HOME", hidden = true})<CR>', {silent = true})

-- vim.keymap.set( 'n', '<space>ff', require("telescope.builtin").find_files({cwd = "/", hidden = true}), {silent = true})

vim.keymap.set( 'n', '<space>fg', '<cmd>lua require("telescope.builtin").live_grep({cwd = "$HOME" , hidden = true})<CR>', {silent = true})

vim.keymap.set( 'n', '<space>fs', '<cmd>lua require("telescope.builtin").grep_string({grep_open_files = true, hidden = true})<CR>', {silent = true})

vim.keymap.set( 'n', '<space>fb', '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find({ previewer = false })<CR>', { noremap=true, silent = true})

--==================== Plug ins =================

local Plug = vim.fn['plug#']

vim.fn['plug#begin']('~/.config/nvim/plugged')

--Plug 'honza/vim-snippets'
--Plug 'mhinz/vim-startify'

--============= Themes =========================
Plug 'tanvirtin/monokai.nvim'
Plug 'sainnhe/sonokai'
Plug('catppuccin/nvim', {as = 'catppuccin '})
Plug 'vim-airline/vim-airline'

--============= Plugins =========================
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'})
Plug 'folke/trouble.nvim'

vim.fn['plug#end']()


vim.cmd[[ colorscheme sonokai ]]


vim.g.airline_powerline_fonts = 1
vim.g.airline_section_z = '%p%% Line:%l/%L'
vim.g.airline_extensions = {}

vim.g.vimwiki_list = {{syntax = 'markdown'}}

require'nvim-treesitter.configs'.setup{

    ensure_installed = {"c", "cpp", "lua", "python", "bash", "markdown"},

    sync_install = false,

    auto_install = true,
    
    highlight = {
	enable = true,

	disable = {"markdown"},
	additional_vim_regex_highlighting = false
    },

    incremental_selection = {
	enable = true,
        keymaps = {
          init_selection = '<CR>',
          scope_incremental = '<CR>',
          node_incremental = '<TAB>',
          node_decremental = '<S-TAB>',
        },
    },
    
    indentexpr = {
	enable = true
    },
}

require('trouble').setup()

require('telescope').setup{

    defaults={
	layout_strategy = "flex",
	preview_cuttoff = 1
    }
}







