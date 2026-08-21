#import "template.typ": *

#set document(title: [Quadratic Equation])

#template(
  heading2-align: left,
  page-footer: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  = 求根公式(Quadratic formula)

  #set align(center)
  #theorem[
    对于一元二次方程
    $ a x^2 + b x + c = 0 quad (a != 0) $

    其两个根为
    $ x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2a) $

    其中 $Delta = b^2 - 4 a c$ 称为判别式(Discriminant)。

    当 $Delta > 0$ 时，有两个不等实根；\
    当 $Delta = 0$ 时，有两个相等实根；\
    当 $Delta < 0$ 时，有一对共轭复根。
  ]

  #set align(left)
  #proof[
    由原方程
    $ a x^2 + b x + c = 0 $

    因 $a != 0$，两边同除以 $a$，得
    $ x^2 + frac(b, a) x + frac(c, a) = 0 $

    配方：
    $ x^2 + frac(b, a) x + (frac(b, 2a))^2 = (frac(b, 2a))^2 - frac(c, a) $

    即
    $ (x + frac(b, 2a))^2 = frac(b^2 - 4 a c, 4a^2) $.

    两边开平方，得
    $ x + frac(b, 2a) = plus.minus frac(sqrt(b^2 - 4 a c), 2a) $

    因此
    $ x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2a) $

    证毕。
  ]

  == 例 1：两个不等实根

  #block[
    解方程：$2 x^2 - 5 x + 2 = 0$，
    这里 $a = 2$，$b = -5$，$c = 2$。

    判别式：
    $ Delta = b^2 - 4 a c = (-5)^2 - 4 dot 2 dot 2 = 25 - 16 = 9 > 0 $

    因此方程有两个不等实根。

    代入求根公式：
    $ x = frac(-(-5) plus.minus sqrt(9), 2 dot 2) = frac(5 plus.minus 3, 4) $

    所以：
    $ x_1 = frac(5 + 3, 4) = 2, quad x_2 = frac(5 - 3, 4) = frac(1, 2) $
  ]

  #block(fill: rgb("#f0f8f0"), inset: 8pt, radius: 4pt)[
    *验证：* 当 $x = 2$ 时，$2(2)^2 - 5(2) + 2 = 8 - 10 + 2 = 0$ ✓ \
    当 $x = frac(1, 2)$ 时，$2(frac(1, 2))^2 - 5(frac(1, 2)) + 2 = frac(1, 2) - frac(5, 2) + 2 = 0$ ✓
  ]

  == 例 2：两个相等实根（重根）

  #block[
    解方程：$x^2 - 6 x + 9 = 0$，这里 $a = 1$，$b = -6$，$c = 9$。

    判别式：
    $ Delta = b^2 - 4 a c = (-6)^2 - 4 dot 1 dot 9 = 36 - 36 = 0 $

    因此方程有两个相等实根（重根）。

    代入求根公式：
    $ x = frac(-(-6) plus.minus sqrt(0), 2 dot 1) = frac(6, 2) = 3 $

    所以：
    $ x_1 = x_2 = 3 $
  ]

  #block(fill: rgb("#f0f8f0"), inset: 8pt, radius: 4pt)[
    *验证：* $x^2 - 6 x + 9 = (x - 3)^2 = 0$，因此 $x = 3$ 是二重根 ✓
  ]

  == 例 3：一对共轭复根

  #block[
    解方程：$x^2 + x + 1 = 0$，这里 $a = 1$，$b = 1$，$c = 1$。

    判别式：
    $ Delta = b^2 - 4 a c = 1^2 - 4 dot 1 dot 1 = 1 - 4 = -3 < 0 $

    因此方程有一对共轭复根。

    代入求根公式：
    $ x = frac(-1 plus.minus sqrt(-3), 2 dot 1) = frac(-1 plus.minus i sqrt(3), 2) $

    所以：
    $ x_1 = frac(-1 + i sqrt(3), 2), quad x_2 = frac(-1 - i sqrt(3), 2) $
  ]

  #block(fill: rgb("#f0f8f0"), inset: 8pt, radius: 4pt)[
    *验证：* 由韦达定理，$x_1 + x_2 = -1$，$x_1 x_2 = 1$，满足方程 ✓
  ]
]
