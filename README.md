
### 1、安装 ctags  
ctags最先是用来生成C代码的tags文件，后来扩展成可以生成各类语言的tags。例如：Python的ptags等。  
ctags插件用来查找函数、变量、宏、类、结构体等的定义。  
`sudo apt-get install ctags`  

### 2、安装 Taglist  
taglist是源码浏览器，作用类似与 sourceinsight 的 Symbol 窗口(sourceinsight将当前文件中包含的头文件、宏、变量、函数、类等显示在 Symbol 串口中)。

Taglist 依赖与 ctags 插件，因此需确保 ctags 以安装。  

#### 1）、 安装方法一  
下载地址：<https://www.vim.org/scripts/script.php?script_id=273>  

解压后，将 plugin/taglist.vim 复制到 ~/.vim/plugin 目录下； 将 doc/taglist.txt 复制到 ~/.vim/doc 目录下。  
（若 ~/.vim 等目录不存在，则先手动创建，也可以直接拷贝到 **/usr/share/vim/vim80/doc 及  /usr/share/vim/vim80/plugin** 目录下）  

![taglist-plugin](./images/taglist.png)  

#### 2）、安装方法二  
通过vim插件管理器 **vim-addons** 进行安装。  
```
# 安装 vim-addons  
sudo apt-get install vim-addon-manager
sudo apt-get install vim-scripts

# 安装 taglist 插件  
vim-addons install taglist
```  
vim-addons 常见用法：  
```
# 安装插件
vim-addons install [plugin-name]  

# 查看已安装的插件状态  
vim-addons status  

# 删除插件  
vim-addons remove [plugin-name]  
```
#### 3）、taglist 配置  
```
# 设置 Taglist 窗口快捷键为 F7. 
map <F7> :TlistToggle<CR> # 设置普通模式下的快捷键 
imap <F7> <ESC>:TlistToggle<CR> # 设置插入模式下的快捷键
let Tlist_Auto_Open=1 			# 启动vim后自动打开taglist
let Tlist_Sort_Type="name"		# taglist窗口中按名字排序，(可选：name/order)
let Tlist_Show_One_File=1  		# 只显示当前文件的 tags
let Tlist_Exit_OnlyWindow=1  	# 若 taglist 窗口是最后一个窗口则退出vim 
#let Tlist_WinWidth=20  		# 设置 taglist 窗口宽度
#let Tlist_WinHeight=20		# 设置 taglist 窗口高度
#let Tlist_Use_Right_Window=1	# 设置 taglist 窗口显示在右侧，默认显示在左侧

set ut=100
```
参考：<http://vim-taglist.sourceforge.net/manual.html#'Tlist_Sort_Type'> 或 在vim中输入 `:help taglist.txt`
(注意：vimrc 中使用 `"` 进行注释)  

### 3、NERDTree  
该插件可以显示树形目录结构。类似与 Sourceinsight 右侧的文件列表窗口。  

下载地址：<https://www.vim.org/scripts/script.php?script_id=1658> 或 <https://github.com/scrooloose/nerdtree>  

解压后，将**所有文件**拷贝到 ~/.vim 目录下。  
(同样也可以直接拷贝到 **/usr/share/vim/vim80** 目录下)  

注意：若只拷贝 plugin 文件及 doc 文件，则启动时会报如下问题：  
![NERDTree_error](./images/NERDTree_error.png)  

NERD_tree 配置：  
```

```

### OmniCppComplete
自动补全插件。  



















