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

vim.keymap.set('i', 'jk', '<esc>')

vim.keymap.set('i', 'kj', '<esc>')

vim.keymap.set('v', 'jk', '<esc>')

vim.keymap.set('v', 'kj', '<esc>')

vim.keymap.set('n', '<S-j>', '5j')

vim.keymap.set('n', '<S-k>', '5k')

vim.keymap.set('v', '<S-j>', '5j')

vim.keymap.set('v', '<S-k>', '5k')

vim.keymap.set('n', '<S-y>', '5<C-y>')

vim.keymap.set('n', '<S-e>', '5<C-e>')

vim.keymap.set('n', ';', '$')

vim.keymap.set('n', 'f', '0')

vim.keymap.set('v', ';', '$')

vim.keymap.set('v', 'f', '0')

vim.keymap.set('n', '<space>', '/')

vim.keymap.set('n', '<A-k>', 'ddkP')

vim.keymap.set('n', '<A-j>', 'ddjP')

vim.keymap.set( 'n', '<space>ff', '<cmd>lua require("telescope.builtin").find_files({cwd = "/", hidden = true})<CR>', {silent = true})

-- vim.keymap.set( 'n', '<space>ff', require("telescope.builtin").find_files({cwd = "/", hidden = true}), {silent = true})

vim.keymap.set( 'n', '<space>fg', '<cmd>lua require("telescope.builtin").live_grep({cwd = "$HOME" , hidden = true})<CR>', {silent = true})

vim.keymap.set( 'n', '<space>fs', '<cmd>lua require("telescope.builtin").grep_string({grep_open_files = true, hidden = true})<CR>', {silent = true})

vim.api.nvim_set_keymap( 'n', '<space>fb', '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find({ previewer = false })<CR>', { noremap=true, silent = true})

--==================== Plug ins =================

local Plug = vim.fn['plug#']

vim.fn['plug#begin']('~/.config/nvim/plugged')

--Plug 'honza/vim-snippets'
--Plug 'mhinz/vim-startify'
--============= Themes =========================
Plug 'tanvirtin/monokai.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'})
Plug 'sainnhe/sonokai'
Plug 'marko-cerovac/material.nvim'
Plug 'vim-airline/vim-airline'
Plug 'p00f/nvim-ts-rainbow'
Plug('catppuccin/nvim', {as = 'catppuccin '})
Plug 'nvim-tree/nvim-web-devicons'
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

require('nvim-web-devicons').setup {
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
 -- globally enable "strict" selection of icons - icon will be looked up in
 -- different tables, first by filename, and if not found by extension; this
 -- prevents cases when file doesn't have any extension but still gets some icon
 -- because its name happened to match some extension (default to false)
 strict = true;
 -- same as `override` but specifically for overrides by filename
 -- takes effect when `strict` is true
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  }
 };
 -- same as `override` but specifically for overrides by extension
 -- takes effect when `strict` is true
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  }
 };
}


