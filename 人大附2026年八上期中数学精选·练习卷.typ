// 人大附2026年八上期中数学精选·练习卷：只含原题，每题独占一页，题下留横线作答
// 题目与《人大附2026年八上期中数学精选》逐字一致，解答见该文件。
// 页面、字体、公式编号都由 template.typ 提供，
// 文档内不要再写 #set text / #set page / #set math.equation。
#import "template.typ": *
#import "@preview/cetz:0.5.2"

#set document(title: [人大附2026年八上期中数学精选·练习卷])

// 作答区：浅灰横线，行间用 1fr 吸收本页剩余高度——
// 空间富余时线距自动拉开，空间不足时压到零，不会溢出到下一页
#let answer-lines(n) = {
  v(0.6em, weak: true)
  for _ in range(n) {
    line(length: 100%, stroke: .4pt + rgb("#c9c9c9"))
    v(1fr, weak: true)
  }
}

#template(
  heading2-align: left,
  first-line-indent: 2em,
  page-footer: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  = 人大附2026年八上期中数学精选·练习卷

  #align(right)[
    #text(size: 11pt)[
      姓名 #box(width: 5em, stroke: (bottom: .5pt)) #h(1.5em) 用时
      #box(width: 3em, stroke: (bottom: .5pt))
    ]
  ]
  #v(-0.2em)

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

  #v(0.8em)
  #answer-lines(8)

  #pagebreak()


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

  #v(0.8em)
  #answer-lines(9)

  #pagebreak()


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

  #v(0.8em)
  #answer-lines(9)
]
