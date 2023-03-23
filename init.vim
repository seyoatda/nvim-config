set nu
set clipboard=unnamed
set softtabstop=4
set shiftwidth=4
set guifont=Sarasa\ Mono\ SC:h16
imap jk <Esc>

lua require('plugins')

let g:indent_guides_guide_size            = 1  " ָ�������ߵĳߴ�
let g:indent_guides_start_level           = 2  " �ӵڶ��㿪ʼ���ӻ���ʾ����
syntax on
set background=dark
colorscheme gruvbox

lua require('lualine').setup()
