call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox' " 主题
Plug 'vim-airline/vim-airline' " 状态栏
Plug 'vim-airline/vim-airline-themes' " 状态栏主题
Plug 'scrooloose/nerdtree' " 目录树

call plug#end()

syntax on " 开启语法高亮

" set nu  " 显示行号
set scrolloff=6 " 光标距离顶部和底部6行
set hlsearch " 高亮搜索结果
set incsearch " 搜索时逐字符高亮
set autoindent " 自动缩进
set tabstop=4 " 设置tab为4个空格
set expandtab " 设置tab为4个空格
set shiftwidth=4 " 设置缩进为4个空格
set softtabstop=4 " 设置tab为4个空格
set smartindent " 智能缩进

set encoding=utf-8 " 设置编码为utf-8

" set list " 显示不可见字符
" set ruler " 显示光标位置
" set cursorline  " 高亮当前行
" set cursorcolumn " 高亮当前列
" set wrap " 自动换行
set showcmd " 显示当前输入的命令

set mouse=a " 启用鼠标
" set selection=exclusive " 设置选择模式为exclusive
" set selectmode=mouse,key " 设置选择模式为mouse,key
" set selectmode+=cmd " 设置选择模式为cmd

set clipboard=unnamedplus " 设置剪切板为系统剪切板
set clipboard=unnamed " 设置剪切板为系统剪切板

" set listchars=tab:>-,trail:.,extends:>,precedes:< " 设置显示不可见字符

" 键位映射
let mapleader=" "   " 设置leader键为<Space>
nnoremap <C-n> :set nu!<CR> " Ctrl+n键切换行号
nnoremap <C-h> :set list!<CR> " Ctrl+h键切换显示不可见字符
nnoremap <leader>l :set cursorline!<CR> " leader+l键切换高亮当前行
nnoremap <leader>L :set cursorcolumn!<CR> " leader+L键切换高亮当前列
nnoremap <leader>h :set hlsearch!<CR> " leader+h键切换高亮搜索结果
nnoremap <leader>s :set incsearch!<CR> " leader+s键切换逐字符高亮搜索结果
nnoremap <leader>i :set ignorecase!<CR> " leader+i键切换搜索大小写敏感
nnoremap <leader>p :PlugInstall<CR> " leader+p键安装插件
nnoremap <leader>e :NERDTreeToggle<CR> " leader+e键切换目录树


" 个人信息
abbreviate myemail 469784630@11.com
abbreviate myname ttiee


" 状态栏主题
let g:airline_theme='gruvbox'

" 主题
colorscheme gruvbox
let g:gruvbox_contrast = 'hard'

" 目录树
let NERDTreeWinPos="left" " 目录树位置
let NERDTreeWinSize=30 " 目录树宽度
let NERDTreeShowHidden=1 " 显示隐藏文件
let NERDTreeMinimalUI=1 " 精简界面
" let NERDTreeDirArrows=1 " 显示目录箭头
" let NERDTreeIgnore=['\.pyc$', '\~$'] " 忽略文件
" let NERDTreeMapOpenInTab='\t' " 打开文件在新标签页
" let NERDTreeMapOpenSplit='s' " 打开文件在新窗口
" let NERDTreeMapOpenVSplit='v' " 打开文件在新垂直窗口
" let NERDTreeMapPreview='p' " 预览文件
" let NERDTreeMapToggle='e' " 切换目录树
" let NERDTreeMapMenu='m' " 打开菜单
" let NERDTreeMapHelp='?' " 打开帮助
" let NERDTreeMapMoveUp='k' " 上移
" let NERDTreeMapMoveDown='j' " 下移
" let NERDTreeMapReveal='o' " 打开文件
" let NERDTreeMapToggleHidden='I' " 切换显示隐藏文件
" let NERDTreeMapFind='f' " 查找文件
" let NERDTreeMapFindUp='K' " 查找上级目录
" let NERDTreeMapFindDown='J' " 查找下级目录
" let NERDTreeMapRefresh='R' " 刷新目录树
" let NERDTreeMapToggleAutoOpen='MA' " 切换自动打开
" let NERDTreeMapQuickLook='l' " 快速查看
" let NERDTreeMapPreview='p' " 预览文件
" let NERDTreeMapPreview='P' " 预览文件
" let NERDTreeMapPreview='o' " 打开文件
" let NERDTreeMapPreview='O' " 打开文件

" 状态栏
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#show_tab_type = 1
" let g:airline#extensions#tabline#show_tab_nr = 1
" let g:airline#extensions#tabline#show_tab_num = 1
" let g:airline#extensions#tabline#show_buffers = 1
" let g:airline#extensions#tabline#show_close_button = 1
" let g:airline#extensions#tabline#show_modify_flag = 1
" let g:airline#extensions#tabline#show_tabline = 1
" let g:airline#extensions#tabline#show_splits = 1


