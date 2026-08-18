#set text(
  font: ("Noto Serif CJK SC", "Latin Modern Math", "DejaVu Sans"),
  size: 16pt,
)

#set math.equation(numbering: "(1)")

#set document(title: [
  数学很有趣
])


#set page(
  header: align(right + horizon, {
    context document.title  // 直接引用标题内容
  }),
  columns: 2
)

// 在正文中显示标题
#title()

// 以下是正文内容
数学确实充满了奇妙的逻辑和规律。

#place(
  top+center,
  rect(fill: blue),
  float: true
)

对于一元二次方程 $ a x^2 + b x + c = 0 $(其中 $a != 0$)，设它的两个根为 $x_1$ 和 $x_2$，则：

$ x_1 + x_2 = - b / a $   
$ x_1 x_2 = c / a $       

特别地，当方程为首项系数为 1 的形式(即 $x^2 + p x + q = 0$)时：
$ x_1 + x_2 = -p $
$ x_1 x_2 = q $

#lorem(80)

#par(justify: false)[
  *abstract* \
  #lorem(60)
]


#par(justify: false)[
  *正文* \
  #lorem(200)
]
