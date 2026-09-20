#set text(
  font: ("Noto Serif CJK SC", "DejaVu Sans"),
  size: 12pt,
)

#set math.equation(numbering: "(1)")

#set document(title: [
  数学很有趣
])


#set page(
  header: align(right + horizon, {
    context document.title // 直接引用标题内容
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
$
  S = sum_(i=1)^77 x_i^77
  = sum_(i=1)^77 (-10 x_i + 5)
  = -10 sum_(i=1)^77 x_i + 385
$

由韦达定理，$x^76$ 项系数为 0，故
$ sum_(i=1)^77 x_i = 0 $

所以
$ S = -10 dot 0 + 385 = 385 $

#v(1em)

#pagebreak()

== Nabla ($nabla$算子)
$ nabla f = sum_(i=1)^n frac(dif f, dif x_i) bold(e)_i $

=== 数学包效果

#import "@preview/diverential:0.3.0": *

$ dvp(f, x) $        // 偏导 ∂f/∂x
$ dvp(f, x, y) $     // 混合偏导

#import "@preview/diverential:0.3.0": *

// 梯度 (Gradient)
$ nabla f = (dvp(f, x), dvp(f, y), dvp(f, z)) $

// 散度 (Divergence)
$ nabla dot bold(u) = dvp(u_x, x) + dvp(u_y, y) + dvp(u_z, z) $

// 旋度 (Curl)
$
  nabla times bold(u) = vec(
    dvp(u_z, y) - dvp(u_y, z),
    dvp(u_x, z) - dvp(u_z, x),
    dvp(u_y, x) - dvp(u_x, y),
  )
$

=== 物理包效果


#import "@preview/physica:0.9.8": *

$ div bold(u) = vec(pdv(, x), pdv(, y), pdv(, z)) dot vec(u_x, u_y, u_z) $

#import "@preview/physica:0.9.8": *

$
  div bold(u) = mat(delim: "(", pdv(, x), pdv(, y), pdv(, z)) dot mat(
    delim: "(",
    u_x;
    u_y;
    u_z,
  )
$

#import "@preview/physica:0.9.8": *

$
  curl bold(u) = mat(
    delim: "|",
    bold(i), bold(j), bold(k);
    pdv(, x), pdv(, y), pdv(, z);
    u_x, u_y, u_z,
  ) = (pdv(u_z, y) - pdv(u_y, z)) bold(i) + (pdv(u_x, z) - pdv(u_z, x)) bold(j) + (pdv(u_y, x) - pdv(u_x, y)) bold(k)
$
