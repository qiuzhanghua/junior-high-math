#set page(
  paper: "a4",
)
#set par(
  spacing: 1em,
  leading: 1em,
)

#set text(
  font: ("Noto Serif CJK SC", "Latin Modern Math"),
  size: 16pt,
)

#show heading.where(level: 1): it => {
  set text(24pt, weight: "bold")
  align(center)[#it]
}

#show heading.where(level: 2): it => {
  set text(20pt, weight: "bold")
  align(left)[#it]
}

#set page(numbering: none)
#set math.equation(numbering: "(1)")
#set page(numbering: "第 1 页")
#counter(page).update(1)

= 一元二次方程练习题

== 一、求根公式与判别式基础题

#align(left)[
  第 1 题:
  用求根公式解方程：$x^2 - 7x + 12 = 0$。
]
\
\
\

#align(left)[
  第 2 题:
  用求根公式解方程：$3x^2 - 5x - 2 = 0$。
]
\
\
\

#align(left)[
  第 3 题:
  用求根公式解方程：$9x^2 - 6x + 1 = 0$。
]
\
\
\

#align(left)[
  第 4 题:
  用求根公式解方程：$x^2 + 4x + 13 = 0$。
]
\
\
\

#align(left)[
  第 5 题:
  不解方程，判断 $2x^2 - 3x - 2 = 0$ 的根的情况。
]
\
\
\
#pagebreak()
== 二、判别式与参数综合题

#align(left)[
  第 6 题:
  已知方程 $x^2 - k x + 9 = 0$ 有两个相等实根，求 $k$ 的值。
]
\
\
\

#align(left)[
  第 7 题:
  已知方程 $x^2 - 4x + m = 0$ 有两个不等实根，求 $m$ 的取值范围。
]
\
\
\

#align(left)[
  第 8 题:
  已知方程 $2x^2 - k x + 3 = 0$ 有实根，求 $k$ 的取值范围。
]
\
\
\

#align(left)[
  第 9 题:
  若方程 $x^2 + (2m-1)x + m^2 = 0$ 有两个相等实根，求 $m$ 的值。
]
\
\
\

#align(left)[
  第 10 题:
  已知方程 $x^2 - (3k+2)x + 2k^2 = 0$ 有两个不等实根，求 $k$ 的取值范围。
]
\
\
\

== 三、韦达定理（不求根）

#align(left)[
  第 11 题:
  已知方程 $x^2 - 8x + 15 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1 + x_2$ 和 $x_1 x_2$ 的值。
]
\
\
\
#align(left)[
  第 12 题:
  已知方程 $3x^2 + 7x - 6 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1 + x_2$ 和 $x_1 x_2$ 的值。
]
\
\
\
#align(left)[
  第 13 题:
  已知方程 $x^2 - 6x + m = 0$ 的两根之和为 6，两根之积为 5，求 $m$ 的值。
]
\
\
\
#align(left)[
  第 14 题:
  已知方程 $x^2 - 5x + k = 0$ 的一根为 3，求另一根及 $k$ 的值。
]
\
\
\
#align(left)[
  第 15 题:
  若方程 $x^2 - p x + q = 0$ 的两根分别为 4 和 $-3$，求 $p$ 和 $q$ 的值。
]
\
\
#pagebreak()

== 四、韦达定理综合应用

#align(left)[
  第 16 题:
  已知方程 $x^2 - 6x + 7 = 0$ 的两根为 $x_1$、$x_2$，不求根，求：
  （1）$x_1^2 + x_2^2$  （2）$1/x_1 + 1/x_2$
]
\
\
\

#align(left)[
  第 17 题:
  已知方程 $x^2 + 4x - 3 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1^2 x_2 + x_1 x_2^2$ 的值。
]
\
\
\

#align(left)[
  第 18 题:
  已知方程 $x^2 - 8x + 10 = 0$ 的两根为 $x_1$、$x_2$，求 $(x_1 - x_2)^2$ 的值。
]
\
\
\


#align(left)[
  第 19 题:
  已知方程 $x^2 - 5x - 3 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1^3 + x_2^3$ 的值。
]
\
\
\


#align(left)[
  第 20 题:
  已知方程 $x^2 + 6x + 4 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1/x_2 + x_2/x_1$ 的值。
]
