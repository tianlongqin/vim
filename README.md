# 一、vimrc说明：
* 1.默认不开启用空格代替tab的选项。
* 2.默认tab为8个字符。如果想将tab替换成4个空格，在vimrc中添加 set ts=4 set expandtab 即可。
* 3.F12格式化当前文件。
* 4.F2打开和关闭tagslist，函数列表框。
* 5.F4自动生成tags，需要系统安装了ctags。F4生成的tags，可以对类或结构体的成员函数和变量进行自动补全。
* 6.ctrl+w 进行tagslist和输入框进行切换，只需要一个w键的点击。
# 二、配置vim
* 1.需要先安装vim才行。yum install vim 或者 apt install vim。
* 2.cp vimrc ～/.vimrc
* 3.cp -rf vim ~/.vim
* 4.检查ls /usr/bin/ctags ，如果没有，则yum install ctags 或apt install vim，也可以去ctags的官网下载，进行源码安装。


