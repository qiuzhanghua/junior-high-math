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

  #remark[
    原卷 ③ 处的印刷文字被手写答案涂改覆盖，无法辨读；原卷右侧手写批注给出的是
    $A F - C G = C A$，这里即按此录入。② 处同理，按残存的“$... = D C$”与图形反推为 $D E = D C$。
    两个结论的正确性下面都单独验证过，与图形无矛盾。
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
      line((-0.32, 0), (-0.32, 0.32), (0, 0.32), stroke: .6pt)

      content(A, $A$, anchor: "north")
      content((-0.06, -0.3), $B$, anchor: "north")
      content((0, 2.75), $C$, anchor: "south")
      content((2.15, 2.2), $D$, anchor: "west")
      content((1.5, -0.32), $E$, anchor: "north")
      content((9.85, 0), $F$, anchor: "west")
      content((0, -5.95), $G$, anchor: "east")
      content((3.7, -3.6), $H$, anchor: "west")
      content((-0.62, 0.62), $P$, anchor: "east")
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

  这条的关键是先在 $C E$ 上找出一段等于 $A C$ 的线段。由 ①、② 已得 $angle C D A = 45 degree$ 且
  $D C = D E$，又 $D E perp C F$，所以 $triangle C D E$ 是等腰直角三角形，

  $ angle D C E = 45 degree, quad C E = sqrt(2) C D. $

  $D$ 在 $C F$ 上，故 $angle A C E = angle A C D - angle D C E$。代入 $angle A C D = 135 degree - alpha$：

  $ angle A C E = (135 degree - alpha) - 45 degree = 90 degree - alpha. $

  $E$ 在 $A B$ 的延长线上，$angle C A E = angle C A B = 2 alpha$，于是在 $triangle A C E$ 中

  $ angle A E C = 180 degree - 2 alpha - (90 degree - alpha) = 90 degree - alpha = angle A C E, $

  所以

  $ A E = A C. $ <eq:ae>

  这一步把 $A C$ 换成了 $A E$。因为 $A$、$E$、$F$ 依次在一条直线上（$E$ 在 $A B$ 的延长线上，
  $F$ 在 $A B$ 的延长线上更远处），有 $A F = A E + E F$，于是

  $ A F - C G = A E + E F - C G = A C + (E F - C G), $

  下面只需证 $E F = C G$。

  先看 $E F$。$angle A E C = 90 degree - alpha$ 且 $E$ 在 $A B$ 上，故
  $angle C E F = 180 degree - (90 degree - alpha) = 90 degree + alpha$；又 $F$ 在 $A B$ 的延长线上，
  $angle C B F = 90 degree$、$angle B C F = 45 degree + alpha$，得

  $ angle C F E = angle C F B = 45 degree - alpha. $

  于是 $triangle C E F$ 中 $angle E C F = 180 degree - (90 degree + alpha) - (45 degree - alpha) = 45 degree$，
  由正弦定理

  $ E F = (C E sin 45 degree) / (sin (45 degree - alpha)) = (sqrt(2) C D dot (sqrt(2))/2) / (sin (45 degree - alpha)) = (C D) / (sin (45 degree - alpha)). $

  再看 $C G$。$G$ 在 $C B$ 的延长线上，故 $C$、$B$、$G$ 共线；
  $angle D C G = angle B C F = 45 degree + alpha$，且 $angle C D G = 90 degree$，
  在 $R t triangle C D G$ 中

  $ C G = (C D) / (cos angle D C G) = (C D) / (cos (45 degree + alpha)). $

  而 $cos (45 degree + alpha) = sin (90 degree - (45 degree + alpha)) = sin (45 degree - alpha)$，两个分母相同，所以

  $ E F = C G. $

  代回：

  $ A F - C G = A C + (E F - C G) = A C. $

  ③ 正确。

  === ④ $F G = 2 G H + C E$

  这条要绕一点：先把 $F G$ 拆成 $G H + H F$，再用 $H F = C H = C E + E H$ 换成 $G H$ 与 $C E$。

  *第一步：$angle H C F = 45 degree$。* 由 ②，$triangle C D E$ 中 $C D = D E$ 且
  $angle C D E = 90 degree$，故它是等腰直角三角形，

  $ angle D C E = angle D E C = 45 degree. $

  $D$ 在 $C F$ 上、$C$、$E$、$H$ 共线，所以 $angle H C F = angle D C E = 45 degree$。

  *第二步：$B$、$G$、$D$、$F$ 四点共圆。* 先看 $angle C B D$。点 $D$ 在 $angle C A B$ 的平分线上，
  故 $D$ 到 $A B$、$A C$ 距离相等；$D$ 又在 $angle A C B$ 的外角平分线上，故 $D$ 到 $A C$、$B C$ 距离相等。
  于是 $D$ 到 $A B$、$B C$ 距离相等，即 $B D$ 是 $angle A B C$ 的平分线或外角平分线。
  由图 $D$ 在 $angle A B C$ 的外部，故 $B D$ 平分 $angle A B C$ 的外角：

  $ angle C B D = 45 degree. $

  在 $triangle B C D$ 中，$angle B C D = angle B C F = 45 degree + alpha$，于是

  $ angle B D C = 180 degree - 45 degree - (45 degree + alpha) = 90 degree - alpha. $

  因为 $C$、$D$、$F$ 共线且 $D$ 在 $C$、$F$ 之间，$angle B D F = 180 degree - angle B D C = 90 degree + alpha$。
  又 $F$ 在 $A B$ 的延长线上（$B$ 的外侧），而 $D$ 在 $B C$ 的外侧，故 $angle A B D = 90 degree + 45 degree = 135 degree$，

  $ angle F B D = 180 degree - 135 degree = 45 degree. $

  在 $triangle B D F$ 中，$angle B F D = 180 degree - 45 degree - (90 degree + alpha) = 45 degree - alpha$。

  再看 $triangle B D G$。由 $angle C D G = 90 degree$（$D G perp C F$）得

  $ angle B D G = angle C D G - angle B D C = 90 degree - (90 degree - alpha) = alpha, $

  又 $G$ 在 $C B$ 的反向延长线上，$angle G B C$ 是平角，故

  $ angle G B D = 180 degree - angle C B D = 135 degree, $

  于是

  $ angle B G D = 180 degree - 135 degree - alpha = 45 degree - alpha. $

  于是 $angle B G D = angle B F D$。这两个角都对线段 $B D$，说明
  $B$、$G$、$D$、$F$ 四点共圆。

  *第三步：$angle D G F = 45 degree$。* 在同一圆中，$angle D G F$ 与 $angle D B F$ 都对弧 $D F$，所以

  $ angle D G F = angle D B F = 45 degree. $

  *第四步：收尾。* $G$ 处 $G C$、$G B$ 是同一条射线，故

  $ angle C G F = angle C G D + angle D G F. $

  代入 $angle C G D = angle B G D = 45 degree - alpha$（$G C$ 与 $G B$ 同向，第二步已得）与
  $angle D G F = 45 degree$，得

  $ angle C G F = 90 degree - alpha. $

  在 $triangle C F G$ 中，

  $ angle C F G = 180 degree - (45 degree + alpha) - (90 degree - alpha) = 45 degree. $

  于是 $triangle C H F$ 中 $angle H C F = angle H F C = 45 degree$，故

  $ angle C H F = 90 degree, quad C H = H F. $

  由 $E$ 在 $C H$ 上、$G$ 在 $F G$ 上，$triangle G H E$ 中 $angle G H E = 90 degree$；
  又 $E$ 在 $D G$ 上，$angle E G H = angle D G F = 45 degree$，故 $triangle G H E$ 也是等腰直角三角形，

  $ G H = H E. $

  把这些代回：

  $ F G = G H + H F = G H + C H = G H + (C E + E H), $

  再用 $E H = G H$，得

  $ F G = G H + C E + G H = 2 G H + C E. $

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
      content((-0.12, 2.86), $D$, anchor: "east")
      content((1.95, 5.45), $C$, anchor: "south")
      content((0.9, -0.3), $F$, anchor: "north")
      content((1.78, 2.62), $E$, anchor: "west")
      content((1.05, 1.75), $M$, anchor: "east")
    })
  ]

  === （1）$F E = C E$

  已知 $D F = C D$，所以 $triangle D F C$ 是以 $C F$ 为底的等腰三角形。
  又 $D E perp C F$，等腰三角形底边上的高也是底边上的中线，故 $E$ 是 $C F$ 的中点，

  $ F E = C E. $

  也可以直接由 $R t triangle D F E$ 与 $R t triangle D C E$ 中
  $D F = D C$、$D E$ 公共，用 $H L$ 判定全等得到。

  === （2）$angle D A B = angle D A C$

  由 $angle A F D + angle A C D = 180 degree$ 可知四边形 $A F D C$ 中一组对角互补，
  所以 $A$、$F$、$D$、$C$ 四点共圆。

  又 $F$ 在边 $A B$ 上，射线 $A B$ 与射线 $A F$ 是同一条射线，故 $angle D A B = angle D A F$。
  在同圆中，$angle D A F$ 与 $angle D C F$ 都对弧 $D F$，所以

  $ angle D A B = angle D A F = angle D C F. $

  同理，$angle D A C$ 与 $angle D F C$ 都对弧 $D C$，所以

  $ angle D A C = angle D F C. $

  另一方面，$triangle D F C$ 中 $D F = C D$，故 $angle D C F = angle D F C$。于是

  $ angle D A B = angle D A C, $

  即 $A D$ 平分 $angle B A C$。

  === （3）求 $M F$

  由（2），$A D$ 平分 $angle B A C$；而 $F$ 在边 $A B$ 上，$M$ 在 $A D$ 上，
  所以 $A M$ 平分 $angle F A C$。在 $triangle A F C$ 中，$M$ 在边 $F C$ 上，
  由三角形内角平分线定理

  $ (M F) / (M C) = (A F) / (A C). $ <eq:mfr>

  下面把 $A F : A C$ 求出来。设 $B F = a$、$A B = c$，$angle D A B = theta$，
  则 $angle D A C = theta$，$angle B A C = 2 theta$，$angle A C B = 90 degree - 2 theta$
  （$angle B = 90 degree$）。取 $B$ 为原点、$A$ 在 $x$ 轴上，则

  $ A = (c, 0), quad B = (0, 0), quad F = (a, 0), quad D = (0, c tan theta), $

  其中 $D$ 的纵坐标为 $c tan theta$ 是因为 $angle D A B$ 在直角三角形 $A B D$ 中
  恰是 $B D$ 与 $A B$ 之比。又 $A C = 6 a$、$angle B A C = 2 theta$，且 $C$ 与 $D$ 在 $A B$ 同侧，故

  $ C = (c - 6 a cos 2 theta, thin 6 a sin 2 theta). $

  由 $D F = C D$ 得 $D F^2 = C D^2$，即

  $ a^2 + c^2 tan^2 theta = (c - 6 a cos 2 theta)^2 + (6 a sin 2 theta - c tan theta)^2. $

  为把量纲消掉，记 $k = a \/ c = (B F) / (A B)$。两边同除 $c^2$，注意左边是
  $k^2 + tan^2 theta$，与右边的 $tan^2 theta$ 恰好消去，于是

  $ k^2 = (1 - 6 k cos 2 theta)^2 + (6 k sin 2 theta - tan theta)^2. $

  展开右侧（中间两个乘积项合并，且 $(cos 2 theta)^2 + (sin 2 theta)^2 = 1$），得

  $ k^2 = 1 - 12 k cos 2 theta + 36 k^2 - 12 k sin 2 theta tan theta, $

  即

  $ k^2 = 1 - 12 k (cos 2 theta + sin 2 theta tan theta) + 36 k^2. $

  而

  $ cos 2 theta + sin 2 theta tan theta = cos 2 theta + 2 sin^2 theta = 1, $

  于是

  $ k^2 = 1 - 12 k + 36 k^2, quad "即" 35 k^2 - 12 k + 1 = 0. $

  解得 $k = 1/5$ 或 $k = 1/7$。若 $k = 1/7$，则 $A F = A B - B F = 6 a = A C$，
  由角平分线定理得 $M F = M C$，即 $M$ 是 $C F$ 的中点；但（1）已证 $E$ 也是 $C F$ 的中点，
  于是 $M E = 0$，与 $M E = 1$ 矛盾。故

  $ k = 1/5, quad A B = 5 a = 5 B F, quad A F = 4 a, quad A C = 6 a. $

  代回 @eq:mfr：

  $ (M F) / (M C) = (4 a) / (6 a) = 2/3, quad "即" M C = 3/2 M F. $

  又由（1），$E$ 是 $C F$ 的中点，且 $M$ 在 $F$、$C$ 之间，所以

  $ M E = M C - C E = 3/2 M F - 1/2 (M C + M F). $

  代入 $M C = 3/2 M F$：

  $ M E = 3/2 M F - 1/2 (5/2 M F) = 3/2 M F - 5/4 M F = 1/4 M F. $

  已知 $M E = 1$，故

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
          for k in (-3, 1, 3) {
            line((k, -0.1), (k, 0.1), stroke: .5pt)
            content((k, -0.55), text(size: 7pt, str(k)))
          }
          for k in (-3, 3, 4) {
            line((-0.1, k), (0.1, k), stroke: .5pt)
            content((-0.52, k), text(size: 7pt, str(k)))
          }
          // ∠APB = 60° 的临界点：(0, ±2√3)，与 A、B 构成等边三角形的顶点
          let h = 3.464
          line((0, h), (-2, 0), (0, -h), (2, 0), close: true, stroke: (
            paint: rgb("#1f4e79"),
            thickness: .9pt,
            dash: "dashed",
          ))
          circle((-2, 0), radius: .08, fill: black)
          circle((2, 0), radius: .08, fill: black)
          content((-2.05, -0.75), $A$, anchor: "north")
          content((2.05, -0.75), $B$, anchor: "north")
          circle((-1, 3), radius: .08, fill: black)
          content((-1.42, 3.2), $P_1$, anchor: "east")
          circle((0, 2), radius: .08, fill: black)
          content((0.32, 2), $P_2$, anchor: "west")
          circle((0, -1), radius: .08, fill: black)
          content((0.32, -1), $P_3$, anchor: "west")
          circle((0, 4), radius: .08, fill: black)
          content((0.32, 4), $P_4$, anchor: "west")
        })
        #v(-0.4em)
        [图 1]
      ],
      align(center)[
        #cetz.canvas(length: 0.46cm, {
          import cetz.draw: *
          line((-1.6, 0), (6.8, 0), stroke: .6pt, mark: (end: ">"))
          line((0, -4), (0, 7.4), stroke: .6pt, mark: (end: ">"))
          content((7.35, 0.28), $x$)
          content((-0.34, 7.75), $y$)
          content((-0.38, -0.42), $O$)
          for k in (2, 4, 6) {
            line((k, -0.1), (k, 0.1), stroke: .5pt)
            content((k, -0.55), text(size: 7pt, str(k)))
          }
          for k in (-3, 3, 6) {
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
          content((1.75, 1.05), $6$, anchor: "east")
        })
        #v(-0.4em)
        [图 2]
      ],
    )
  ]

  === （1）哪些点是"近关联点"

  "关联点"要求 $P A = P B$，即 $P$ 在线段 $A B$ 的垂直平分线上。
  由 $A (-2, 0)$、$B (2, 0)$ 知垂直平分线就是 $y$ 轴，所以先排除
  $P_1 (-1, 3)$——它不在 $y$ 轴上，不是关联点。

  对 $y$ 轴上的点 $P (0, t)$，$triangle A P B$ 是等腰三角形，底边 $A B = 4$、底边上的高为 $|t|$，
  故 $tan (angle A P B)/2 = 2/(|t|)$。"近关联点"要求 $angle A P B > 60 degree$，即

  $ 2/(|t|) > tan 30 degree = (sqrt(3))/3 quad <==> quad |t| < 2 sqrt(3) approx 3.46. $

  逐个检验：

  #block[
    · $P_2 (0, 2)$：$|t| = 2 < 2 sqrt(3)$，是近关联点；\
    · $P_3 (0, -1)$：$|t| = 1 < 2 sqrt(3)$，是近关联点；\
    · $P_4 (0, 4)$：$|t| = 4 > 2 sqrt(3)$，此时 $angle A P B < 60 degree$，它是远关联点，不合要求。
  ]

  *答：* $P_2$、$P_3$。

  === （2）纵坐标 $t$ 的取值范围

  由 $A (0, 3)$ 与 $angle O A B = 60 degree$ 得 $O B = 3 sqrt(3)$，故 $B (3 sqrt(3), 0)$，
  且 $A B = sqrt((3 sqrt(3))^2 + 3^2) = 6$。$P$ 是"远关联点"需 $P A = P B$ 且 $angle A P B < 60 degree$：
  设 $A B$ 的中点为 $K$、$P$ 到直线 $A B$ 的距离为 $h$，则 $P$ 在过 $K$ 且垂直 $A B$ 的直线上，
  且 $tan (angle A P B)/2 = 3/h$。要求 $(angle A P B)/2 < 30 degree$，即

  $ 3/h < (sqrt(3))/3 quad <==> quad h > 3 sqrt(3). $

  $A B$ 的中点 $K = (3 sqrt(3)/2, 3/2)$，沿 $A B$ 方向的单位向量是 $(sqrt(3)/2, -1/2)$，
  故垂直 $A B$ 的单位向量可取 $(1/2, sqrt(3)/2)$，于是
  $P = K + s (1/2, sqrt(3)/2)$，其中 $|s| = h > 3 sqrt(3)$。

  比较纵坐标：$t = 3/2 + (sqrt(3))/2 s$，由 $|s| > 3 sqrt(3)$ 得

  $ |t - 3/2| > (sqrt(3))/2 dot 3 sqrt(3) = 9/2, $

  解得 $t > 6$ 或 $t < -3$。

  *答：* $t < -3$ 或 $t > 6$。

  两个临界点 $(3 sqrt(3)/2, 6)$ 与 $(3 sqrt(3)/2, -3)$ 正是图 2 中虚线菱形的上、下顶点：
  在这两点处 $angle A P B = 60 degree$（强关联点），到菱形外部就成了"远关联点"。
  两问里 $2 sqrt(3)$ 与 $3 sqrt(3)$ 的不同只因线段 $A B$ 的长度不同（$4$ 与 $6$），方法一致。
]
