## vim  
### 1、vim相关目录及文件  
`/etc/vim/vimrc` 整个系统的 vim 配置文件  
`/usr/share/vim` 
`~/.vimrc ~/.vim/` 

### 2、vim 安装  
ubuntu默认安装的是vim-tiny。需要先安装：  
`sudo apt-get install vim`  

安装 vim-script：  
`sudo apt-get install vim-scripts`
vim-script 是 vim 的一些基本插件，包括语法高亮的支持、锁紧等。

（ctrl -：可以缩小terminal的大小及分辨率；ctrl + ：放大terminal分辨率）

### 3、vim 中文文档  
1)、下载文档包  
<http://vimcdoc.sourceforge.net/>  

2)、安装文档  
执行解压后的文档目录中的 vimdoc.sh。 若执行该脚本时，使用-i选项的话，缺省同时安装 vimcdoc.vim 全局插件。如果没 vimcdoc.vim 插件（该插件设置缺省编码为 utf-8，使得每次使用:help 命令时都优先使用中文的帮助文档）则优先使用英文文档。

## vim 模式  
### 1、Normal Mode(即:普通模式)  
vim启动后的默认模式。在其它模式下可通过 `ESC` 按键进入该模式。  

该模式只能查看内容，无法进行编辑修改。  

### 2、Insert Mode(即:插入模式)  
进入方式：在 Normal mode 下按 `i 或 a 或 o` 等进入。  
  
该模式下可以编辑内容。  

### 3、Visual Mode  
进入方式：在 Normal mode 下通过 `v` 进入。  
  
该模式下，可以选定行、多列。    

### 4、Command-Line Mode  
进入方式：在 Normal Mode 下通过 `:` 进入。  
  
该模式下可以输入各种命令。  

### 5、Ex Mode  
进入方式：在 Normal Mode 下通过 `Q` 进入。  
  
多行的 Command-Line 模式。  

### 6、Select Mode  
进入方式：在 Normal Mode 下通过 `gh` 进入。  
  
常用于 gvim 中，用鼠标拖选区域的时候，就进入了 Select Mode。和 Visual Mode 不同的是，在这个模式下，选择完了高亮区域后，敲任何按键就直接输入并替换选择的文本了。  


## vim 映射  
vim配置文件中可用的映射指令有：`map、nmap、imap、vmap、vnoremap、nunmap、nmapclear`。  
map前的n、v、nore、un等表示下列含义：
	- nore—— 表示非递归
	- n ——表示在普通模式下生效
	- v ——表示在可视模式下生效
	- i ——表示在插入模式下生效
	- c——表示在命令行模式下生效
	- un——后面跟按键组合，表示删除这个映射 
	- clear——表示清除相关模式下的所有映射


## shiftwidth、tabstop、softtabstop  
shiftwidth和tabstop不一样时，程序缩进错乱，此时softtabstop就会起作用。一旦设置了softtabstop的值时，按下tab键，插入的是空格和tab制表符的混合，具体如何混合取决于设定的softtabstop。  

如果设定softtabstop=8, 那么按下tab键，插入的就是正常的一个制表符;如果设定 softtabstop=16,那么插入的就是两个制表符；如果softtabstop=12,那么插入的就是一个制表符加上4个空格；如果softtabstop=4，插入的就是4个空格，此时再按下一次tab，这次的四个空格就会和上次的四个空格组合起来变成一个制表符。即：**softtabstop是“逢8空格进1制表符”,前提是tabstop=8**。  































