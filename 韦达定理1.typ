#set page(
  paper: "a4",
)
#set par(
  // first-line-indent: (amount: 2em, all: true), // 首行缩进2个字符宽度
  spacing: 1em, // 段落间距
  leading: 1em, // 行间距
)

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
  align(left)[#it]
}


// 封面页不显示页码
#set page(numbering: none)

#set math.equation(numbering: "(1)")
#set text(font: "Latin Modern Math")

// #set page(numbering: "1")
#set page(numbering: "第 1 页")
#counter(page).update(1)  // 重置为 1

== 韦达定理（不求根）
\

#align(left)[
  第 1 题: 
  已知方程 $x^2 - 7 x + 12 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1 + x_2$ 和 $x_1 x_2$ 的值。
]
\

#align(left)[
  第 2 题: 
  已知方程 $2 x^2 + 5 x - 3 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1 + x_2$ 和 $x_1 x_2$ 的值。
]
\

#align(left)[
  第 3 题:
  已知方程 $x^2 + m x - 6 = 0$ 的一个根是 $2$，求另一个根和 $m$ 的值。
]
\

#align(left)[
  第 4 题: 
  已知方程 $3 x^2 - k x + 2 = 0$ 的一个根是 $1$，求另一个根和 $k$ 的值。
]
\
\


#align(left)[
  第 5 题:
  已知方程 $x^2 - 4 x + 1 = 0$ 的两根为 $x_1$、$x_2$，不求根，求下列各式的值： \
  （1）$x_1^2 + x_2^2 quad $ （2）$1 / x_1 + 1 / x_2$
]
\
\

#align(left)[
  第 6 题:
  已知方程 $x^2 + 3 x - 2 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1^2 x_2 + x_1 x_2^2$ 的值。
]
\
\
\

#align(left)[
  第 7 题:
  已知方程 $x^2 - 6 x + 4 = 0$ 的两根为 $x_1$、$x_2$，求 $(x_1 - x_2)^2$ 的值。
]
\
\
\

#align(left)[
  第 8 题:
  已知方程 $x^2 - 5 x + 3 = 0$ 的两根为 $x_1$、$x_2$，求作一个以 $x_1 + 1$ 和 $x_2 + 1$ 为根的一元二次方程。
]
\
\
\

#align(left)[
  第 9 题:
  已知方程 $x^2 - 3 x - 2 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1^3 + x_2^3$ 的值。
]
\
\
\

#align(left)[
  第 10 题: 
  已知方程 $x^2 + 5 x + 3 = 0$ 的两根为 $x_1$、$x_2$，求 $x_1 / x_2 + x_2 / x_1$ 的值。
]