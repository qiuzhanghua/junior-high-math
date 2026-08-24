#import "template.typ": *
#import "@preview/cetz:0.5.2"

#set document(title: [Congruent Triangles])

#template(
  heading2-align: center,
  first-line-indent: 2em,
  page-footer: "第 1 页",
  equation-numbering: "(1)",
  reset-page: true,
)[
  = 三角形全等(Congruent Triangles)

  == 1. 全等三角形的定义与性质

  === 1.1 定义

  #definition[
    能够完全重合的两个图形叫做 _全等形_。能够完全重合的两个三角形叫做 _全等三角形_。

    重合时互相重合的顶点叫做 _对应顶点_，互相重合的边叫做 _对应边_，互相重合的角叫做 _对应角_。

    记作：△ABC ≌ △DEF，表示点 $A$、$B$、$C$ 分别与点 $D$、$E$、$F$ 对应。
  ]

  === 1.2 性质

  #important-block[
    *全等三角形的性质：*

    - 全等三角形的对应边相等；
    - 全等三角形的对应角相等；
    - 全等三角形的周长相等、面积相等；
    - 全等三角形对应边上的高、中线及对应角的平分线分别相等。
  ]

  == 2. 全等三角形的判定

  === 2.1 五种判定方法

  #important-block[
    *判定方法（两个三角形满足下列条件之一即全等）：*

    - *SSS*：三边分别相等；
    - *SAS*：两边及其夹角分别相等；
    - *ASA*：两角及其夹边分别相等；
    - *AAS*：两角及其中一角的对边分别相等；
    - *HL*：斜边和一条直角边分别相等（仅适用于直角三角形）。
  ]

  === 2.2 常见错误

  #important-block[
    *注意：* 以下条件 _不能_ 判定两个三角形全等：

    - *SSA（边边角）*：两边及其中一边的对角分别相等，不能判定全等；
    - *AAA（角角角）*：三角分别相等只能判定相似，不能判定全等。
  ]

  == 3. 角平分线的性质

  #important-block[
    *角平分线的性质定理：* 角平分线上的点到角两边的距离相等。

    *逆定理：* 角的内部，到角两边距离相等的点，在这个角的平分线上。

    即：点 $P$ 在 $angle A O B$ 的平分线上，$P A_1 perp O A$，$P B_1 perp O B$（$A_1$、$B_1$ 为垂足），则 $P A_1 = P B_1$。
  ]

  == 4. 判定方法的选择

  #important-block[
    *已知条件 → 优先选用的判定：*

    - 已知两边：找夹角 → *SAS*；或找第三边 → *SSS*；
    - 已知两角：找夹边 → *ASA*；或找任一边 → *AAS*；
    - 已知一边一角：找另一角 → *AAS* 或 *ASA*；或找夹边 → *SAS*；
    - 直角三角形：优先考虑 *HL*，也可用其他判定。

    证明中常用"公共边、公共角、对顶角、角平分线、垂直（直角）、平行线（内错角/同位角）"作为隐含条件。
  ]

  == 5. 例题

  #example[
    *例 1：* 已知：如图，在 △ABC 中，$A B = A C$，$A D$ 平分 $angle B A C$。求证：$B D = C D$。

    证明：因为 $A D$ 平分 $angle B A C$，所以 $angle B A D = angle C A D$。
    在 △ABD 和 △ACD 中：
    $ cases(A B = A C quad "(已知)", angle B A D = angle C A D quad "(已证)", A D = A D quad "(公共边)") $
    所以 △ABD ≌ △ACD（SAS），故 $B D = C D$。

    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0, 1.8)
        let B = (-1.8, 0)
        let C = (1.8, 0)
        let D = (0, 0)
        line(A, B, C, close: true)
        line(A, D, stroke: (paint: black, thickness: 0.7pt, dash: "dashed"))
        // 等长标记 AB = AC
        line((-0.815, 0.815), (-0.985, 0.985))
        line((0.815, 0.815), (0.985, 0.985))
        content((0, 2.05), [A])
        content((-2.0, -0.2), [B])
        content((2.0, -0.2), [C])
        content((0.12, -0.2), [D])
      })
    ]
  ]

  #example[
    *例 2：* 已知：如图，$A B ∥ C D$，$A B = C D$，点 $E$、$F$ 在 $A C$ 上，且 $A E = C F$。求证：$B F = D E$。

    证明：因为 $A B ∥ C D$，所以 $angle B A F = angle D C E$（内错角）。
    由 $A E = C F$，得 $A E + E F = C F + E F$，即 $A F = C E$。
    在 △ABF 和 △CDE 中：
    $ cases(A B = C D quad "(已知)", angle B A F = angle D C E quad "(已证)", A F = C E quad "(已证)") $
    所以 △ABF ≌ △CDE（SAS），故 $B F = D E$。

    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let A = (0.5, 1.5)
        let B = (2.8, 1.5)
        let C = (3.2, -0.5)
        let D = (-0.3, -0.5)
        let E = (1.31, 0.9)
        let F = (2.39, 0.1)
        line(A, B)
        line(D, C)
        line(A, C)
        // 求证线段 BF、DE 用灰色虚线
        line(B, F, stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))
        line(D, E, stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))
        // 平行箭头标记
        line((1.55, 1.44), (1.65, 1.5), (1.55, 1.56))
        line((1.45, -0.56), (1.55, -0.5), (1.45, -0.44))
        // 等长标记 AB = CD
        line((1.65, 1.42), (1.65, 1.58))
        line((1.45, -0.58), (1.45, -0.42))
        // 等长标记 AE = CF
        line((0.834, 1.104), (0.976, 1.296))
        line((2.724, -0.296), (2.866, -0.104))
        content((0.5, 1.75), [A])
        content((2.8, 1.75), [B])
        content((3.35, -0.65), [C])
        content((-0.5, -0.65), [D])
        content((1.4, 1.0), [E])
        content((2.5, 0.25), [F])
      })
    ]
  ]

  #example[
    *例 3：* 已知：如图，$A D$ 是 △ABC 的高（$A D perp B C$，垂足为 $D$），$E$ 是 $A D$ 上一点，$A D = B D$，$D E = D C$。求证：$B E = A C$。

    证明：因为 $A D perp B C$，所以 $angle B D E = angle A D C = 90°$。
    在 △BDE 和 △ADC 中：
    $ cases(B D = A D quad "(已知)", angle B D E = angle A D C = 90° quad "(已证)", D E = D C quad "(已知)") $
    所以 △BDE ≌ △ADC（SAS），故 $B E = A C$。

    #align(center)[
      #cetz.canvas(length: 1.4cm, {
        import cetz.draw: *
        let B = (-1.5, 0)
        let D = (0, 0)
        let C = (1.0, 0)
        let A = (0, 1.5)
        let E = (0, 1.0)
        line(A, B, C, close: true)
        line(A, D)
        // DE 段（E 在 AD 上）虚线突出
        line(E, D, stroke: (paint: black, thickness: 0.7pt, dash: "dashed"))
        // 求证线段 BE 用灰色虚线
        line(B, E, stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))
        // 直角标记（D 处）
        cetz.angle.right-angle(D, B, A, size: 0.3)
        // 等长标记 AD = BD
        line((-0.1, 0.75), (0.1, 0.75))
        line((-0.75, -0.1), (-0.75, 0.1))
        // 等长标记 DE = DC
        line((-0.08, 0.5), (0.08, 0.5))
        line((0.5, -0.1), (0.5, 0.1))
        content((0, 1.75), [A])
        content((-1.7, -0.2), [B])
        content((1.15, -0.2), [C])
        content((0.12, -0.2), [D])
        content((0.12, 1.0), [E])
      })
    ]
  ]

  #example[
    *例 4：* 已知：如图，$A C perp B C$，$B D perp A D$，垂足分别为 $C$、$D$，且 $A C = B D$。求证：$B C = A D$。

    证明：因为 $A C perp B C$，$B D perp A D$，所以 $angle C = angle D = 90°$，△ABC 与 △BAD 都是直角三角形。
    在 Rt△ABC 和 Rt△BAD 中：
    $ cases(A B = B A quad "(公共斜边)", A C = B D quad "(已知)") $
    所以 Rt△ABC ≌ Rt△BAD（HL），故 $B C = A D$。

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
        // 直角标记（C 处、D 处）
        cetz.angle.right-angle(C, A, B, size: 0.3)
        cetz.angle.right-angle(D, A, B, size: 0.3)
        // 等长标记 AC = BD
        line((-0.1, 0.75), (0.1, 0.75))
        line((2.7, 0.75), (2.9, 0.75))
        content((0, 1.75), [A])
        content((2.8, -0.25), [B])
        content((-0.3, 0), [C])
        content((2.8, 1.75), [D])
      })
    ]
  ]
]
