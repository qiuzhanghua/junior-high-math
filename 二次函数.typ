#import "template.typ": *

#set document(title: [Quadratic Function])

#template(
  heading2-align: center,
  first-line-indent: 2em,
  page-footer: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  = 二次函数(Quadratic Function)

  == 1. 定义

  #definition[
    一般地，形如 $ y = a x^2 + b x + c quad (a != 0) $ 的函数叫做 _二次函数_(quadratic function)。
    其中 $x$ 是自变量，$y$ 是因变量，$a$、$b$、$c$ 是常数。
  ]

  == 2. 图像与性质

  #important-block[
    *图像：* 二次函数 $ y = a x^2 + b x + c $ 的图像是一条 _抛物线_(parabola)。

    - $a > 0$：开口向上，函数有最小值；
    - $a < 0$：开口向下，函数有最大值；
    - $|a|$ 越大，开口越小；$|a|$ 越小，开口越大；
    - 对称轴：$ x = - frac(b, 2a) $；
    - 顶点坐标：$ (- frac(b, 2a), frac(4 a c - b^2, 4 a)) $。
  ]

  #important-block[
    *顶点式：* $ y = a (x - h)^2 + k $，顶点为 $(h, k)$，对称轴为 $x = h$。

    把一般式配方可得 $ h = - frac(b, 2a) $，$ k = frac(4 a c - b^2, 4 a) $。
  ]

  #important-block[
    *增减性：* 设对称轴为 $x = h$，

    - $a > 0$ 时：当 $x < h$ 时 $y$ 随 $x$ 增大而减小，当 $x > h$ 时 $y$ 随 $x$ 增大而增大；
    - $a < 0$ 时：当 $x < h$ 时 $y$ 随 $x$ 增大而增大，当 $x > h$ 时 $y$ 随 $x$ 增大而减小。
  ]

  == 3. 与 x 轴的交点

  令 $y = 0$，得 $ a x^2 + b x + c = 0 $，其判别式为 $Delta = b^2 - 4 a c$：

  - $Delta > 0$：抛物线与 $x$ 轴有两个交点；
  - $Delta = 0$：抛物线与 $x$ 轴有一个交点（顶点在 $x$ 轴上）；
  - $Delta < 0$：抛物线与 $x$ 轴没有交点。

  == 4. 平移规律

  $ y = a x^2 $ 的图像平移规律：

  - 向左平移 $m$ 个单位（$m > 0$）：$ y = a (x + m)^2 $，即"左加右减"（对 $x$ 操作）；
  - 向右平移 $m$ 个单位：$ y = a (x - m)^2 $；
  - 向上平移 $n$ 个单位：$ y = a x^2 + n $，即"上加下减"（对整体操作）；
  - 向下平移 $n$ 个单位：$ y = a x^2 - n $。

  == 5. 例题

  #example[
    *例 1：* 求二次函数 $ y = x^2 - 2x - 3 $ 的对称轴、顶点坐标以及与 $x$ 轴的交点。

    解：配方得 $ y = (x - 1)^2 - 4 $，
    所以对称轴为 $ x = 1 $，顶点为 $(1, -4)$。
    令 $y = 0$，得 $ x^2 - 2x - 3 = 0 $，即 $(x - 3)(x + 1) = 0$，
    所以抛物线与 $x$ 轴交于 $(3, 0)$ 和 $(-1, 0)$。
  ]

  #example[
    *例 2：* 已知二次函数 $ y = a x^2 $ 的图像经过点 $(2, 8)$，求 $a$ 的值。

    解：代入得 $ 8 = 4 a $，解得 $ a = 2 $。
  ]

  #example[
    *例 3：* 求二次函数 $ y = -x^2 + 2x + 3 $ 的最大值。

    解：配方得 $ y = -(x - 1)^2 + 4 $，
    因为 $a = -1 < 0$，开口向下，所以当 $x = 1$ 时取得最大值 $4$。
  ]
]
