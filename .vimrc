syntax on		    " 语法高亮
"colorscheme darkblue       " 更改配色方案
"set lines=40 columns=100   " 设定窗口大小
"set guifont=Courier_New:h10:cANSI   " 设置字体
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行

set nu 			    " 显示行号
"set number 
"set nonu

"set mouse=a         " 使用鼠标

" 设置缩进宽度
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab 		" 自动tab 扩展为空格
set autoindent 		" 自动缩进
set cindent         " 设置C/C++的自动缩进方式
"set cinoptions={….  "设置C/C++语言的具体缩进方式
"set smartindent    " 智能自动对齐

set cino=g0,:0      " switch case 对齐风格

set linebreak       " 整词换行

" 代码折叠相关配置
set foldenable      " 使能折叠
" 设置代码折叠方式：
"   - manual : 手动定义折叠
"   - indent : 
"   - expr   :
"   - syntax :
"   - diff   :
"   - marker :
set foldmethod=syntax " 语法折叠
set foldlevelstart=99   " 打开文件时默认不折叠
" 相关操作指令: zc - 关闭折叠, zo - 折叠, zc - 打开/关闭折叠
" 设置空格开关折叠:
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  


" 命令行设置
set showcmd         " 命令行显示输入的命令
set showmode        " 命令行显示vim的当前模式

" 状态行设置
set laststatus=2    " 0：不显示；1：显示；2：总是显示
set ruler           " 使能标尺,在状态行显示光标的行号和列号
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容

" ctags 设置
" F5更新tag文件,并更新taglist
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

" taglist 设置
map <F7> :TlistToggle<CR>
imap <F7> <ESC>:TlistToggle<CR>
let Tlist_Auto_Open=0 		" 设置为1，则启动vim后自动打开taglist
let Tlist_Sort_Type="name"	" taglist窗口中按名字排序，(可选：name/order)
let Tlist_Show_One_File=1  	" 只显示当前文件的 tags
let Tlist_Exit_OnlyWindow=1 " 若 taglist 窗口是最后一个窗口则退出vim
"let Tlist_WinWidth=20  	" 设置 taglist 窗口宽度
"let Tlist_WinHeight=20		" 设置 taglist 窗口高度
"let Tlist_Use_Right_Window=1 " 设置 taglist 窗口显示在右侧，默认显示在左侧

set ut=100

" NERDTree 设置
map <F6> :NERDTreeToggle<CR>
imap <F6> <ESC>:NERDTreeToggle<CR>
"map <leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1        " 显示隐藏文件
let NERDTreeShowLineNumbers=1   " 显示行号
let NERDTreeWinSize=25          " 设置窗口大小
"let NERDTreeWinSizeMax=30      " 设置窗口最大值
let NERDTreeIgnore=['\.pyc','\~$','\.swp'] " 忽略指定文件
let NERDTreeWinPos="left" " 窗口显示位置,可以为 left 或 right,默认为 left
let neocomplcache_enable_at_startup = 1 " 自启动

autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif  " 当只有一个窗口时自动退出vim,类似 Tlist_Exit_OnlyWindow











"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
"定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: ") 
        call append(line(".")+2, "\# mail: ") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: ") 
        call append(line(".")+2, "    > Mail: ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc