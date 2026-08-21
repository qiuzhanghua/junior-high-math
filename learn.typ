#set text(
  font: ("Noto Serif CJK SC", "DejaVu Sans"),
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
)

// 在正文中显示标题
#title()

// 以下是正文内容
数学确实充满了奇妙的逻辑和规律。

// #place(
//   top+center,
//   rect(fill: blue),
//   float: true
// )

对于一元二次方程 $ a x^2 + b x + c = 0 $(其中 $a != 0$)，设它的两个根为 $x_1$ 和 $x_2$，则：

$ x_1 + x_2 = - b / a $   
$ x_1 x_2 = c / a $       

特别地，当方程为首项系数为 1 的形式(即 $x^2 + p x + q = 0$)时：
$ x_1 + x_2 = -p $
$ x_1 x_2 = q $


#pagebreak()
== 例题

$ x^77 + 10 x -5 = 0 $
求该方程所有根的77次方的和。

已知方程
$ x^77 + 10 x - 5 = 0 $

设其所有根为 $x_1, x_2, dots, x_77$。对每个根，有
$ x_i^77 + 10 x_i - 5 = 0 $
所以
$ x_i^77 = -10 x_i + 5 $

因此所有根的 77 次方和为
$ S = sum_(i=1)^77 x_i^77
  = sum_(i=1)^77 (-10 x_i + 5)
  = -10 sum_(i=1)^77 x_i + 385 $

由韦达定理，$x^76$ 项系数为 0，故
$ sum_(i=1)^77 x_i = 0 $

所以
$ S = -10 dot 0 + 385 = 385 $
