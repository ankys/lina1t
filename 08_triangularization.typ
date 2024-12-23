= 三角化
<三角化>
== フロベニウスの定理とケイリー・ハミルトンの定理
<フロベニウスの定理とケイリーハミルトンの定理>
#block[
$A$を$K$上の$N$次正方行列、$f (x)$を$K$上の多項式とする。
このとき、$A$の固有値$c in K$に対して、$f (c)$は$f (A)$の固有値である。
より詳しくは$A$の固有多項式が$c_1 , dots.h.c , c_N in K$を使って#link(<e:eigenfactor>)[\[e:eigenfactor\]];と因数分解されるならば、
$f (A)$の固有多項式は
$ det (x I - f (A)) = (x - f (c_1)) dots.h.c (x - f (c_N)) $
と因数分解される。

]
#block[
#emph[Proof.]
$c$を$A$の固有値とするとき、\$A\\vb\*{v} = c\\vb\*{v}\$となるベクトル\$\\vb\*{v} \\ne \\vb\*{0}\$が取れる。
$n = 0 , 1 , 2 , 3 , dots.h.c$に対して、
\$\$A^n\\vb\*{v} = c^n\\vb\*{v}\$\$
であるからスカラー倍して和を取ることで、
\$\$f(A)\\vb\*{v} = f(c)\\vb\*{v}\$\$ である。
よって、$f (c)$は$f (A)$の固有値である。

$A$の固有多項式が#link(<e:eigenfactor>)[\[e:eigenfactor\]];と因数分解されるとき、定理@t:triより#link(<e:tri>)[\[e:tri\]];と三角化される。
$n = 0 , 1 , 2 , 3 , dots.h.c$に対して、 \$\$A^n
= P\\mqty(c\_1 & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & c\_N)^n P^{-1}
= P\\mqty(c\_1^n & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & c\_N^n)P^{-1}\$\$
であるからスカラー倍して和を取ることで、
\$\$f(A) = P\\mqty(f(c\_1) & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & f(c\_N))P^{-1}\$\$
である。 よって、命題@t:eigenfactorより、この定理の結論が従う。~◻

]
#block[
$A$を$K$上の$N$次正方行列として、固有多項式$f_A (x) = det (x I - A)$が#link(<e:eigenfactor>)[\[e:eigenfactor\]];と因数分解されたとする。
このとき、$f_A (A) = O$が成り立つ。

]
#block[
この定理は$det (x I - A)$の$x$に$A$を代入できると拡大解釈すれば$det (A I - A) = det O = 0$となり正しそうであるが、
実際の証明はしっかり$f_A (A)$の定義に則って行う必要がある。

]
#block[
#emph[Proof.] まず$A$が右上三角行列
\$\$T = \\mqty(c\_1 & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & c\_N)\$\$
の場合に示す。 このとき固有多項式は
$ f_T (x) = (x - c_1) dots.h.c (x - c_N) $ であり、
$ f_T (T) = (T - c_1 I_N) dots.h.c (T - c_N I_N) $ が成り立つ。
あとはこれが零行列であることを$N$についての数学的帰納法で示す。
$N = 1$の時は\$T = \\mqty(c\_1)\$なので$T - c_1 I_1 = O_1$である。
$N - 1$で成立する時、
\$\$(T-c\_1 I\_N)\\cdots(T-c\_{N-1} I\_N) = \\mqty(O\_{N-1} & \* \\\\ \\vb\*{0}\_{N-1} & \*),
\\quad (T-c\_N I\_N) = \\mqty(\* & \* \\\\ \\vb\*{0}\_{N-1} & 0)\$\$
なので、積を取ると零行列になる。 以上より$f_T (T) = O$である。
一般の$A$に対しては定理@t:triより、$A$は#link(<e:tri>)[\[e:tri\]];と三角化されて右上三角行列を$T$とおくと、
$f_A (x) = f_T (x) = (x - c_1) dots.h.c (x - c_N)$で
$ f_A (A) = P f_A (T) P^(- 1) $ より、$f_A (A) = O$がわかる。~◻

]
以上の二つの定理を使えば例えば以下のことがわかる。

#block[
代数的閉体$K$上の$N$次正方行列$A$がある$n = 1 , 2 , 3 , dots.h.c$で
$ A^n = O $ を満たす時、$A^N = O$が成り立つ。

]
このような行列のことを#emph[べき零行列];という。

#block[
#emph[Proof.]
$f (x) = x^n$とおいてフロベニウスの定理を用いると、$A$の固有値を$c in K$とおくと$f (c) = c^n$は$f (A) = A^n$の固有値である。
ここで$A^n = O$の固有値は$0$しかないので、$c^n = 0$がわかり$A$の固有値は全て$0$であることがわかる。
よって、$A$の固有多項式は$f_A (x) = x^N$であり、ケイリー・ハミルトンの定理より$f_A (A) = A^N = O$が従う。~◻

]
== 広義固有空間
<広義固有空間>
固有多項式の零点の重複度（代数的重複度）と固有空間の次数（幾何学的重複度）には差がある可能性があるのであった。
その差を埋めるにはどうすればいいだろうか。
そのためのアイデアが固有空間を拡張した広義固有空間である。

#block[
$A$を$K$上の正方行列として、$x in K$に対して
\$\$\\tilde{W}(x) = \\lrset{ \\vb\*{v} \\in K^N \\mid (x I-A)^n\\vb\*{v} = \\vb\*{0}, n = 0, 1, 2, 3, \\cdots }\$\$
を定め、固有値$x = c$に対して$tilde(W) (c)$を$A$の固有値$c$に対する#emph[広義固有空間];という。

]
$tilde(W) (x)$は$K^N$の線形部分空間である。

#block[
$T$を$K$上の線形空間$V$上の線形変換として、$c , d in K$を異なる固有値とする。
このとき広義固有空間について$tilde(W) (c) sect tilde(W) (d) = O_V$が成り立つ。

]
#block[
#emph[Proof.];~◻

]
== ジョルダン標準形
<ジョルダン標準形>
