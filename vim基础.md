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
































