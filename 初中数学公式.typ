#import "template.typ": *

#set document(title: [Junior High School Math Formulas])

#template(
  heading2-align: center,
  equation-numbering: "(1)",
  text-size: 14pt,
)[
  === 1. Difference of Squares Formula
  $ a^2 - b^2 = (a + b)(a - b) $

  === 2. Perfect Square Formula
  $
    a^2 + 2 a b + b^2 = (a + b)^2 \
    a^2 - 2 a b + b^2 = (a - b)^2
  $

  === 3. Sum of Cubes Formula
  $ a^3 + b^3 = (a + b)(a^2 - a b + b^2) $

  === 4. Difference of Cubes Formula
  $ a^3 - b^3 = (a - b)(a^2 + a b + b^2) $

  === 5. Perfect Cube Formula
  $
    a^3 + 3 a^2 b + 3 a b^2 + b^3 = (a + b)^3 \
    a^3 - 3 a^2 b + 3 a b^2 - b^3 = (a - b)^3
  $

  === 6. Cross Multiplication Method / Factoring by Grouping
  $ x^2 + (p + q)x + p q = (x + p)(x + q) $

  === 7. Square of a Multinomial Sum
  $ a^2 + b^2 + c^2 + 2 a b + 2 b c + 2 c a = (a + b + c)^2 $

  === 8. Cube of a Trinomial Sum
  $ a^3 + b^3 + c^3 - 3 a b c = (a + b + c)(a^2 + b^2 + c^2 - a b - b c - c a) $

  === 9. Generalized Difference of Squares Formula
  $
    a^4 - b^4 = (a + b)(a - b)(a^2 + b^2) \
    a^5 - b^5 = (a - b)(a^4 + a^3b + a^2b^2 + a b^3 + b^4) \
    a^5 + b^5 = (a + b)(a^4 - a^3b + a^2b^2 - a b^3 + b^4) \
    a^n - b^n = (a - b)(a^(n-1) + a^(n-2) b + a^(n-3) b^2 + dots + a b^(n-2) + b^(n-1))
  $

  #pagebreak()

  === 10. Vieta theorem
  $
    x^2 + p x + q = 0 <==> x_1 + x_2 = -p, quad x_1 x_2 = q \
    a x^2 + b x + c = 0 <==> x_1 + x_2 = -b/a, quad x_1 x_2 = c/a
  $

  === 11. Quadratic Formula
  $ a x^2 + b x + c = 0 quad (a!=0) $
  $ Delta = b^2 - 4 a c $
  $ x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2a) $

  === 12. Basic Inequality
  for $a > 0, b > 0$
  $ 2/(1/a + 1/b) <= sqrt(a b) <= (a + b) / 2 <= sqrt((a^2 + b^2) / 2) $

  === 13. Product of Powers Rule
  $
      a^m a^n & = a^(m+n) \
    a^m / a^n & = a^(m-n) \
      (a^m)^n & = a^(m n) \
      (a b)^n & = a^n b^n \
      (a/b)^n & = a^n / b^n
  $
  \
  $
        a^0 & = 1 \
     a^(-n) & = 1 / a^n \
    a^(m/n) & = root(n, a^m)
  $

  #pagebreak()

  === 14. Pythagorean Theorem
  在直角三角形中，两直角边的平方和等于斜边的平方：
  $ a^2 + b^2 = c^2 $

  === 15. Trigonometric Ratios
  在直角三角形中，设 $angle A$ 的对边为 $a$、邻边为 $b$、斜边为 $c$：
  $ sin A = a/c, quad cos A = b/c, quad tan A = a/b $

  === 16. Special Angle Values
  $
    sin 30° = 1/2, quad sin 45° = sqrt(2)/2, quad sin 60° = sqrt(3)/2 \
    cos 30° = sqrt(3)/2, quad cos 45° = sqrt(2)/2, quad cos 60° = 1/2 \
    tan 30° = sqrt(3)/3, quad tan 45° = 1, quad tan 60° = sqrt(3)
  $

  === 17. Polygon Angle Sum
  $n$ 边形内角和：$(n - 2) dot 180°$；任意多边形外角和：$360°$。

  === 18. Circle Circumference and Area
  $ C = 2 pi r, quad S = pi r^2 $

  === 19. Arc Length and Sector Area
  $n°$ 圆心角所对的弧长与扇形面积：
  $ l = frac(n pi r, 180), quad S = frac(n pi r^2, 360) = frac(1, 2) l r $

  === 20. Areas of Plane Figures
  $
    S_("triangle") = frac(1, 2) a h \
    S_("trapezoid") = frac(1, 2)(a + b) h \
    S_("rhombus") = frac(1, 2) d_1 d_2
  $

  === 21. Cylinder and Cone
  圆柱：侧面积 $2 pi r h$，体积 $pi r^2 h$。圆锥：侧面积 $pi r l$，体积 $frac(1, 3) pi r^2 h$。

  === 22. Radical Rules
  $
    sqrt(a b) = sqrt(a) sqrt(b) quad (a >= 0, b >= 0) \
    sqrt(frac(a, b)) = frac(sqrt(a), sqrt(b)) quad (a >= 0, b > 0) \
    (sqrt(a))^2 = a, quad sqrt(a^2) = |a|
  $

  === 23. Mean and Variance
  平均数与方差（$n$ 个数据 $x_1, x_2, dots, x_n$）：
  $ bar(x) = frac(x_1 + x_2 + dots + x_n, n) $
  $ s^2 = frac((x_1 - bar(x))^2 + (x_2 - bar(x))^2 + dots + (x_n - bar(x))^2, n) $

  === 24. Properties of Proportions
  $ frac(a, b) = frac(c, d) <==> a d = b c quad (b != 0, d != 0) $

  === 25. Vertex of Quadratic Function
  一般式配方为顶点式：
  $ y = a x^2 + b x + c = a (x + frac(b, 2a))^2 + frac(4 a c - b^2, 4 a) $
  顶点坐标：$( - frac(b, 2a), frac(4 a c - b^2, 4 a) )$，对称轴 $x = - frac(b, 2a)$。

  === 26. Function Forms
  $
    y = k x + b quad (k != 0) quad "一次函数" \
    y = k x quad (k != 0) quad "正比例函数" \
    y = frac(k, x) quad (k != 0) quad "反比例函数"
  $
]
