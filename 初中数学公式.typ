#set document(title: [
  Junior High School Math Formulas
])

#set page(
  paper: "a4",
    header: align(right + horizon, {
    context document.title  // 直接引用标题内容
  }),
)

#set par(
  // first-line-indent: (amount: 2em, all: true),
  spacing: 1em,
  leading: 1em,
)
#set text(
  font: ("Noto Serif CJK SC", "DejaVu Sans"),
  size: 14pt,
)

#show heading.where(level: 1): it => {
  set text(24pt, weight: "bold")
  align(center)[#it]
}

#show heading.where(level: 2): it => {
  set text(20pt, weight: "bold")
  align(center)[#it]
}

#set page(numbering: none)

#set math.equation(numbering: "(1)")
#set text(font: "Latin Modern Math")

=== 1. Difference of Squares Formula
$ a^2 - b^2 = (a + b)(a - b) $

=== 2. Perfect Square Formula
$ a^2 + 2 a b + b^2 = (a + b)^2 \
a^2 - 2 a b + b^2 = (a - b)^2 $

=== 3. Sum of Cubes Formula
$ a^3 + b^3 = (a + b)(a^2 - a b + b^2) $

=== 4. Difference of Cubes Formula
$ a^3 - b^3 = (a - b)(a^2 + a b + b^2) $

=== 5. Perfect Cube Formula
$ a^3 + 3 a^2 b + 3 a b^2 + b^3 = (a + b)^3  \
  a^3 - 3 a^2 b + 3 a b^2 - b^3 = (a - b)^3 $

=== 6. Cross Multiplication Method / Factoring by Grouping
$ x^2 + (p + q)x + p q = (x + p)(x + q) $

=== 7. Square of a Multinomial Sum
$ a^2 + b^2 + c^2 + 2 a b + 2 b c + 2 c a = (a + b + c)^2 $

=== 8. Cube of a Trinomial Sum
$ a^3 + b^3 + c^3 - 3 a b c = (a + b + c)(a^2 + b^2 + c^2 - a b - b c - c a) $

=== 9. Generalized Difference of Squares Formula
$ a^4 - b^4 = (a + b)(a - b)(a^2 + b^2) $
$ a^5 - b^5 = (a - b)(a^4 + a^3b + a^2b^2 + a b^3 + b^4) \
  a^5 + b^5 = (a + b)(a^4 - a^3b + a^2b^2 - a b^3 + b^4) $
$ a^n - b^n = (a - b)(a^(n-1) + a^(n-2) b + a^(n-3) b^2 + dots + a b^(n-2) + b^(n-1)) $

#pagebreak()

=== 10. Vieta theorem
$ x^2 + p x + q = 0 <==> x_1 + x_2 = -p, quad x_1 x_2 = q $
$ a x^2 + b x + c = 0 <==> x_1 + x_2 = -b/a, quad x_1 x_2 = c/a $

=== 11. Quadratic Formula
$ a x^2 + b x + c = 0 quad (a!=0) $
$ Delta = b^2 - 4 a c $
$ x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2a) $


=== 12. Basic Inequality
for $a > 0, b > 0$
$ 2/(1/a + 1/b) <= sqrt(a b) <= (a + b) / 2 $

=== 13. Product of Powers Rule
$ a^m a^n &= a^(m+n) \
 a^m / a^n &= a^(m-n) \
 (a^m)^n &= a^(m n) \
 (a b)^n &= a^n b^n \
 (a/b)^n &= a^n / b^n $
\
$ a^0 &= 1 \
 a^(-n) &= 1 / a^n \
 a^(m/n) &= root(n, a^m) $
