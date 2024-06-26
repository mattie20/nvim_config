--=============== General Settings ============== 

vim.opt.showmatch = true

vim.opt.incsearch = true

-- Install wl-clipboard to use clipboard in wayland
vim.opt.clipboard = "unnamedplus"

vim.opt.number = true

vim.opt.swapfile = false

vim.opt.undofile = true

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.shiftwidth = 4

vim.opt.timeoutlen = 500

--================= Key Bindings ===============

vim.keymap.set({'i','t'}, 'jk', '<C-\\><C-n>')

vim.keymap.set({'n','t'}, '<tab>', 'gt')

vim.keymap.set({'n','v'}, ';', '$')

vim.keymap.set({'n','v'}, 'f', '0')

vim.keymap.set('n', '<space>', '/')

vim.keymap.set('n', '<A-k>', 'ddkP')

vim.keymap.set('n', '<A-j>', 'ddjP')

vim.keymap.set('n', '<space>ff', '<cmd>lua require("fzf-lua").files()<CR>', { silent = true })

vim.keymap.set('n', '<space>fg', '<cmd>lua require("fzf-lua").live_grep()<CR>', { silent = true })

vim.keymap.set('n', '<space>fl', '<cmd>lua require("fzf-lua").lines()<CR>', { silent = true })

--==================== Plugins =================

local Plug = vim.fn['plug#']

vim.fn['plug#begin']('~/.config/nvim/plugged')

Plug('sainnhe/sonokai')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('ibhagwan/fzf-lua', { ['branch'] = 'main'})

vim.fn['plug#end']()

vim.cmd.colorscheme('sonokai')

--============= Statusline ======================

vim.api.nvim_set_hl(0,'User2', { fg = '#66d9ef', bg = '#3b3e48'})

vim.cmd[[set statusline=\ [%{mode()}\]\ \ %2*%<%f\%m\%*%=\ \[\ %P\ Line:%l\/%L\ ]\ ]]

--============= Plugin Setup ======================

require'nvim-treesitter.configs'.setup{

    ensure_installed = {"c", "cpp", "lua", "python", "bash", "markdown"},

    auto_install = true,
    
    highlight = {
	enable = true,
    },

    incremental_selection = {
	enable = true,
        keymaps = {
          init_selection = '<CR>',
          scope_incremental = '<CR>',
          node_incremental = '<TAB>',
          node_decremental = '<S-TAB>'
        },
    },
    
    indentexpr = {
	enable = true
    }
}

require'fzf-lua'.setup {
    
    winopts = {
	preview = {
    	    layout = 'vertical',
	    vertical = 'up:45%'
    	}
    },
    
    fzf_opts = {
        ["--scheme"]  = "path"
    }
}



