syntax on
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set go=             " 不要图形按钮  
let autosave=1 "自动保存
set showcmd         " 输入的命令显示出来，看的清楚些  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
" 自动缩进
set autoindent
set cindent
set noexpandtab
:%retab!
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
"set incsearch
"语言设置
set langmenu=zh_CN.UTF-8
" 总是显示状态行
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F12> gg=G
map <C-w> <C-w>w
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"自动保存
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set selection=exclusive
set selectmode=mouse,key
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <F2> :TagbarToggle<CR>   
let g:tagbar_ctags_bin = 'ctags'                       "tagbar以来ctags插件
let g:tagbar_left = 1                                          "让tagbar在页面左侧显示，默认右边
let g:tagbar_width = 25                                     "设置tagbar的宽度为30列，默认40
let g:tagbar_open = 0                                     "设置tagbar的宽度为30列，默认40
"let g:tagbar_autofocus = 1                                "这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
"let g:tagbar_autopreview = 1
let g:tagbar_sort = 0                                         "设置标签不排序，默认排序
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

"设置tags  
nmap <silent> <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ ./* .<CR>
set autochdir 
set tags=tags;  
set tags+=~/.vim/tags/kernel_include/tags

set laststatus=2  "永远显示状态栏
set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
"let g:airline#extensions#tabline#enabled = 1
"nmap <tab> :bn<cr> "设置tab键映射"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1 
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口 
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
set completeopt=menuone,menu,longest
inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
inoremap <expr> <C-K>      pumvisible()?"\<C-P>":"\<C-K>"
inoremap <expr> <C-J>      pumvisible()?"\<C-N>":"\<C-J>" 
inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>"
"cscope
nmap <silent> <F9> :!find `pwd` -name "*.h" -o -name "*.c" -o -name "*.cc" > cscope.files && cscope -bkq -i cscope.files <CR>
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set csverb
	set nocscopeverbose
	set cspc=3
	if filereadable("cscope.out")
"		cs add cscope.out
	else
		let cscope_file=findfile("cscope.out", ".;")
		let cscope_pre=matchstr(cscope_file, ".*/")
		if !empty(cscope_file) && filereadable(cscope_file)
			exe "cs add" cscope_file cscope_pre
		endif
	endif
endif
"查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
nmap 1 :cs find g <C-R>=expand("<cword>")<CR><CR>
"查找调用本函数的函数 
nmap 2 :cs find c <C-R>=expand("<cword>")<CR><CR>
"查找C语言符号，即查找函数名、宏、枚举值等出现的地方
nmap 3 :cs find s <C-R>=expand("<cword>")<CR><CR>
"查找本函数调用的函数
nmap 4 :cs find d <C-R>=expand("<cword>")<CR><CR>
"查找指定的字符串 
nmap 5 :cs find t <C-R>=expand("<cword>")<CR><CR>
"查找egrep模式，相当于egrep功能，但查找速度快多了 
nmap 6 :cs find e <C-R>=expand("<cword>")<CR><CR>
" 查找#include这个文件的文件（们）
nmap 7 :cs find i % <CR><CR>
"查找并打开文件，类似vim的find功能
nmap 8 :cs find f 

"ctrl + space同时点击，之后松开快速点击，g，s等按键
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>i :cs find i % <CR><CR>
nmap <C-@>f :cs find f 
