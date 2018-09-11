# 一、vimrc说明：
* 1.默认不开启用空格代替tab的选项。
* 2.默认tab为8个字符。如果想将tab替换成4个空格，在vimrc中添加 set ts=4 set expandtab 即可。
* 3.F12格式化当前文件。
* 4.F2打开和关闭tagbar，函数列表框。
* 5.F4自动生成tags，需要系统安装了ctags。F4生成的tags，可以对类或结构体的成员函数和变量进行自动补全。
* 6.ctrl+w 进行tagbar和输入框进行切换，只需要一个w键的点击。
# 二、配置vim
* 1.需要先安装vim才行。yum install vim 或者 apt install vim。
* 2.chmod +x run.sh直接运行，不需要root权限
* 3.检查ls /usr/bin/ctags ，如果没有，则yum install ctags 或apt install ctags，也可以去ctags的官网下载，进行源码安装。
# 三、vim的一些小技巧
* 1.gg=G,格式化整个文件。从这套命令可以看出，gg是来到文件开头，=号为格式化，大写的G是来到文件末尾。以此类推，也可以使用=号单独对齐一行或者多行。
* 2.gd，这是个神奇的命令，当在看代码的时候，往往需要知道局部变量的定义位置，去了解变量的类型。那么光标指向局部变量，之后点击gd，就会来到局部变量的定义处。全局变量不行。命令很好记住，个人猜测是“goto define”的缩写。
* 3.中括号的使用，双击中括号的左半部会跳到当前函数的头部大括号部分。双击中括号的右半部分，会跳到下一个函数的头部大括号部分。
# 四、添加内核和应用tags
* 1.cd /usr/include，运行ctags -R ./*，会在/usr/include 下面生成tags文件。
* 2.cd 内核源码目录，如果要在根目录使用ctags生成tags，那么tags会很大，在我们的源文件中使用函数跳转和补全就会很卡。一般在include/linux/目录下生成tags。
* 3.vi ~/.vimrc 查找set tags=tags;，在其下一行添加set tags+=/usr/include/tags。添加内核的tags和应用tags相同。
* 4.注意----------------tags会根据set tags=tags;后面添加的tags先后顺序进行函数补全和查找。
