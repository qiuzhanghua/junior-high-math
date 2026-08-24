#import "template.typ": *

#set document(title: [Linear Function])

#template(
  heading2-align: center,
  first-line-indent: 2em,
  page-footer: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  = 一次函数(Linear Function)

  == 1. 定义

  === 1.1 一次函数

  #definition[
    一般地，形如 $ y = k x + b quad (k != 0) $ 的函数叫做 _一次函数_(linear function)。
    其中 $x$ 是自变量，$y$ 是因变量，$k$、$b$ 是常数。
  ]

  === 1.2 正比例函数

  #definition[
    当 $b = 0$ 时，$ y = k x quad (k != 0) $，叫做 _正比例函数_(proportional function)。
    正比例函数是一次函数的特例，它的图像经过原点。
  ]

  == 2. 图像与性质

  #important-block[
    *图像：* 一次函数 $y = k x + b$ 的图像是一条 _直线_，其形状由 $k$ 和 $b$ 决定：

    - $k > 0$ 时，直线从左到右上升，$y$ 随 $x$ 增大而增大；
    - $k < 0$ 时，直线从左到右下降，$y$ 随 $x$ 增大而减小；
    - $|k|$ 越大，直线越陡；
    - 与 $y$ 轴交点：$(0, b)$（令 $x = 0$）；
    - 与 $x$ 轴交点：$(- frac(b, k), 0)$（令 $y = 0$）。
  ]

  #important-block[
    *图像所在象限：*

    - $k > 0, b > 0$：过第一、二、三象限；
    - $k > 0, b < 0$：过第一、三、四象限；
    - $k < 0, b > 0$：过第一、二、四象限；
    - $k < 0, b < 0$：过第二、三、四象限；
    - $b = 0$：图像经过原点。
  ]

  #important-block[
    *两条直线的关系：*

    - 若 $k_1 = k_2$ 且 $b_1 != b_2$，则两直线 _平行_；
    - 若 $k_1 != k_2$，则两直线相交，交点坐标由方程组 $ cases(y = k_1 x + b_1, y = k_2 x + b_2) $ 解得。
  ]

  == 3. 求解析式（待定系数法）

  设所求一次函数为 $ y = k x + b $，把图像上两个已知点的坐标代入，得到关于 $k$、$b$ 的方程组，解出 $k$、$b$ 即得解析式。

  == 4. 例题

  #example[
    *例 1：* 已知一次函数的图像经过点 $(1, 3)$ 和 $(-1, -1)$，求它的解析式。

    解：设 $ y = k x + b $，代入两点得
    $ cases(k + b = 3, -k + b = -1) $
    解得 $k = 2$，$b = 1$。所以解析式为 $ y = 2x + 1 $。
  ]

  #example[
    *例 2：* 已知一次函数 $ y = (m - 2)x + 3 $，且 $y$ 随 $x$ 增大而减小，求 $m$ 的取值范围。

    解：由题意 $k = m - 2 < 0$，解得 $ m < 2 $。
  ]

  #example[
    *例 3：* 求直线 $ y = 2x - 4 $ 与两坐标轴围成的三角形面积。

    解：令 $y = 0$，得 $x = 2$；令 $x = 0$，得 $y = -4$。
    所以三角形面积为 $ S = frac(1, 2) dot 2 dot 4 = 4 $。
  ]
]
