#import "template.typ": *

#set document(title: [Square Root])

#template(
  heading2-align: center,
  first-line-indent: 2em,
  page-footer: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  == 平方根与算术平方根
  \

  == square root and arithmetic square root
  \

  #definition[
    一般地，如果一个数 $x$ 的平方等于 $a$，即 $x^2 = a$，那么这个数 $x$ 就叫做 $a$ 的 _平方根_（或二次方根）(square root)。

    求一个数 $a$ 的平方根的运算，叫做 *开平方(extracting square root)*，$a$ 叫做 *被开方数(radicand)*。
  ]

  #definition[
    一般地，如果一个 _正数_ $x$ 的平方等于 $a$，即 $x^2 = a$，那么这个 _正数_ $x$ 就叫做 $a$ 的 _算术平方根_（arithmetic square root）。

    $a$ 的算术平方根记为 $sqrt(a)$，其中 $a >= 0$，$sqrt(a) >= 0$（双重非负性）。
  ]

  #important-block[
    *核心区别与联系：*

    - 符号 $sqrt(a)$ 专指 $a$ 的 *算术平方根*，其结果具有 *非负性*。
    - 正数 $a$ 的 *平方根* 有两个，分别为 $+ sqrt(a)$ 和 $- sqrt(a)$，它们互为相反数，记作 $ plus.minus sqrt(a) $
    - 负数 *没有* 平方根（在实数范围内）。
    - 特别地，$0$ 的平方根和算术平方根都是 $0$。
  ]

  #pagebreak()

  #example[
    例如，$sqrt(5)$ 表示 5 的 *算术平方根*，即求一个正数，使得它的平方等于 5。

    因此，$sqrt(5)$ 满足：
    - $(sqrt(5))^2 = 5$
    - $sqrt(5) approx 2.236$（精确到千分位）
    - $sqrt(5) >= 0$

    而 5 的 *平方根* 则有两个：
    $ plus.minus sqrt(5) approx plus.minus 2.236 $
    即 $sqrt(5) approx 2.236$ 和 $-sqrt(5) approx -2.236$。
  ]
]
