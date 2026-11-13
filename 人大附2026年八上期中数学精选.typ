// 人大附2026年八上期中数学精选：角平分线多结论、四边形全等、新定义"关联点"
// 与同目录其他文档一致：页面、字体、公式编号都由 template.typ 提供，
// 文档内不要再写 #set text / #set page / #set math.equation。
#import "template.typ": *
#import "@preview/cetz:0.5.2"

#set document(title: [人大附2026年八上期中数学精选])

#template(
  heading2-align: left,
  first-line-indent: 2em,
  page-footer: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  = 人大附2026年八上期中数学精选

  == 一、角平分线与多个结论

  #problem-box[
    *20．* 如图，在 $R t triangle A B C$ 中，$angle C B A = 90 degree$，
    $angle C A B$ 的角平分线 $A P$ 和 $angle A C B$ 的邻补角的平分线 $C F$ 相交于点 $D$，
    $A D$ 交 $C B$ 于点 $P$，$C F$ 交 $A B$ 的延长线于点 $F$。过点 $D$ 作 $D E perp C F$，
    交 $C B$ 的延长线于点 $G$，交 $A B$ 的延长线于点 $E$，连接 $C E$ 并延长交 $F G$ 于点 $H$。
    给出下列四个结论：

    #block[
      ① $angle C D A = 45 degree$；\
      ② $D E = D C$；\
      ③ $A F - C G = C A$；\
      ④ $F G = 2 G H + C E$。
    ]

    其中所有正确的结论为 #blank(4)。
  ]


  #align(center)[
    #cetz.canvas(length: 0.62cm, {
      import cetz.draw: *
      // 以 B 为原点，取 AB = 1.5、BC = 1.5√3（∠A = 60°）
      let A = (-1.5, 0)
      let B = (0, 0)
      let C = (0, 2.598)
      let P = (0, 0.866)
      let D = (2.049, 2.049)
      let E = (1.5, 0)
      let F = (9.696, 0)
      let G = (0, -5.59)
      let H = (3.552, -3.554)

      // 直角三角形的两条直角边与斜边
      line(A, B, stroke: (paint: rgb("#1f4e79"), thickness: 1.1pt))
      line(B, C, stroke: (paint: rgb("#1f4e79"), thickness: 1.1pt))
      line(C, A, stroke: (paint: rgb("#7f1d1d"), thickness: 1.1pt))
      // 两条延长线
      line(A, F, stroke: (paint: rgb("#b35c00"), thickness: .7pt))
      line(C, G, stroke: (paint: rgb("#b35c00"), thickness: .7pt))
      // 角平分线 AD（含 P）
      line(A, D, stroke: (paint: rgb("#1f4e79"), thickness: .9pt))
      // 外角平分线 CF（含 D）
      line(C, F, stroke: (paint: rgb("#1f4e79"), thickness: .9pt))
      // DE ⊥ CF，延伸到 G
      line(D, G, stroke: (paint: rgb("#2e7d32"), thickness: .9pt))
      // FG（含 H）
      line(F, G, stroke: (paint: rgb("#1f4e79"), thickness: .9pt))
      // CE 延长到 H
      line(C, H, stroke: (paint: rgb("#1f4e79"), thickness: .7pt, dash: "dashed"))
      // ∠CBA 的直角标记（B 处朝向 A 与 C 之间，即左上方）
      line((-0.26, 0), (-0.26, 0.26), (0, 0.26), stroke: .55pt)

      content(A, $A$, anchor: "north")
      content((-0.06, -0.3), $B$, anchor: "north")
      content((0, 2.75), $C$, anchor: "south")
      content((2.15, 2.2), $D$, anchor: "west")
      content((1.5, -0.32), $E$, anchor: "north")
      content((9.85, 0), $F$, anchor: "west")
      content((0, -5.95), $G$, anchor: "east")
      content((3.7, -3.6), $H$, anchor: "west")
      content((0.28, 0.98), $P$, anchor: "west")
    })
  ]

  *答：* ①②③④ 全部正确。

  #idea-box[
    *从哪里入手*：四个结论都在问角之间的等量关系，而解题的关键是把 $angle C A B$
    的一半设成一个字母。

    设 $angle D A B = angle D A C = alpha$。因为 $A P$ 平分 $angle C A B$，所以
    $angle C A B = 2 alpha$；又 $angle C B A = 90 degree$，于是

    $ angle A C B = 90 degree - 2 alpha. $

    $C F$ 平分 $angle A C B$ 的邻补角（该邻补角为 $180 degree - angle A C B = 90 degree + 2 alpha$），所以

    $ angle B C F = 1/2 (90 degree + 2 alpha) = 45 degree + alpha, $

    $ angle A C D = angle A C B + angle B C F, $

    代入上面两个式子，即 $angle A C D = 135 degree - alpha$。

    记住这两个式子：$angle B C F = 45 degree + alpha$、$angle A C D = 135 degree - alpha$，
    四个结论都是它们的推论。
  ]

  === ① $angle C D A = 45 degree$

  在 $triangle A C D$ 中，

  $ angle C D A = 180 degree - angle C A D - angle A C D, $

  把 $angle C A D = alpha$ 与 $angle A C D = 135 degree - alpha$ 代入，

  化简即

  $ angle C D A = 45 degree. $

  注意结果与 $alpha$ 无关，这正是本题各结论都很"整齐"的原因。① 正确。

  === ② $D E = D C$

  由 ① 得 $angle C D A = 45 degree$。因为 $C$、$D$、$F$ 共线且 $D E perp C F$，所以 $angle C D E = 90 degree$，从而

  $ angle A D E = angle C D E - angle C D A = 90 degree - 45 degree = 45 degree = angle C D A. $

  又 $E$ 在 $A B$ 的延长线上，$A$、$B$、$E$ 共线，故 $angle D A E = angle D A B = alpha$；
  而 $angle D A C = alpha$，所以 $angle D A E = angle D A C$。

  于是 $triangle A C D$ 与 $triangle A E D$ 中，$angle D A C = angle D A E$、
  $angle A C D = angle A E D = 135 degree - alpha$（后一式由三角形内角和：$180 degree - 45 degree - alpha$），
  且 $A D$ 是公共边，由 $A A S$ 得两个三角形全等，所以

  $ C D = D E. $

  ② 正确。

  === ③ $A F - C G = C A$

  关键是把 $A C$ 换成 $A E$，再用一个全等把 $C G$ 换成 $E F$。

  *第一步：$R t triangle E F D approx.eq R t triangle C G D$，从而 $E F = C G$。*

  因为 $D$ 在 $C F$ 上、$D E perp C F$，所以 $angle E D F = 90 degree$；同理 $D G perp C F$ 给出
  $angle C D G = 90 degree$。

  $F$、$D$、$C$ 依次在一条直线上，$E$、$B$ 都在 $F$ 的同一侧，故 $angle E F D = angle C F B$。
  在 $R t triangle C B F$ 中 $angle C B F = 90 degree$、$angle B C F = 45 degree + alpha$，所以

  $ angle E F D = angle C F B = 45 degree - alpha. $

  $G$ 在 $C B$ 的延长线上，$angle D C G = angle B C F = 45 degree + alpha$，在 $R t triangle C D G$ 中

  $ angle C G D = 90 degree - (45 degree + alpha) = 45 degree - alpha = angle E F D. $

  又由 ② 得 $E D = C D$。于是这两个直角三角形满足：一条直角边相等（$E D = C D$）、
  一个锐角相等（$angle E F D = angle C G D$，另一直角角相等），由 $A A S$ 得

  $ R t triangle E F D approx.eq R t triangle C G D, $

  所以对应边

  $ E F = C G $ <eq:ef>

  这里顺带得到 $D F = D G$，④ 中要用。

  *第二步：$A E = A C$。* 由 ②，$triangle C D E$ 中 $C D = D E$ 且 $angle C D E = 90 degree$，
  故它是等腰直角三角形，$angle D C E = 45 degree$。$D$ 在 $C F$ 上，所以

  $ angle A C E = angle A C D - angle D C E = (135 degree - alpha) - 45 degree, $

  即 $angle A C E = 90 degree - alpha$。

  $E$ 在 $A B$ 的延长线上，$angle C A E = angle C A B = 2 alpha$，于是在 $triangle A C E$ 中

  $ angle A E C = 180 degree - 2 alpha - (90 degree - alpha) = 90 degree - alpha = angle A C E, $

  两个角相等，故

  $ A E = A C. $ <eq:ae>

  *第三步：收尾。* $A$、$B$、$E$、$F$ 依次在一条直线上，故 $A F = A E + E F$。代入 @eq:ef：

  $ A F - C G = A E + E F - C G = A E = A C. $

  ③ 正确。

  === ④ $F G = 2 G H + C E$

  先把 $F G$ 拆成 $G H + H F$，再证 $H F = C H = C E + E H$，最后证 $E H = G H$。

  *第一步：$angle H C F = 45 degree$。* 由 ②，$triangle C D E$ 是等腰直角三角形，
  $angle D C E = angle D E C = 45 degree$。$D$ 在 $C F$ 上，$C$、$E$、$H$ 共线，故

  $ angle H C F = angle D C E = 45 degree. $

  *第二步：$angle D G F = 45 degree$。* 由 ③ 第一步的全等得 $D F = D G$；又 $D G perp C F$ 而
  $D$、$F$ 都在 $C F$ 上，故 $angle G D F = 90 degree$。于是 $triangle D G F$ 是等腰直角三角形，

  $ angle D G F = angle D F G = 45 degree. $

  （这一步就是全题的关键：$D$ 到 $F$、$G$ 等距，且 $angle G D F$ 是直角。）

  *第三步：$angle C F G = 45 degree$。* $G$ 在 $C B$ 的延长线上，$G C$ 与 $G B$ 是同一条射线，
  由第一步前的计算 $angle C G D = 45 degree - alpha$。又 $G F$ 落在 $G C$ 与 $G D$ 之间，故

  $ angle C G F = angle C G D + angle D G F = (45 degree - alpha) + 45 degree, $

  即 $angle C G F = 90 degree - alpha$。

  在 $triangle C F G$ 中，$angle F C G = angle B C F = 45 degree + alpha$，所以

  $ angle C F G = 180 degree - (45 degree + alpha) - (90 degree - alpha) = 45 degree. $

  *第四步：$H F = C H$。* 在 $triangle C H F$ 中，$angle H C F = 45 degree$（第一步）且
  $angle H F C = angle C F G = 45 degree$（第三步），故

  $ angle C H F = 90 degree, quad C H = H F. $

  *第五步：$E H = G H$。* $E$ 在 $C H$ 上、$G$ 在 $F G$ 上，故 $angle G H E = 90 degree$；
  又 $E$ 在 $D G$ 上，$angle E G H = angle D G F = 45 degree$，所以 $triangle G H E$ 也是等腰直角三角形，

  $ E H = G H. $

  *收尾。* 把 $H F$ 换成 $C H = C E + E H$：

  $ F G = G H + H F = G H + C H = G H + (C E + E H), $

  再把 $E H$ 换成 $G H$，即得

  $ F G = C E + G H + G H = 2 G H + C E. $

  ④ 正确。

  == 二、四边形的全等与求线段

  #problem-box[
    *26．* 在四边形 $A B D C$ 中，点 $F$ 在边 $A B$ 上，$D F = C D$，连接 $C F$，
    $D E perp C F$ 于 $E$，连接 $A D$ 交 $C F$ 于点 $M$。

    + 求证：$F E = C E$；
    + 若 $angle B = 90 degree$，$angle A F D + angle A C D = 180 degree$，求证：$angle D A B = angle D A C$；
    + 在（2）的条件下，若 $A C = 6 B F$，$M E = 1$，求 $M F$ 的长。
  ]

  #align(center)[
    #cetz.canvas(length: 0.85cm, {
      import cetz.draw: *
      // 按 (3) 的全部条件取 AB = 5、BF = 1、∠DAB = 30°：
      // 此时 BD = 5tan30°，AC = 6，且 M 满足 MC : MF = 3 : 2，与 ME = 1 相容。
      let A = (5, 0)
      let B = (0, 0)
      let D = (0, 2.887)
      let C = (2, 5.196)
      let F = (1, 0)
      let E = (1.5, 2.598)
      let M = (1.4, 2.078)

      // 四边形 ABDC
      line(A, B, D, C, close: true, stroke: (paint: rgb("#1f4e79"), thickness: 1.1pt))
      // DF 与 DC
      line(D, F, stroke: (paint: rgb("#7f1d1d"), thickness: .9pt))
      line(D, C, stroke: (paint: rgb("#7f1d1d"), thickness: .9pt))
      // CF 与 DE
      line(C, F, stroke: (paint: rgb("#b35c00"), thickness: .9pt))
      line(D, E, stroke: (paint: rgb("#2e7d32"), thickness: .9pt))
      // AD（含 M）
      line(A, D, stroke: (paint: rgb("#1f4e79"), thickness: .8pt, dash: "dashed"))
      // ∠ABD 的直角标记（在三角形内侧，紧贴 B）
      line((0.3, 0), (0.3, 0.3), (0, 0.3), stroke: .6pt)
      // DE ⊥ CF 的直角标记
      line((1.66, 2.46), (1.76, 2.3), (1.58, 2.38), stroke: .5pt)

      content(A, $A$, anchor: "north")
      content((-0.28, -0.22), $B$, anchor: "north-east")
      content((-0.3, 3.05), $D$, anchor: "east")
      content((1.95, 5.45), $C$, anchor: "south")
      content((0.9, -0.3), $F$, anchor: "north")
      content((1.95, 2.95), $E$, anchor: "south-west")
      content((0.95, 1.62), $M$, anchor: "east")
    })
  ]

  === （1）$F E = C E$

  已知 $D F = C D$，所以 $triangle D F C$ 是以 $C F$ 为底的等腰三角形。
  又 $D E perp C F$，等腰三角形底边上的高也是底边上的中线，故 $E$ 是 $C F$ 的中点，

  $ F E = C E. $

  也可以直接由 $R t triangle D F E$ 与 $R t triangle D C E$ 中
  $D F = D C$、$D E$ 公共，用 $H L$ 判定全等得到。

  === （2）$angle D A B = angle D A C$

  把 $D$ 到 $A B$、$A C$ 的距离都作出来，再用两次全等。

  因为 $angle B = 90 degree$、$F$ 在边 $A B$ 上，所以 $D B perp A B$，即 $D$ 到 $A B$ 的距离就是 $D B$。
  过 $D$ 作 $D N perp A C$ 于 $N$，则 $D$ 到 $A C$ 的距离是 $D N$。

  *第一步：$R t triangle D B F approx.eq R t triangle D N C$。*

  $A$、$F$、$B$ 依次在一条直线上，故 $angle D F B = 180 degree - angle A F D$；
  又已知 $angle A F D + angle A C D = 180 degree$，两式相减得

  $ angle D F B = angle A C D = angle D C N. $

  于是 $R t triangle D B F$ 与 $R t triangle D N C$ 中：$angle D B F = angle D N C = 90 degree$、
  $angle D F B = angle D C N$、斜边 $D F = D C$，由 $A A S$ 得

  $ R t triangle D B F approx.eq R t triangle D N C, $

  所以

  $ D B = D N, quad B F = N C. $ <eq:hleq>

  *第二步：$R t triangle A D B approx.eq R t triangle A D N$。* 这两个直角三角形中，
  $angle A B D = angle A N D = 90 degree$、斜边 $A D$ 公共、直角边 $D B = D N$，由 $H L$ 得

  $ R t triangle A D B approx.eq R t triangle A D N, $

  所以 $angle D A B = angle D A N = angle D A C$，且

  $ A B = A N. $ <eq:an>

  即 $A D$ 平分 $angle B A C$。

  顺带记住 @eq:an 与 @eq:hleq：因为 $A$、$N$、$C$ 依次在一条直线上，

  $ A C = A N + N C = A B + B F, $ <eq:acab>

  第（3）问要用。

  === （3）求 $M F$

  设 $B F = a$，由 @eq:acab 与已知 $A C = 6 B F = 6 a$ 得

  $ A B = A C - B F = 6 a - a = 5 a, $

  $ A F = A B - B F = 5 a - a = 4 a. $

  由（2），$A D$ 平分 $angle B A C$；而 $F$ 在边 $A B$ 上，故 $A F$ 与 $A B$ 是同一条射线，
  $A M$（$M$ 在 $A D$ 上）平分 $angle F A C$。在 $triangle A F C$ 中，$M$ 在边 $F C$ 上，
  用面积比求 $M F : M C$。

  设 $M$ 到 $A F$、$A C$ 的距离分别为 $d_1$、$d_2$。因为 $M$ 在 $angle F A C$ 的平分线上，所以
  $d_1 = d_2$。由 $S_(triangle A F M) = 1/2 A F dot d_1$ 与 $S_(triangle A M C) = 1/2 A C dot d_2$ 相除得

  $ (S_(triangle A F M)) / (S_(triangle A M C)) = (A F) / (A C) = (4 a) / (6 a) = 2/3. $

  而这两个三角形同高（顶点 $A$ 到直线 $F C$ 的距离），面积比等于底之比，所以

  $ (M F) / (M C) = 2/3, quad "即" M C = 3/2 M F. $ <eq:mc>

  又由（1），$E$ 是 $C F$ 的中点，故 $C E = 1/2 C F = 1/2 (M F + M C)$。
  由 $M$ 在 $F$、$C$ 之间、$E$ 是中点知 $M E = M C - C E$，代入 @eq:mc：

  $ M E = M C - 1/2 (M F + M C) = 1/2 M C - 1/2 M F, $

  即 $M E = 1/2 dot 3/2 M F - 1/2 M F = 1/4 M F$。已知 $M E = 1$，所以

  $ M F = 4. $

  *答：* $M F = 4$。

  == 三、新定义："关联点"

  #problem-box[
    *28．* 对于平面直角坐标系 $x O y$ 中的线段 $A B$ 及点 $P$，给出如下定义：
    如果点 $P$ 满足 $P A = P B$，那么点 $P$ 就是线段 $A B$ 的"*关联点*"。其中，

    #block[
      · 当 $0 degree < angle A P B < 60 degree$ 时，称 $P$ 为线段 $A B$ 的"*远关联点*"；\
      · 当 $60 degree < angle A P B <= 180 degree$ 时，称 $P$ 为线段 $A B$ 的"*近关联点*"；\
      · 当 $angle A P B = 60 degree$ 时，称 $P$ 为线段 $A B$ 的"*强关联点*"。
    ]

    + 如图 1，当点 $A$、$B$ 坐标分别为 $(-2, 0)$ 和 $(2, 0)$ 时，在
      $P_1 (-1, 3)$、$P_2 (0, 2)$、$P_3 (0, -1)$、$P_4 (0, 4)$ 中，
      线段 $A B$ 的"近关联点"有 #blank(3)。
    + 如图 2，点 $A$ 的坐标为 $(0, 3)$，点 $B$ 在 $x$ 轴正半轴上，
      $angle O A B = 60 degree$。如果点 $P$ 为线段 $A B$ 的"远关联点"，
      那么点 $P$ 的纵坐标 $t$ 的取值范围是 #blank(3)。
  ]

  #align(center)[
    #grid(
      columns: (1fr, 1fr),
      gutter: 10pt,
      align(center)[
        #cetz.canvas(length: 0.48cm, {
          import cetz.draw: *
          // 坐标轴
          line((-4.6, 0), (4.6, 0), stroke: .6pt, mark: (end: ">"))
          line((0, -4.6), (0, 5.4), stroke: .6pt, mark: (end: ">"))
          content((4.9, 0.28), $x$)
          content((-0.34, 5.62), $y$)
          content((-0.38, -0.42), $O$)
          // 各点坐标题面已给出，图上不标刻度数字，免得与 A、B、P 的标签相撞
          line((-0.14, 0), (0.14, 0), stroke: .5pt)
          line((0, -0.14), (0, 0.14), stroke: .5pt)
          // ∠APB = 60° 的临界点：(0, ±2√3)，与 A、B 构成等边三角形的顶点
          let h = 3.464
          line((0, h), (-2, 0), (0, -h), (2, 0), close: true, stroke: (
            paint: rgb("#1f4e79"),
            thickness: .9pt,
            dash: "dashed",
          ))
          circle((-2, 0), radius: .08, fill: black)
          circle((2, 0), radius: .08, fill: black)
          content((-2.35, -0.35), $A$, anchor: "east")
          content((2.35, -0.35), $B$, anchor: "west")
          circle((-1, 3), radius: .08, fill: black)
          content((-1.42, 3.2), $P_1$, anchor: "east")
          circle((0, 2), radius: .08, fill: black)
          content((0.32, 2), $P_2$, anchor: "west")
          circle((0, -1), radius: .08, fill: black)
          content((0.35, -0.85), $P_3$, anchor: "west")
          circle((0, 4), radius: .08, fill: black)
          content((0.32, 4), $P_4$, anchor: "west")
        })
        #v(-0.4em)
        图 1
      ],
      align(center)[
        #cetz.canvas(length: 0.46cm, {
          import cetz.draw: *
          line((-1.6, 0), (6.8, 0), stroke: .6pt, mark: (end: ">"))
          line((0, -4), (0, 7.4), stroke: .6pt, mark: (end: ">"))
          content((7.35, 0.28), $x$)
          content((-0.34, 7.75), $y$)
          content((-0.38, -0.42), $O$)
          for k in (2, 4) {
            line((k, -0.1), (k, 0.1), stroke: .5pt)
            content((k, -0.55), text(size: 7pt, str(k)))
          }
          for k in (-3, 6) {
            line((-0.1, k), (0.1, k), stroke: .5pt)
            content((-0.58, k), text(size: 7pt, str(k)))
          }
          // A(0,3)、B(3√3,0)：∠OAB = 60°，AB = 6
          let A = (0, 3)
          let B = (5.196, 0)
          line(A, B, stroke: (paint: rgb("#7f1d1d"), thickness: 1.1pt))
          // ∠APB = 60° 的临界点：(3√3/2, -3) 与 (3√3/2, 6)
          line((0, 3), (2.598, -3), (5.196, 0), (2.598, 6), close: true, stroke: (
            paint: rgb("#1f4e79"),
            thickness: .9pt,
            dash: "dashed",
          ))
          circle(A, radius: .08, fill: black)
          circle(B, radius: .08, fill: black)
          content((-0.32, 3), $A$, anchor: "east")
          content((5.2, -0.55), $B$, anchor: "north")
          content((2.25, 0.72), $6$, anchor: "west")
        })
        #v(-0.4em)
        图 2
      ],
    )
  ]

  === （1）哪些点是"近关联点"

  "关联点"要求 $P A = P B$，即 $P$ 在线段 $A B$ 的垂直平分线上。
  由 $A (-2, 0)$、$B (2, 0)$ 知垂直平分线就是 $y$ 轴，所以先排除
  $P_1 (-1, 3)$——它不在 $y$ 轴上，不是关联点。

  对 $y$ 轴上的点 $P (0, t)$，$triangle A P B$ 是等腰三角形，$A B = 4$。
  先找"强关联点"：若 $angle A P B = 60 degree$，由 $P A = P B$ 知 $triangle A P B$ 是等边三角形，于是

  $ P A = P B = A B = 4. $

  设 $K$ 是 $A B$ 的中点（即原点），则 $P K perp A B$、$A K = 2$，由勾股定理

  $ P K = sqrt(4^2 - 2^2) = sqrt(12) = 2 sqrt(3) approx 3.46. $

  即 $|t| = 2 sqrt(3)$ 时 $angle A P B = 60 degree$。$P$ 越靠近 $A B$（$|t|$ 越小），
  $angle A P B$ 越大；$P$ 落在线段 $A B$ 上时 $angle A P B = 180 degree$。所以

  $ "近关联点" quad <==> quad |t| < 2 sqrt(3). $

  逐个检验：

  #block[
    · $P_2 (0, 2)$：$|t| = 2 < 2 sqrt(3)$，是近关联点；\
    · $P_3 (0, -1)$：$|t| = 1 < 2 sqrt(3)$，是近关联点；\
    · $P_4 (0, 4)$：$|t| = 4 > 2 sqrt(3)$，此时 $angle A P B < 60 degree$，它是远关联点，不合要求。
  ]

  *答：* $P_2$、$P_3$。

  === （2）纵坐标 $t$ 的取值范围

  由 $A (0, 3)$ 与 $angle O A B = 60 degree$，在 $R t triangle O A B$ 中 $angle A O B = 90 degree$，
  故 $angle O B A = 30 degree$，于是 $O B = sqrt(3) dot O A = 3 sqrt(3)$，$B (3 sqrt(3), 0)$，且

  $ A B = 2 dot O A = 6. $

  $P$ 是"远关联点"需 $P A = P B$ 且 $angle A P B < 60 degree$。
  先找临界位置，也就是 $angle A P B = 60 degree$ 的"强关联点"：此时 $P A = P B$ 且顶角为 $60 degree$，
  故 $triangle A P B$ 是等边三角形，

  $ P A = P B = A B = 6. $

  设 $P (x, y)$，由 $P A = 6$、$P B = 6$ 列式：

  $ x^2 + (y - 3)^2 = 36, quad (x - 3 sqrt(3))^2 + y^2 = 36. $

  两式相减并化简，得

  $ 6 sqrt(3) x - 6 y - 18 = 0 quad ==> quad y = sqrt(3) x - 3. $

  代回 $x^2 + (y - 3)^2 = 36$：

  $ x^2 + (sqrt(3) x - 6)^2 = 36 quad ==> quad 4 x^2 - 12 sqrt(3) x = 0, $

  所以 $x = 0$ 或 $x = 3 sqrt(3)$，对应两个临界点

  $ (0, -3) quad "与" quad (3 sqrt(3), 6). $

  也就是说，两个临界点分别在 $A$ 的正下方 6 处、$B$ 的正上方 6 处，正是图 2 中虚线菱形的下、上顶点。

  这两个点把垂直平分线分成三段。$P$ 离 $A B$ 越远（即 $P$ 在菱形外部），$angle A P B$ 越小，
  所以"远关联点"的纵坐标满足

  $ t < -3 quad "或" quad t > 6. $

  *答：* $t < -3$ 或 $t > 6$。

  两问里 $2 sqrt(3)$ 与 $3 sqrt(3)$ 的不同，只因线段 $A B$ 的长度不同（$4$ 与 $6$），方法完全一致。

]
