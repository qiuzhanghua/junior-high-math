#import "template.typ": *
#import "@preview/cetz:0.5.2"

#set document(title: [等腰三角形中的旋转与中点])

#template(
  heading2-align: center,
  first-line-indent: 2em,
  page-footer: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  = 等腰三角形中的旋转与中点（★★★）

  == 题目

  #example[
    如图，在 $triangle A B C$ 中，$A B = A C$，$angle B A C = alpha$，点 $D$ 在边 $B C$ 上（不与点 $B$、$C$ 重合），连接 $A D$。以点 $A$ 为中心，将线段 $A D$ 逆时针旋转 $180 degree - alpha$ 得到线段 $A E$，连接 $B E$。

    (1) $angle B A C + angle D A E = $ #blank(2) $degree$；

    (2) 取 $C D$ 的中点 $F$，连接 $A F$，用等式表示线段 $A F$ 与 $B E$ 的数量关系，并证明。

    #figure(
      cetz.canvas(length: 1.2cm, {
        import cetz.draw: *
        let A = (0, 0)
        let B = (-1.099, -2.356)
        let C = (1.099, -2.356)
        let D = (-0.5, -2.356)
        let E = (2.127, 1.131)
        line(A, B, C, close: true)
        line(A, D)
        line(A, E)
        line(B, E)
        cetz.angle.angle(A, B, C, direction: "near", radius: 0.6)
        content((0.05, -0.78), $alpha$)
        content((-0.26, 0.24), [A])
        content((-1.36, -2.52), [B])
        content((1.25, -2.52), [C])
        content((-0.62, -2.7), [D])
        content((2.34, 1.24), [E])
      }),
      placement: none,
      caption: [$D$ 在 $B C$ 上，$A E$ 是 $A D$ 逆时针旋转 $180 degree - alpha$ 得到的线段],
    ) <fig:setup>
  ]

  == 解答

  === （1）旋转角

  由旋转的定义，旋转角就是 $angle D A E$，故
  $ angle D A E = 180 degree - alpha, $
  于是
  $ angle B A C + angle D A E = alpha + (180 degree - alpha) = 180 degree. $

  答案：$180 degree$。

  === （2）结论：$B E = 2 A F$

  两个证法都从（1）的 $angle D A E = 180 degree - alpha$ 出发，区别只在把 $180 degree - alpha$ 用在了哪里：证法一拆成“$(-alpha) + 180 degree$”去造中点，证法二用“$alpha$ 的旋转”去造平行四边形。

  ==== 证法一：旋转与三角形中位线

  #figure(
    cetz.canvas(length: 1.15cm, {
      import cetz.draw: *
      let A = (0, 0)
      let B = (-1.099, -2.356)
      let C = (1.099, -2.356)
      let D = (-0.5, -2.356)
      let E = (2.127, 1.131)
      let Dp = (-2.127, -1.131)
      let F = (0.299, -2.356)
      let Fp = (-1.613, -1.744)
      line(A, B, C, close: true)
      line(A, D)
      line(A, E)
      line(B, E)
      line(Dp, E, stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))
      line(B, Dp, stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))
      line(A, F)
      line(A, Fp, stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))
      content((-0.26, 0.24), [A])
      content((-1.36, -2.52), [B])
      content((1.25, -2.52), [C])
      content((-0.62, -2.7), [D])
      content((2.34, 1.24), [E])
      content((-2.5, -1.2), [$D'$])
      content((-1.52, -1.36), [$F'$])
      content((0.42, -2.66), [F])
    }),
    placement: none,
    caption: [把 $triangle A C D$ 绕 $A$ 顺时针旋转 $alpha$，$F'$ 是 $B D'$ 的中点],
  )

  #proof[
    以 $A$ 为中心，把点 $D$、$C$ 顺时针旋转 $alpha$。因为 $A B = A C$ 且 $angle B A C = alpha$，所以 $C$ 的像恰是 $B$；设 $D$ 的像为 $D'$。旋转既保持距离，也把中点映成中点，所以 $F$（$C D$ 的中点）的像是 $B D'$ 的中点 $F'$，并且
    $ A F = A F'. $

    另一方面，绕同一点 $A$ 的旋转可以叠加：
    $ 180 degree - alpha = (-alpha) + 180 degree, $
    即“先顺时针旋转 $alpha$，再旋转 $180 degree$”。而 $D$ 顺时针旋转 $alpha$ 的像正是 $D'$，所以 $E$ 是 $D'$ 绕 $A$ 旋转 $180 degree$ 的像，于是 $D'$、$A$、$E$ 三点共线，且 $A$ 是 $D' E$ 的中点。

    在 $triangle D' B E$ 中，$A$ 是边 $D' E$ 的中点，$F'$ 是边 $D' B$ 的中点，所以 $A F'$ 是三角形的中位线：
    $ A F' = 1/2 B E. $
    又 $A F = A F'$，故 $A F = 1/2 B E$，即
    $ B E = 2 A F. $
  ]

  ==== 证法二：倍长中线，构造平行四边形

  #figure(
    cetz.canvas(length: 1.15cm, {
      import cetz.draw: *
      let A = (0, 0)
      let B = (-1.099, -2.356)
      let C = (1.099, -2.356)
      let D = (-0.5, -2.356)
      let E = (2.127, 1.131)
      let F = (0.299, -2.356)
      let G = (0.599, -4.713)
      line(A, B, C, close: true)
      line(A, D)
      line(A, E)
      line(B, E)
      line(A, G)
      line(C, G, stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))
      line(D, G, stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))
      content((-0.26, 0.24), [A])
      content((-1.36, -2.52), [B])
      content((1.25, -2.52), [C])
      content((-0.62, -2.7), [D])
      content((2.34, 1.24), [E])
      content((0.54, -2.7), [F])
      content((0.9, -4.98), [G])
    }),
    placement: none,
    caption: [倍长 $A F$ 至 $G$（$F G = A F$），$A C G D$ 是平行四边形],
  )

  #proof[
    延长 $A F$ 到 $G$，使 $F G = A F$，连接 $C G$、$D G$。因为 $F$ 既是 $A G$ 的中点，又是 $C D$ 的中点，四边形的对角线互相平分，所以四边形 $A C G D$ 是平行四边形，故
    $ D G parallel A C, quad D G = A C. $

    在 $triangle A B E$ 与 $triangle D G A$ 中：

    - $A B = A C = D G$；
    - $A E = A D$（旋转保持长度）；
    - $angle B A E = angle G D A$。

    第三个条件由以下推导得到：由 $angle B A E = angle B A D + angle D A E$ 及 $angle C A D = angle B A C - angle B A D$ 得
    $ angle B A E + angle C A D = angle D A E + angle B A C = 180 degree; $
    又 $D G parallel A C$，$A D$ 为截线，同旁内角互补，$angle G D A + angle C A D = 180 degree$，所以 $angle B A E = angle G D A$。

    由 SAS 得
    $ triangle A B E ≅ triangle D G A, $
    所以
    $ B E = G A = 2 A F. $
  ]

  == 两种证法的联系

  #remark[
    两段证明是同一个几何事实的两种说法：
    - 证法一让 $A$ 成为 $D' E$ 的中点，再用*三角形中位线*把 $B E$ 的长度减半送到 $A F'$ 上；
    - 证法二让 $F$ 成为 $A G$ 的中点，再用*平行四边形*加*全等*把 $B E$ 的长度整体搬到 $A G$ 上。

    两者都用到（1）的 $angle D A E = 180 degree - alpha$。证法一把它拆成“$alpha$ 的旋转 + $180 degree$ 旋转”，所以不必算角；证法二把它化成 $angle B A E$ 与 $angle G D A$ 互补，所以不必作中心对称。考场上哪种辅助线先想到就用哪种：看到“中点”想到倍长（证法二），看到“旋转 $180 degree - alpha$”想到拆角（证法一）。
  ]
]
