syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunctions gui=NONE cterm=bold  ctermfg=green

"Console
"======================================================================================================================="
"hi        Cursor         ctermfg=red              ctermbg=lightgreen        cterm=BOLD        "光标所在的字符
"hi        CursorColumn                            ctermbg=black             cterm=BOLD        "光标所在的屏幕列
"hi        CursorLine                              ctermbg=black             cterm=BOLD        "光标所在的屏幕行
"hi        Directory      ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "目录名
"hi        DiffAdd                                 ctermbg=lightgreen        cterm=BOLD        "diff: 增加的行
"hi        DiffChange                              ctermbg=lightcyan         cterm=BOLD        "diff: 改变的行
"hi        DiffDelete                              ctermbg=lightcyan         cterm=BOLD        "diff: 删除的行
"hi        DiffText       ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "diff: 改变行里的改动文本
"hi        ErrorMsg       ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "命令行上的错误信息
"hi        VertSplit      ctermfg=lightmagenta     ctermbg=lightblue         cterm=BOLD        "分离垂直分割窗口的列
"hi        Folded         ctermfg=lightgrey        ctermbg=lightgreen        cterm=BOLD        "用于关闭的折叠的行
"hi        IncSearch      ctermfg=yellow           ctermbg=lightblue         cterm=BOLD        "'incsearch' 高亮
"hi        LineNr         ctermfg=yellow           ctermbg=black             cterm=BOLD        "置位 number 选项时的行号
"hi        MatchParen     ctermfg=lightred         ctermbg=black             cterm=BOLD        "配对的括号
"hi        MatchParen     ctermfg=yellow           ctermbg=lightred          cterm=BOLD        "配对的括号
"hi        ModeMsg        ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "showmode 消息(INSERT)
"hi        MoreMsg        ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "|more-prompt|
"hi        NonText        ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "窗口尾部的'~'和 '@'
"hi        Normal         ctermfg=lightgrey         cterm=BOLD        "正常内容
"hi        Pmenu          ctermfg=lightgrey        ctermbg=lightblue         cterm=BOLD        "弹出菜单普通项目
"hi        PmenuSel       ctermfg=yellow           ctermbg=lightmagenta      cterm=BOLD        "弹出菜单选中项目
"hi        PmenuSbar      ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "弹出菜单滚动条。
"hi        PmenuThumb     ctermfg=black            ctermbg=lightgreen        cterm=BOLD        "弹出菜单滚动条的拇指
"hi        Question       ctermfg=yellow           ctermbg=black             cterm=BOLD        "提示和 yes/no 问题
hi         Search         term=standout 	   cterm=bold 		   ctermfg=7 ctermbg=1 "最近搜索模式的高亮
"hi        SpecialKey     ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "特殊键，字符和'listchars'
"hi        SpellBad       ctermfg=lightred         ctermbg=black             cterm=BOLD        "拼写���查器不能识别的单词
"hi        SpellCap       ctermfg=lightred         ctermbg=black             cterm=BOLD        "应该大写字母开头的单词
"hi        SpellLocal     ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "只在其它区域使用的单词
"hi        SpellRare      ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "很少使用的单词
"hi        StatusLine     ctermfg=yellow           ctermbg=lightblue         cterm=BOLD        "当前窗口的状态行
"hi        StatusLineNC   ctermfg=yellow           ctermbg=black             cterm=BOLD        "非当前窗口的状态行
"hi        TabLine        ctermfg=black            ctermbg=black             cterm=BOLD        "非活动标签页标签
"hi        TabLineFill    ctermfg=black            ctermbg=lightgrey         cterm=BOLD        "没有标签的地方
"hi        TabLineSel     ctermfg=yellow           ctermbg=lightblue         cterm=BOLD        "活动标签页标签
"hi        Title          ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        ":set all 等输出的标题
"hi        Visual         ctermfg=yellow           ctermbg=lightblue         cterm=BOLD        "可视模式的选择区
"hi        WarningMsg     ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "警告消息
"hi        WildMenu       ctermfg=lightgreen       ctermbg=lightblue         cterm=BOLD        "wildmenu补全的当前匹配
""======================================================================================================================="
""Console group-name
""======================================================================================================================="
hi        Comment        ctermfg=blue    	 cterm=BOLD        "任何注释
""-----------------------------------------------------------------------------------------------------------------------"
"hi        Constant       ctermfg=brown           cterm=BOLD        "任何常数
"hi        String         ctermfg=red		 cterm=BOLD        "一个字符串常数: "字符串"
"hi        Character      ctermfg=yellow	         ctermbg=black             cterm=BOLD        "一个字符常数: 'c'、'\n'
"hi        Number         ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "一个数字常数: 234、0xff
"hi        Float          ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "一个浮点常数: 2.3e10
"hi        Boolean        ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "一个布尔型常数: TRUE、false
""-----------------------------------------------------------------------------------------------------------------------"
hi        Identifier     ctermfg=lightcyan       cterm=BOLD        "任何变量名
""-----------------------------------------------------------------------------------------------------------------------"
hi        Statement      ctermfg=yellow          cterm=BOLD        "任何语句
hi        Conditional    ctermfg=yellow          cterm=BOLD        "if、then、else、endif、switch
hi        Repeat         ctermfg=yellow          cterm=BOLD        "for、do、while 等
hi        Label          ctermfg=yellow          cterm=BOLD        "case、default 等
hi        Operator       ctermfg=yellow          cterm=BOLD        ""sizeof"、"+"、"*" 等
hi        Keyword        ctermfg=yellow          cterm=BOLD        "任何其它关键字
hi        Exception      ctermfg=lightred        cterm=BOLD        "try、catch、throw
""-----------------------------------------------------------------------------------------------------------------------"
hi        PreProc        ctermfg=lightmagenta    cterm=BOLD        "通用预处理命令
hi        Include        ctermfg=red    	 cterm=BOLD        "预处理命令 #include
hi        Define         ctermfg=red             cterm=BOLD        "预处理命令 #define
hi        Macro          ctermfg=red             cterm=BOLD        "等同于 Define
hi        PreCondit      ctermfg=green           cterm=BOLD        "预处理命令 #if、#else、#endif
""-----------------------------------------------------------------------------------------------------------------------"
hi        Type           ctermfg=yellow          cterm=BOLD        "int、long、char 等
hi        StorageClass   ctermfg=yellow  	 cterm=BOLD        "static、register、volatile 等
hi        Structure      ctermfg=green      	 cterm=BOLD        "struct、union、enum 等
hi        Typedef        ctermfg=green       	 cterm=BOLD        "一个 typedef
""-----------------------------------------------------------------------------------------------------------------------"
"hi        Special        ctermfg=brown            ctermbg=black             cterm=BOLD        "任何特殊符号
"hi        SpecialChar    ctermfg=brown            ctermbg=black             cterm=BOLD        "常数中的特殊字符
"hi        Tag            ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "这里可以使用 CTRL-]
"hi        Delimiter      ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "需要注意的字符
"hi        SpecialComment ctermfg=lightred         ctermbg=black             cterm=BOLD        "注释里的特殊字符
"hi        Debug          ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "调试语句
""-----------------------------------------------------------------------------------------------------------------------"
"hi        Underlined     ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "需要突出的文本，HTML 链接
"hi        Ignore         ctermfg=darkgrey         ctermbg=black             cterm=NONE        "留空，被隐藏
"hi        Error          ctermfg=yellow           ctermbg=lightred          cterm=BOLD        "任何有错的构造
"hi        Todo           ctermfg=lightgrey        ctermbg=lightblue         cterm=BOLD        "任何需要特殊注意的部分
"======================================================================================================================="
