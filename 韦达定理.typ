#set page(
  paper: "a4",
)
#set par(
  first-line-indent: (amount: 2em, all: true), // 首行缩进2个字符宽度
  spacing: 1em, // 段落间距
  leading: 1em, // 行间距
)
// #set text(
//   font: ("Noto Sans CJK SC", ),
// )
#set text(
  font: ("Noto Serif CJK SC", "DejaVu Sans"),
  size: 16pt,
)
// #set heading(numbering: "1.")

#show heading.where(level: 1): it => {
  set text(24pt, weight: "bold")
  align(center)[#it]
}

#show heading.where(level: 2): it => {
  set text(20pt, weight: "bold")
  align(center)[#it]
}


#set page(numbering: none)

#show heading.where(level: 1): it => {
  set text(24pt, weight: "bold")
  align(center)[#it]
}

#show heading.where(level: 2): it => {
  set text(20pt, weight: "bold")
  align(center)[#it]
}

#set math.equation(numbering: "(1)")
#set text(font: "Latin Modern Math")

#let definition(body) = block(
  fill: rgb("#e8f4f8"),
  stroke: rgb("#2c3e50") + .5pt,
  inset: (x: 12pt, y: 8pt),
  radius: 4pt,
)[
  #strong[定义] #body
]

#let important-block = block.with(
  fill: none,
  stroke: gray + .3pt,
  inset: 10pt,
  radius: 4pt,
)

#let example(body) = block(
  fill: rgb("#f8f9fa"),
  stroke: rgb("#6c757d") + .3pt,
  inset: (x: 12pt, y: 8pt),
  radius: 4pt,
)[
  #text(fill: rgb("#0d6efd"), weight: "bold")[示例] #body
]


= 韦达定理(Vieta's Formulas)

== 1. 定理描述

=== 1.1 一元二次方程形式(基础版)

对于一元二次方程 $ a x^2 + b x + c = 0 $(其中 $a != 0$)，设它的两个根为 $x_1$ 和 $x_2$，则：

$ x_1 + x_2 = - b / a $   
$ x_1 x_2 = c / a $       

特别地，当方程为首项系数为 1 的形式(即 $x^2 + p x + q = 0$)时：
$ x_1 + x_2 = -p $
$ x_1 x_2 = q $
\

例如：

$6 x^2 +5 x - 1 = 0$ 的两根之和为 $-5/6$，两根之积为 $-1/6$。
\
$x^2 + x + 1 = 0$的两根之和为 $-1$，两根之积为 $1$。

\
=== 1.2 证明
根据代数基本定理，二次方程 $ a x^2 + b x + c = 0 $ 的两个根为 $x_1$ 和 $x_2$，则：
$ a x^2 + b x + c = a (x - x_1)(x - x_2) $
展开右边：
$ a (x^2 - (x_1 + x_2) x + x_1 x_2) = a x^2 - a (x_1 + x_2) x + a x_1 x_2 $
比较等式两边同次幂的系数：
$ -a (x_1 + x_2) = b quad (a != 0) ==>  x_1 + x_2 = - b / a $
$ a x_1 x_2 = c quad (a != 0) ==>  x_1 x_2 = c / a $
\

=== 1.3 示例
例题1：已知方程 $2 x^2 + m x - 6 = 0$ 的一个根是 $3$，求另一个根和 $m$ 的值。

解：设另一个根为 $x_2$。

由韦达定理，两根之积为：
$ 3 dot x_2 = c / a = -6 / 2 = -3 $

所以：
$ x_2 = -1 $

又由两根之和：
$ 3 + (-1) = - b / a = - m / 2 $

即：
$ 2 = - m / 2 $

解得：
$ m = -4 $

答： 另一个根为 $-1$，$m = -4$。

\


例题2：已知方程 $x^2 - 3 x + 1 = 0$ 的两个根为 $x_1$、$x_2$，不求根，求下列各式的值：

(1)$x_1^2 + x_2^2$ (2)$1 / x_1 + 1 / x_2$

解：由韦达定理，得：
$ x_1 + x_2 = 3 $
$ x_1 x_2 = 1 $

(1)利用恒等式 $x_1^2 + x_2^2 = (x_1 + x_2)^2 - 2 x_1 x_2$，代入得：
$ x_1^2 + x_2^2 = 3^2 - 2 dot 1 = 9 - 2 = 7 $

(2)$ 1 / x_1 + 1 / x_2 = (x_1 + x_2) / (x_1 x_2) = 3 / 1 = 3 $

答：$(1) 7 quad (2) 3$。
\

#pagebreak()

=== 2.1 一般形式(高次方程推广)

对于一元 $n$ 次方程：$a_n x^n + a_(n-1) x^(n-1) + dots + a_1 x + a_0 = 0 quad (a_n != 0)$, 设它的 $n$ 个根为 $x_1, x_2, dots, x_n$(包含重根和复数根)，则韦达定理给出了所有初等对称多项式与系数的关系：

+ 所有根之和：
  $ x_1 + x_2 + dots + x_n = - a_(n-1) / a_n $

+ 所有两两乘积之和：
  $ sum_(1 <= i < j <= n) x_i x_j = a_(n-2) / a_n $

+ 所有三三乘积之和：
  $ sum_(1 <= i < j < k <= n) x_i x_j x_k = - a_(n-3) / a_n $

+ 依此类推，符号交替变化。

+ 所有根之积：
  $ x_1 x_2 dots x_n = (-1)^n a_0 / a_n $

== 2. 定理证明

+ 因为 $x_1, x_2, dots, x_n$ 是方程 $a_n x^n + dots + a_0 = 0$ 的 $n$ 个根，根据代数基本定理，多项式可以分解为：
  $ a_n x^n + a_(n-1) x^(n-1) + dots + a_0 = a_n (x - x_1)(x - x_2) dots (x - x_n) $

+ 展开右边的乘积。考虑 $(x - x_1)(x - x_2) dots (x - x_n)$ 的展开规律：
  - 要得到 $x^(n-1)$ 项，需要从 $n$ 个因式中选 $n-1$ 个取 $x$，剩下 1 个取 $-x_i$。因此该项系数为：
    $ -(x_1 + x_2 + dots + x_n) $
  - 要得到 $x^(n-2)$ 项，需要选 $n-2$ 个取 $x$，剩下 2 个取 $-x_i$ 和 $-x_j$。因此该项系数为：
    $ sum_(i < j) x_i x_j $
  - 常数项(即 $x^0$ 项)为：
    $ (-1)^n x_1 x_2 dots x_n $

+ 将展开式代回原恒等式，比较等式两边同次幂的系数：

  - 比较 $x^(n-1)$ 的系数：
    $ a_(n-1) = a_n [-(x_1 + dots + x_n)] $
    即 $ x_1 + dots + x_n = - a_(n-1) / a_n $

  - 比较 $x^(n-2)$ 的系数：
    $ a_(n-2) = a_n sum_(i<j) x_i x_j $
    即 $ sum_(i<j) x_i x_j = a_(n-2) / a_n $

  - ......
    $ a_0 = a_n [(-1)^n x_1 dots x_n] $
    即 $ x_1 dots x_n = (-1)^n a_0 / a_n $

