set nu
set clipboard=unnamed
set softtabstop=4
set shiftwidth=4
set guifont=JetbrainsMono\ NF:h16
imap jk <Esc>

lua require('plugins')

let g:indent_guides_guide_size            = 1  " ָ       ߵĳߴ 
let g:indent_guides_start_level           = 2  "  ӵڶ  㿪ʼ   ӻ   ʾ    
syntax on
set background=dark
colorscheme gruvbox

lua <<EOF

require('lualine').setup()
require('plugin-config/nvim-treesitter')
require('lsp/setup')
require("mason").setup()
require('plugin-config/nvim-tree')
require('lsp/nvim-cmp')

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })


EOF