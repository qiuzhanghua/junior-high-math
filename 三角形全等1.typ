#import "template.typ": *
#import "@preview/cetz:0.5.2"
#import cetz.draw: group, line

// ---- 画图辅助函数 ----
// mid: 线段中点；dir: 线段方向向量；tick: 在 p 处沿方向 d 画等长记号
#let mid(a, b) = ((a.at(0) + b.at(0)) / 2, (a.at(1) + b.at(1)) / 2)
#let dir(a, b) = (b.at(0) - a.at(0), b.at(1) - a.at(1))
#let tick(p, d, len: 0.17, count: 1, sep: 0.13) = group({
  let n = calc.sqrt(d.at(0) * d.at(0) + d.at(1) * d.at(1))
  let (px, py) = (-d.at(1) / n, d.at(0) / n)
  let (sx, sy) = (d.at(0) / n, d.at(1) / n)
  for i in range(0, count) {
    let off = (i - (count - 1) / 2) * sep
    line(
      (p.at(0) + sx * off + px * len / 2, p.at(1) + sy * off + py * len / 2),
      (p.at(0) + sx * off - px * len / 2, p.at(1) + sy * off - py * len / 2),
    )
  }
})

#template(
  heading2-align: left,
  page-numbering: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  = 三角形全等练习题

  == 一、全等三角形的概念与性质

  #align(left)[
    第 1 题（填空）:
    \
    （1）能够完全重合的两个三角形叫做#text("______")；
    \
    （2）全等三角形的对应边#text("______")、对应角#text("______")；
    \
    （3）全等三角形的周长#text("______")、面积#text("______")。
  ]
  \
  \
  \

  #block(breakable: false)[
    #align(left)[
      第 2 题: 如图，△ABC ≌ △DEF，请写出三组对应顶点、三组对应边、三组对应角。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 1.8)
        let B = (-1.6, 0)
        let C = (1.6, 0)
        let D = (3.8, 1.8)
        let E = (5.4, 0)
        let F = (2.2, 0)
        line(A, B, C, close: true)
        line(D, E, F, close: true)
        content((0, 2.05), [A])
        content((-1.8, -0.2), [B])
        content((1.8, -0.2), [C])
        content((3.8, 2.05), [D])
        content((5.6, -0.2), [E])
        content((2.0, -0.2), [F])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 3 题: 如图，△ABC ≌ △DCB，$A B = 3$，$A C = 4$，$angle A B C = 60°$。求 $D C$、$B D$ 的长和 $angle D C B$ 的度数。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 1.6)
        let B = (-1.5, 0)
        let C = (1.5, 0)
        let D = (0, -1.6)
        line(A, B, C, close: true)
        line(B, D, C, close: true)
        tick(mid(A, B), dir(A, B))
        tick(mid(D, C), dir(D, C))
        tick(mid(A, C), dir(A, C), count: 2)
        tick(mid(B, D), dir(B, D), count: 2)
        content((0, 1.85), [A])
        content((-1.7, -0.2), [B])
        content((1.7, -0.2), [C])
        content((0, -1.85), [D])
      })
    ]
    \
    \
  ]

  #align(left)[
    第 4 题: 已知 △ABC ≌ △DEF，$A B = 5$，$B C = 7$，$A C = 9$，$angle A = 50°$，$angle B = 60°$。求 △DEF 的周长，以及 $angle E$、$angle F$ 的度数。
  ]
  \
  \
  \

  #align(left)[
    第 5 题: 判断下列说法是否正确，并说明理由：
    \
    （1）全等三角形的对应边上的高相等；
    \
    （2）周长相等的两个三角形全等；
    \
    （3）面积相等的两个三角形全等；
    \
    （4）三个角分别相等的两个三角形全等。
  ]
  \
  \
  \

  == 二、全等三角形的判定方法

  #align(left)[
    第 6 题（填空）: 根据已知条件，选择恰当的判定方法（填 SSS、SAS、ASA、AAS 或 HL）：
    \
    （1）已知三边分别相等：#text("______")；
    \
    （2）已知两边及其夹角分别相等：#text("______")；
    \
    （3）已知两角及其夹边分别相等：#text("______")；
    \
    （4）已知两角及其中一角的对边分别相等：#text("______")；
    \
    （5）直角三角形中，已知斜边和一条直角边分别相等：#text("______")。
  ]
  \
  \
  \

  #align(left)[
    第 7 题: 判断下列说法是否正确，若错误请说明理由（可画图举例说明）：
    \
    （1）两边及其中一边的对角分别相等的两个三角形一定全等（SSA）？
    \
    （2）三个角分别相等的两个三角形一定全等（AAA）？
  ]
  \
  \
  \

  #block(breakable: false)[
    #align(left)[
      第 8 题: 如图，$A B = D E$，$A C = D F$，$angle A = angle D$。△ABC 与 △DEF 全等吗？依据是什么？
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 1.8)
        let B = (-1.6, 0)
        let C = (1.6, 0)
        let D = (3.8, 1.8)
        let E = (5.4, 0)
        let F = (2.2, 0)
        line(A, B, C, close: true)
        line(D, E, F, close: true)
        tick(mid(A, B), dir(A, B))
        tick(mid(D, E), dir(D, E))
        tick(mid(A, C), dir(A, C), count: 2)
        tick(mid(D, F), dir(D, F), count: 2)
        cetz.angle.angle(A, B, C, radius: 0.5, direction: "near")
        cetz.angle.angle(D, E, F, radius: 0.5, direction: "near")
        content((0, 2.05), [A])
        content((-1.8, -0.2), [B])
        content((1.8, -0.2), [C])
        content((3.8, 2.05), [D])
        content((5.6, -0.2), [E])
        content((2.0, -0.2), [F])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 9 题: 如图，$A B ∥ C D$，$A B = C D$，$B D$ 是四边形 $A B C D$ 的对角线。要证明 △ABD ≌ △CDB，除已知条件外还需要用到哪些条件？依据的判定方法是什么？请写出完整的证明。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0.5, 1.5)
        let B = (2.6, 1.5)
        let C = (1.9, -1.5)
        let D = (-0.2, -1.5)
        line(A, B, C, D, close: true)
        line(B, D)
        tick(mid(A, B), dir(A, B))
        tick(mid(D, C), dir(D, C))
        content((0.35, 1.7), [A])
        content((2.75, 1.7), [B])
        content((2.05, -1.7), [C])
        content((-0.35, -1.7), [D])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 10 题: 如图，在 Rt△ABC 和 Rt△DEF 中，$angle C = angle F = 90°$，$A B = D E$，$A C = D F$。判定 Rt△ABC ≌ Rt△DEF 的依据是#text("______")。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 1.5)
        let C = (0, 0)
        let B = (2.2, 0)
        let D = (4, 1.5)
        let F = (4, 0)
        let E = (6.2, 0)
        line(A, C, B, close: true)
        line(D, F, E, close: true)
        cetz.angle.right-angle(C, A, B, radius: 0.25)
        cetz.angle.right-angle(F, D, E, radius: 0.25)
        tick(mid(A, C), dir(A, C))
        tick(mid(D, F), dir(D, F))
        content((-0.3, 1.65), [A])
        content((-0.3, -0.2), [C])
        content((2.35, -0.2), [B])
        content((3.7, 1.65), [D])
        content((3.7, -0.2), [F])
        content((6.35, -0.2), [E])
      })
    ]
    \
    \
  ]

  == 三、证明题（基础）

  #block(breakable: false)[
    #align(left)[
      第 11 题: 如图，$A B = A C$，$A D = A E$，$angle 1 = angle 2$。求证：△ABD ≌ △ACE。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 2.2)
        let B = (-2, 0)
        let C = (2, 0)
        let D = (-0.5, 1.05)
        let E = (0.5, 1.05)
        line(A, B, C, close: true)
        line(A, D)
        line(A, E)
        tick(mid(A, B), dir(A, B))
        tick(mid(A, C), dir(A, C))
        tick(mid(A, D), dir(A, D), count: 2)
        tick(mid(A, E), dir(A, E), count: 2)
        cetz.angle.angle(A, B, D, radius: 0.6, direction: "near", label: text(10pt)[1])
        cetz.angle.angle(A, C, E, radius: 0.6, direction: "near", label: text(10pt)[2])
        content((0, 2.45), [A])
        content((-2.2, -0.2), [B])
        content((2.2, -0.2), [C])
        content((-0.62, 1.1), [D])
        content((0.62, 1.1), [E])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 12 题: 如图，$A C$ 与 $B D$ 相交于点 $O$，且 $O A = O C$，$O B = O D$。求证：△AOB ≌ △COD。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let O = (0, 0)
        let A = (-1.3, 1.3)
        let B = (1.3, 1.3)
        let C = (1.3, -1.3)
        let D = (-1.3, -1.3)
        line(A, C)
        line(B, D)
        tick(mid(O, A), dir(O, A))
        tick(mid(O, C), dir(O, C))
        tick(mid(O, B), dir(O, B), count: 2)
        tick(mid(O, D), dir(O, D), count: 2)
        cetz.angle.angle(O, A, B, radius: 0.45, direction: "near")
        cetz.angle.angle(O, C, D, radius: 0.45, direction: "near")
        content((-1.55, 1.55), [A])
        content((1.55, 1.55), [B])
        content((1.55, -1.55), [C])
        content((-1.55, -1.55), [D])
        content((0.14, -0.25), [O])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 13 题: 如图，$A B = A C$，$B D = C D$，点 $D$ 在 $B C$ 上。求证：$A D$ 平分 $angle B A C$（即 $angle B A D = angle C A D$）。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 2)
        let B = (-1.8, 0)
        let C = (1.8, 0)
        let D = (0, 0)
        line(A, B, C, close: true)
        line(A, D)
        tick(mid(A, B), dir(A, B))
        tick(mid(A, C), dir(A, C))
        tick(mid(B, D), dir(B, D), count: 2)
        tick(mid(C, D), dir(C, D), count: 2)
        cetz.angle.angle(A, B, D, radius: 0.5, direction: "near")
        cetz.angle.angle(A, C, D, radius: 0.5, direction: "near")
        content((0, 2.25), [A])
        content((-2.0, -0.2), [B])
        content((2.0, -0.2), [C])
        content((0.12, -0.2), [D])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 14 题: 如图，$A D$ 平分 $angle B A C$，$D E perp A B$ 于点 $E$，$D F perp A C$ 于点 $F$。求证：$D E = D F$。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 2.4)
        let B = (-2, 0)
        let C = (2, 0)
        let D = (0, 0)
        let E = (-1.18, 0.98)
        let F = (1.18, 0.98)
        line(A, B, C, close: true)
        line(A, D)
        line(D, E)
        line(D, F)
        cetz.angle.right-angle(E, A, D, radius: 0.2)
        cetz.angle.right-angle(F, A, D, radius: 0.2)
        cetz.angle.angle(A, B, D, radius: 0.6, direction: "near")
        cetz.angle.angle(A, C, D, radius: 0.6, direction: "near")
        content((0, 2.65), [A])
        content((-2.2, -0.2), [B])
        content((2.2, -0.2), [C])
        content((0.12, -0.2), [D])
        content((-1.38, 1.05), [E])
        content((1.38, 1.05), [F])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 15 题: 如图，$A C perp B C$，$B D perp A D$，垂足分别为 $C$、$D$，且 $A C = B D$。求证：$B C = A D$。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 1.5)
        let B = (2.8, 0)
        let C = (0, 0)
        let D = (2.8, 1.5)
        line(A, B)
        line(A, C)
        line(C, B)
        line(D, B)
        line(A, D)
        cetz.angle.right-angle(C, A, B, radius: 0.25)
        cetz.angle.right-angle(D, A, B, radius: 0.25)
        tick(mid(A, C), dir(A, C))
        tick(mid(B, D), dir(B, D))
        content((-0.25, 1.65), [A])
        content((2.95, -0.25), [B])
        content((-0.3, -0.2), [C])
        content((2.95, 1.65), [D])
      })
    ]
    \
    \
  ]

  == 四、证明题（综合）

  #block(breakable: false)[
    #align(left)[
      第 16 题: 如图，$A B ∥ D E$，点 $C$ 是 $B E$ 的中点（即 $B C = C E$）。求证：$A B = D E$。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (-1.5, 1.5)
        let B = (-1.5, -1.5)
        let D = (1.5, -1.5)
        let E = (1.5, 1.5)
        let C = (0, 0)
        line(A, B)
        line(D, E)
        line(B, E)
        line(A, D)
        tick(mid(B, C), dir(B, C))
        tick(mid(C, E), dir(C, E))
        cetz.angle.angle(B, A, C, radius: 0.4, direction: "near")
        cetz.angle.angle(E, D, C, radius: 0.4, direction: "near")
        content((-1.7, 1.7), [A])
        content((-1.7, -1.7), [B])
        content((0.15, 0.22), [C])
        content((1.7, -1.7), [D])
        content((1.7, 1.7), [E])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 17 题: 如图，$A B = A D$，$C B = C D$。求证：$A C$ 平分 $angle B A D$。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 2)
        let B = (-1.8, 0)
        let C = (0, -1.6)
        let D = (1.8, 0)
        line(A, B, C, D, close: true)
        line(A, C)
        tick(mid(A, B), dir(A, B))
        tick(mid(A, D), dir(A, D))
        tick(mid(B, C), dir(B, C), count: 2)
        tick(mid(C, D), dir(C, D), count: 2)
        content((0, 2.25), [A])
        content((-2.05, -0.15), [B])
        content((0, -1.85), [C])
        content((2.05, -0.15), [D])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 18 题: 如图，$angle 1 = angle 2$（即 $angle C A B = angle D A B$）。请分别添加一个条件，使 △ABC ≌ △ABD 可以用下列方法判定：
      \
      （1）SAS：#text("______")；
      \
      （2）AAS：#text("______")；
      \
      （3）ASA：#text("______")。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 2)
        let B = (0, 0)
        let C = (-1.6, 0.8)
        let D = (1.6, 0.8)
        line(A, B)
        line(A, C)
        line(A, D)
        line(B, C)
        line(B, D)
        cetz.angle.angle(A, B, C, radius: 0.5, direction: "near", label: text(10pt)[1])
        cetz.angle.angle(A, B, D, radius: 0.5, direction: "near", label: text(10pt)[2])
        content((0.12, 2.2), [A])
        content((-0.18, -0.25), [B])
        content((-1.85, 0.95), [C])
        content((1.85, 0.95), [D])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 19 题: 如图，点 $B$、$F$、$C$、$E$ 在一条直线上，$A B ∥ D E$，$A B = D E$，$B F = C E$。求证：$A C = D F$。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (-2, 1.6)
        let B = (-2, -1.6)
        let D = (2, 1.6)
        let E = (2, -1.6)
        let F = (-0.8, -1.6)
        let C = (0.8, -1.6)
        line(A, B)
        line(D, E)
        line(B, E)
        line(A, C)
        line(D, F)
        cetz.angle.right-angle(B, A, C, radius: 0.25)
        cetz.angle.right-angle(E, D, F, radius: 0.25)
        tick(mid(A, B), dir(A, B))
        tick(mid(D, E), dir(D, E))
        tick(mid(B, F), dir(B, F), count: 2)
        tick(mid(C, E), dir(C, E), count: 2)
        content((-2.2, 1.8), [A])
        content((-2.2, -1.8), [B])
        content((2.2, 1.8), [D])
        content((2.2, -1.8), [E])
        content((-0.8, -1.85), [F])
        content((0.8, -1.85), [C])
      })
    ]
    \
    \
  ]

  #block(breakable: false)[
    #align(left)[
      第 20 题: 如图，$angle 1 = angle 2$，$angle C = angle D$，$A B = A E$。求证：△ABC ≌ △AED。
    ]
    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 2.4)
        let B = (-2, 0)
        let C = (-0.5, 0)
        let D = (0.5, 0)
        let E = (2, 0)
        line(A, B)
        line(A, C)
        line(A, E)
        line(A, D)
        line(B, C)
        line(C, D)
        line(D, E)
        tick(mid(A, B), dir(A, B))
        tick(mid(A, E), dir(A, E))
        cetz.angle.angle(A, B, C, radius: 0.5, direction: "near", label: text(10pt)[1])
        cetz.angle.angle(A, E, D, radius: 0.5, direction: "near", label: text(10pt)[2])
        cetz.angle.angle(C, A, B, radius: 0.55, direction: "near")
        cetz.angle.angle(D, A, E, radius: 0.55, direction: "near")
        content((0, 2.65), [A])
        content((-2.2, -0.25), [B])
        content((-0.5, -0.28), [C])
        content((0.5, -0.28), [D])
        content((2.2, -0.25), [E])
      })
    ]
    \
    \
  ]
]
