= 対角化
<対角化>
== 共役と内積
<共役と内積>
この章では対角化の十分条件などを与えるために線形空間に内積の構造を（入れられる場合に）入れる。
また、複素数体上の線形空間に内積を入れるために共役の概念も合わせて導入する。

#block[
$V$を$K$上の線形空間とする。
次を満たす対応$overline(dot.op) : K arrow.r K$と\$\\lrangle{\\cdot, \\cdot}: V\\times V \\to K\$をそれぞれ$K$上の#emph[共役];と$V$上の#emph[内積];といい、$V$を#emph[内積空間];という。

+ （第二変数に関する線形性）任意の$c , d in K$と\$\\vb\*{u}, \\vb\*{v}, \\vb\*{w} \\in V\$に対して、\$\\lrangle{\\vb\*{u}, c\\vb\*{v}+d\\vb\*{w}} = c\\lrangle{\\vb\*{u}, \\vb\*{v}}+d\\lrangle{\\vb\*{u}, \\vb\*{w}}\$が成り立つ。

+ （非退化性）\$\\vb\*{v} \\in V\$が\$\\lrangle{\\vb\*{v}, \\vb\*{v}} = 0\$を満たすならば\$\\vb\*{v} = \\vb\*{0}\$である。

+ （共役対称性）任意の\$\\vb\*{u}, \\vb\*{v} \\in V\$に対して、\$\\lrangle{\\vb\*{v}, \\vb\*{u}} = \\overline{\\lrangle{\\vb\*{u}, \\vb\*{v}}}\$が成り立つ。

+ （加法の共役）任意の$a , b in K$に対して、$overline(a + b) = overline(a) + overline(b)$が成り立つ。

+ （乗法の共役）任意の$a , b in K$に対して、$overline(a dot.op b) = overline(a) dot.op overline(b)$が成り立つ。

]
#block[
内積の第一変数に関する線形性について
\$\$\\lrangle{c\\vb\*{v}+d\\vb\*{w}, \\vb\*{u}}
= \\overline{\\lrangle{\\vb\*{u}, c\\vb\*{v}+d\\vb\*{w}}}
= \\overline{c\\lrangle{\\vb\*{u}, \\vb\*{v}}+d\\lrangle{\\vb\*{u}, \\vb\*{w}}}
= \\overline{c}\\overline{\\lrangle{\\vb\*{u}, \\vb\*{v}}}+\\overline{d}\\overline{\\lrangle{\\vb\*{u}, \\vb\*{w}}}
= \\overline{c}\\lrangle{\\vb\*{v}, \\vb\*{u}}+\\overline{d}\\lrangle{\\vb\*{w}, \\vb\*{u}}\$\$
が成り立ち、共役線形性などと呼ばれる。

]
#block[
共役について、$overline(0) = 0$と$overline(1)^2 = overline(1)$がわかる。
$overline(1) = 0$だとすると、任意の$a in K$に対して$overline(a) = 0 dot.op overline(a) = 0$で、
共役対称性から\$\\lrangle{\\vb\*{v}, \\vb\*{u}} = 0\$で非退化性から$V = O$以外あり得ない。
なので$V$が自明な線形空間でない時は$overline(1) = 1$である。
また、共役対称性より二回共役を取ると\$\\overline{\\overline{\\lrangle{\\vb\*{u}, \\vb\*{v}}}} = \\lrangle{\\vb\*{u}, \\vb\*{v}}\$が成り立ち、内積は全射になるので、任意の$a in K$に対して
$ overline(overline(a)) = a $ が成り立つ。

]
スカラー$K$に共役の構造が入ったら、数ベクトル\$\\vb\*{v} = (v\_1, \\cdots, v\_N) \\in K^N\$と行列$A = (a_(i j))_(j = 1 , dots.h.c , N)^(i = 1 , dots.h.c , M)$に対する共役を成分ごとに共役をとったもの
\$\$\\overline{\\vb\*{v}} = (\\overline{v\_1}, \\cdots, \\overline{v\_N}),
\\quad
\\overline{A} = \\mqty(\\overline{a\_{1 1}} & \\cdots & \\overline{a\_{1 N}} \\\\ \\vdots & \\ddots & \\vdots \\\\ \\overline{a\_{M 1}} & \\cdots & \\overline{a\_{M N}})\$\$
として定められる。

数ベクトル空間$K^N$上の内積をスカラー積を使って
\$\$\\lrangle{\\vb\*{u}, \\vb\*{v}}
= \\overline{\\vb\*{u}}\\cdot\\vb\*{v}
= \\overline{u\_1} v\_1+\\cdots+\\overline{u\_N} v\_N\$\$
として定めたものを$K^N$の#emph[標準内積];という。
ただし、標準内積がちゃんと内積になっているかは非退化性の条件が成り立っているかどうか確認する必要がある。

#block[
共役が定義される体$K$が#emph[非退化];であるとは、任意の$n = 1 , 2 , 3 , dots.h.c$と任意の$n$個のスカラー$c_1 , dots.h.c , c_n in K$について
$ overline(c_1) c_1 + dots.h.c + overline(c_n) c_n = 0 $
ならば、$c_1 = dots.h.c = c_n = 0$が成り立つことをいう。

]
非退化な体$K$上では任意の$N = 1 , 2 , 3 , dots.h.c$に対して数ベクトル空間$K^N$は標準内積について内積空間になる。

#block[
実数体$bb(R)$上の共役を$overline(a) = a$で定めるとこれは非退化である。

]
#block[
複素数体$bb(C)$上の共役を#emph[複素共役];$overline(a + b i) = a - b i$で定めるとこれは非退化である。

]
#block[
一般の非退化とは限らない体$K$上の共役を$overline(a) = a$で定め、$K$を$K$上の線形空間として見た時内積を単なる積\$\\lrangle{u, v} = u v\$で定めると$K$は内積空間になる。
つまり、$N = 1$の時$bb(C)^N$は二通りの内積の入れ方があることになる。

]
== シュミットの直交化
<シュミットの直交化>
内積空間$V$上の二つのベクトル\$\\vb\*{u}\$と\$\\vb\*{v}\$が#emph[直交する];とは
\$\$\\lrangle{\\vb\*{u}, \\vb\*{v}} = 0\$\$ が成り立つことをいう。
定義上は\$\\vb\*{u} = \\vb\*{0}\$または\$\\vb\*{v} = \\vb\*{0}\$が成り立っていたら\$\\vb\*{u}\$と\$\\vb\*{v}\$は必ず直交している。
また、ベクトル\$\\vb\*{v}\$が#emph[単位ベクトル];とは
\$\$\\lrangle{\\vb\*{v}, \\vb\*{v}} = 1\$\$ が成り立つことをいう。

$V$の基底\$\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N\$が各$i eq.not j$,
$i , j = 1 , dots.h.c , N$に対して\$\\vb\*{v}\_i\$と\$\\vb\*{v}\_j\$が直交することを満たす時、#emph[直交基底];であるという。
直交基底がさらに各$i = 1 , dots.h.c , N$に対して\$\\vb\*{v}\_i\$が単位ベクトルである時、#emph[正規直交基底];であるという。

本節の目標は$V$の基底が与えられた時に直交基底あるいは正規直交基底に取り替えることである。
そのことを表現するために$V$の$N = 1 , dots.h.c$個の零ベクトルでないベクトル\$\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N\$が各$i eq.not j$,
$i , j = 1 , dots.h.c , N$に対して\$\\vb\*{v}\_i\$と\$\\vb\*{v}\_j\$が直交することを満たす時、$V$の#emph[直交系];であるということにする。
また、各\$\\vb\*{v}\_i\$が単位ベクトルである時、$V$の#emph[正規直交系];であるという。

#block[
\$\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N\$を$K$上の内積空間$V$の直交系とする時、それらは線形独立である。

]
#block[
#emph[Proof.] スカラー$c_1 , dots.h.c , c_N in K$に対して
\$\$c\_1\\vb\*{v}\_1+\\cdots+c\_N\\vb\*{v}\_N = \\vb\*{0}\$\$
が成り立ったとする時、各$i = 1 , dots.h.c , N$に対して、\$\\vb\*{v}\_i\$との内積を取って
\$\$\\lrangle{\\vb\*{v}\_i, c\_1\\vb\*{v}\_1+\\cdots+c\_N\\vb\*{v}\_N} = c\_i\\lrangle{\\vb\*{v}\_i, \\vb\*{v}\_i} = 0.\$\$
よって$c_i = 0$なので、\$\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N\$は線形独立である。~◻

]
この命題とその証明から内積空間$V$の直交系\$\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N\$が与えられるとそれは線形独立で$V$の線形部分空間\$W = \\lrangle{\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N}\$が得られる。
そのベクトル\$\\vb\*{v} = c\_1\\vb\*{v}\_1+\\cdots+c\_N\\vb\*{v}\_N \\in W\$と$i = 1 , dots.h.c , N$に対して、\$\\vb\*{v}\_i\$との内積を取ると\$\\lrangle{\\vb\*{v}\_i, \\vb\*{v}} = c\_i\\lrangle{\\vb\*{v}\_i, \\vb\*{v}\_i}\$でありこのスカラー値$c_i$のことを\$\\vb\*{v}\$の\$\\vb\*{v}\_i\$#emph[成分];と呼ぶ。

逆に線形独立なベクトルが与えられたときに成分を引くことで直交系を構成するというのがシュミットの直交化である。

#block[
$V$を内積空間として\$\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N\$を線形独立なベクトルとして、次の方法によって$V$の新しいベクトル\$\\vb\*{u}\_1, \\cdots, \\vb\*{u}\_N\$を構成する。
\$\$\\begin{aligned}
&\\vb\*{u}\_1 = \\vb\*{v}\_1,
\\quad
\\vb\*{u}\_2 = \\vb\*{v}\_2-\\frac{\\lrangle{\\vb\*{u}\_1, \\vb\*{v}\_2}}{\\lrangle{\\vb\*{u}\_1, \\vb\*{u}\_1}}\\vb\*{u}\_1,
\\quad
\\vb\*{u}\_3 = \\vb\*{v}\_3-\\frac{\\lrangle{\\vb\*{u}\_1, \\vb\*{v}\_3}}{\\lrangle{\\vb\*{u}\_1, \\vb\*{u}\_1}}\\vb\*{u}\_1-\\frac{\\lrangle{\\vb\*{u}\_2, \\vb\*{v}\_3}}{\\lrangle{\\vb\*{u}\_2, \\vb\*{u}\_2}}\\vb\*{u}\_2, \\\\
&\\quad \\cdots,
\\quad
\\vb\*{u}\_N = \\vb\*{v}\_N-\\frac{\\lrangle{\\vb\*{u}\_1, \\vb\*{v}\_N}}{\\lrangle{\\vb\*{u}\_1, \\vb\*{u}\_1}}\\vb\*{u}\_1-\\cdots-\\frac{\\lrangle{\\vb\*{u}\_{N-1}, \\vb\*{v}\_N}}{\\lrangle{\\vb\*{u}\_{N-1}, \\vb\*{u}\_{N-1}}}\\vb\*{u}\_{N-1}.
\\end{aligned}\$\$
このとき\$\\vb\*{u}\_1, \\cdots, \\vb\*{u}\_N\$は$V$の直交系であり、\$\\lrangle{\\vb\*{u}\_1, \\cdots, \\vb\*{u}\_N} = \\lrangle{\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N}\$が成り立つ。

]
#block[
#emph[Proof.] $N$についての数学的帰納法による。
$N = 1$の時、\$\\vb\*{u}\_1 = \\vb\*{v}\_1 \\ne \\vb\*{0}\$より成立する。
$N$個で成立した時、$N + 1$個目のベクトルを
\$\$\\vb\*{u}\_{N+1} = \\vb\*{v}\_{N+1}-\\frac{\\lrangle{\\vb\*{u}\_1, \\vb\*{v}\_{N+1}}}{\\lrangle{\\vb\*{u}\_1, \\vb\*{u}\_1}}\\vb\*{u}\_1-\\cdots-\\frac{\\lrangle{\\vb\*{u}\_N, \\vb\*{v}\_{N+1}}}{\\lrangle{\\vb\*{u}\_N, \\vb\*{u}\_N}}\\vb\*{u}\_N\$\$
で定めると、\$\\vb\*{u}\_1, \\cdots, \\vb\*{u}\_N\$は$V$の直交系より、各$i = 1 , dots.h.c , N$に対して\$\\vb\*{u}\_i\$との内積を取って、
\$\$\\lrangle{\\vb\*{u}\_i, \\vb\*{u}\_{N+1}} = \\lrangle{\\vb\*{u}\_i, \\vb\*{v}\_{N+1}}-\\frac{\\lrangle{\\vb\*{u}\_i, \\vb\*{v}\_{N+1}}}{\\lrangle{\\vb\*{u}\_i, \\vb\*{u}\_i}}\\lrangle{\\vb\*{u}\_i, \\vb\*{u}\_i} = 0.\$\$
また、\$\\vb\*{u}\_{N+1} = \\vb\*{0}\$とすると \$\$\\vb\*{v}\_{N+1}
= \\frac{\\lrangle{\\vb\*{u}\_1, \\vb\*{v}\_{N+1}}}{\\lrangle{\\vb\*{u}\_1, \\vb\*{u}\_1}}\\vb\*{u}\_1+\\cdots+\\frac{\\lrangle{\\vb\*{u}\_N, \\vb\*{v}\_{N+1}}}{\\lrangle{\\vb\*{u}\_N, \\vb\*{u}\_N}}\\vb\*{u}\_N
\\in \\lrangle{\\vb\*{u}\_1, \\cdots, \\vb\*{u}\_N}
= \\lrangle{\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N}\$\$
となるが、これは\$\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N, \\vb\*{v}\_{N+1}\$が線形独立であるという仮定に反する。
よって、\$\\vb\*{u}\_1, \\cdots, \\vb\*{u}\_N, \\vb\*{u}\_{N+1}\$は$V$の直交系である。
他の部分の証明も容易であり、定理の主張を得る。~◻

]
#block[
\$\\vb\*{u}\_1, \\cdots, \\vb\*{u}\_N\$の構成方法から
\$\$\\mqty(\\vb\*{v}\_1 & \\cdots & \\vb\*{v}\_N)
= \\mqty(\\vb\*{u}\_1 & \\cdots & \\vb\*{u}\_N)\\mqty(1 & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & 1)\$\$
と表示できる。

]
#block[
任意の有限次元内積空間$V$には直交基底が存在する。

]
正規化のためには平方根を導入する必要がある。

#block[
$K$を非退化な体として、その#emph[正値の部分];を
\$\$K\_{\\ge 0} = \\lrset{ \\overline{c\_1}c\_1+\\cdots+\\overline{c\_n}c\_n \\mid n = 1, 2, 3, \\cdots, c\_1, \\cdots, c\_n \\in K }\$\$
とする。 ここで正値$c in K_(gt.eq 0)$に対して、 $ overline(x) x = c $
を満たす正値$x in K_(gt.eq 0)$が一意に存在する時、$x$を$c$の#emph[正の平方根];といい$sqrt(c)$と表す。
さらに任意の$c in K_(gt.eq 0)$に対して正の平方根$sqrt(c)$が存在する時、$K$は#emph[正規化可能];と呼ぶ。

]
#block[
$0$は$0$の正の平方根であり、$1$は$1$の正の平方根である。
$overline(x) x = c$と書いたが、正値$x in K_(gt.eq 0)$の共役は
$ overline(x) = overline(overline(c_1) c_1 + dots.h.c + overline(c_n) c_n) = c_1 overline(c_1) + dots.h.c + c_n overline(c_n) = x $
なので、通常の意味での平方根$x^2 = x x = c$と認識したのでよい。

]
#block[
実数体$bb(R)$の正値の部分は非負の実数全体である。
非負の実数には正の平方根が存在するので、$bb(R)$は正規化可能な体である。
同様にして、複素共役の入った複素数体$bb(C)$の正値の部分は非負の実数全体なので、$bb(C)$は正規化可能な体である。
しかしながら、非負の有理数$2 = overline(1) dot.op 1 + overline(1) dot.op 1$に対して、$sqrt(2)$は無理数なので、$bb(Q)$は正規化可能でない。

]
#block[
複素共役の入った代数的数の体$bb(Q)^(‾)$の正値の部分は非負の代数的数であり、非負の代数的数$c$を多項式$f (x)$の零点とすると多項式$f (x^2)$の零点を考えることで、$bb(Q)^(‾)$は正規化可能な体であることが結論づけられる。

]
#block[
正規化可能な体#emph[K];上の数ベクトル\$\\vb\*{v}\$に対して、\$\\lrangle{\\vb\*{v}, \\vb\*{v}}\$は$K_(gt.eq 0)$の元である。
さらにその正の平方根を\$\\norm{\\vb\*{v}} = \\sqrt{\\lrangle{\\vb\*{v}, \\vb\*{v}}} \\in K\_{\\ge 0}\$とおく。
ここで、\$\\vb\*{v} \\ne \\vb\*{0}\$に対して
\$\$\\tilde{\\vb\*{v}} = \\norm{\\vb\*{v}}^{-1}\\vb\*{v}\$\$
とおくとこれは単位ベクトルになっている。

]
このときの\$\\norm{\\vb\*{v}}\$の#emph[ノルム];または#emph[大きさ];あるいは#emph[長さ];という。

正規化を各ベクトルに実施することにより直交基底から正規直交基底を作ることができる。

== 随伴行列
<随伴行列>
標準内積の入った数ベクトル空間$K^N$を考える。 $N$次正方行列$A$に対して、
\$\$\\lrangle{\\vb\*{u}, A\\vb\*{v}} = \\lrangle{A^\*\\vb\*{u}, \\vb\*{v}}\$\$
が任意の\$\\vb\*{u}, \\vb\*{v} \\in K^N\$に対して成り立つような$N$次正方行列$A^(\*)$のことを$A$の#emph[随伴行列];という。
すぐ後でわかる通り随伴行列は$A$の共役転置行列で実現される。
$M times N$型の行列$A$の#emph[共役転置行列];は
\$\$\\overline{A}^T = \\mqty(\\overline{a\_{1 1}} & \\cdots & \\overline{a\_{M 1}} \\\\ \\vdots & \\ddots & \\vdots \\\\ \\overline{a\_{1 N}} & \\cdots & \\overline{a\_{M N}})\$\$
として定義される。

#block[
$N$次正方行列$A$の随伴行列は$A^(\*) = overline(A)^T$で与えられる。

]
#block[
#emph[Proof.] 標準内積を行列の積で書くことにより、
\$\$\\lrangle{\\vb\*{u}, A\\vb\*{v}}
= \\overline{\\vb\*{u}}^T A\\vb\*{v}
= \\overline{\\overline{A}^T \\vb\*{u}}^T \\vb\*{v}
= \\lrangle{\\overline{A}^T \\vb\*{u}, \\vb\*{v}}.\$\$
よって、$A^(\*) = overline(A)^T$である。~◻

]
ここからいくつかの行列の種類を導入する。

#block[
$N$次正方行列$A$が $ A^(\*) = A $
を満たす時、$A$は#emph[エルミート行列];という。

]
#block[
$N$次正方行列$A$が $ A^(\*) A = A A^(\*) $
であってそれらが正則な対角行列である時、$A$は#emph[直交行列];という。
さらに $ A^(\*) A = A A^(\*) = I_N $
を満たす時、$A$は#emph[正規直交行列];または#emph[ユニタリ行列];という。

]
#block[
\$A = \\begin{pmatrix}\\vb\*{a}\_1 & \\cdots & \\vb\*{a}\_N\\end{pmatrix}\$と分割すると、
$A$が直交行列であることと\$\\vb\*{a}\_1, \\cdots, \\vb\*{a}\_N\$が直交基底であることは同値であり、
$A$が正規直交行列であることと\$\\vb\*{a}\_1, \\cdots, \\vb\*{a}\_N\$が正規直交基底であることは同値であり、

]
一般的な用語としては直交行列は実数上のユニタリ行列のことを指すが、本テキストでは直交基底という用語との兼ね合いでこのように定義する。

直交行列と正規直交行列の違いは正規化されているかどうかだが、
正規直交行列$A$の逆行列は計算するまでもなく直ちに随伴$A^(\*)$であることがわかる。

#block[
$N$次正方行列$A$が $ A^(\*) A = A A^(\*) $
を満たす時、$A$は#emph[正規行列];という。

]
#block[
エルミート行列やユニタリ行列は正規行列であり、正規行列は非常に広い行列の種類である。

]
== 正規行列の対角化
<正規行列の対角化>
対角化の結果に行く前に内積空間において三角化の結果を精密化する。

#block[
数ベクトル空間$K^N$が内積空間になっているとする。
$N$次正方行列$A$に対して、固有多項式が#link(<e:eigenfactor>)[\[e:eigenfactor\]];と因数分解されたとすると、$A$は直交行列$P$を使って#link(<e:tri>)[\[e:tri\]];と三角化される。
さらに$K$が正規化可能な場合は$P$は正規直交行列として取れる。

]
#block[
#emph[Proof.]
定理@t:triより正則行列$P$を使って#link(<e:tri>)[\[e:tri\]];と三角化される。
\$P = \\mqty(\\vb\*{v}\_1 & \\cdots & \\vb\*{v}\_N)\$と区分けすると\$\\vb\*{v}\_1, \\cdots, \\vb\*{v}\_N\$は$K^N$の基底になっており、
この基底をシュミットの直交化して直交基底\$\\vb\*{u}\_1, \\cdots, \\vb\*{u}\_N\$を得ると、
直交行列\$\\bar{P} = \\mqty(\\vb\*{u}\_1 & \\cdots & \\vb\*{u}\_N)\$により、
\$\$A = \\bar{P}\\mqty(1 & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & 1)\\mqty(c\_1 & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & c\_N)\\mqty(1 & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & 1)^{-1}\\bar{P}^{-1}\$\$
となる。 よって、右上三角行列の積は右上三角行列であることに注意して、
\$\$A = \\bar{P}\\mqty(c\_1 & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & c\_N)\\bar{P}^{-1}\$\$
とできる。 さらに正規化して正規直交行列 \$\$\\tilde{P}
= \\mqty(\\norm{\\vb\*{u}\_1}^{-1}\\vb\*{u}\_1 & \\cdots & \\norm{\\vb\*{u}\_N}^{-1}\\vb\*{u}\_N)
= \\bar{P}\\mqty(\\dmat{\\norm{\\vb\*{u}\_1}^{-1}, \\ddots, \\norm{\\vb\*{u}\_N}^{-1}})\$\$
を定めると、 \$\$A
= \\tilde{P}\\mqty(\\dmat{\\norm{\\vb\*{u}\_1}, \\ddots, \\norm{\\vb\*{u}\_N}})\\mqty(c\_1 & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & c\_N)\\mqty(\\dmat{\\norm{\\vb\*{u}\_1}^{-1}, \\ddots, \\norm{\\vb\*{u}\_N}^{-1}})\\tilde{P}^{-1}
= \\tilde{P}\\mqty(c\_1 & \\cdots & \* \\\\ & \\ddots & \\vdots \\\\ & & c\_N)\\tilde{P}^{-1}\$\$
とできる。~◻

]
#block[
体$K$を非退化とする。
$N$次正規行列$A$に対して、固有多項式が#link(<e:eigenfactor>)[\[e:eigenfactor\]];と因数分解されたとすると、$A$は直交行列$P$を使って
\$\$A = P\\mqty(\\dmat{c\_1, \\ddots, c\_N})P^{-1}\$\$ と対角化される。
さらに$K$が正規化可能な場合は$P$は正規直交行列として取れる。

]
証明の流れは上の補題で$A$を三角行列$T$に三角化したとすると、
$A$の正規性を継承して$T$も正規になり、正規な三角行列は対角行列しかないことを示す。
$A$が正規直交行列（ユニタリ行列）で三角化していたらこれでいいが、今回は少し違うので修正が必要である。

#block[
#emph[Proof.]
$A$は直交行列\$P = \\mqty(\\vb\*{v}\_1 & \\cdots & \\vb\*{v}\_N)\$と三角行列$T = (c_(i j))_(j = 1 , dots.h.c , N)^(i = 1 , dots.h.c , N)$を使って$A = P T P^(- 1)$と表されて、このとき$T$は対角行列であることを示す。
ここで、$A^(\*) A = (P^(- 1))^(\*) T^(\*) P^(\*) P T P^(- 1)$と$A A^(\*) = P T P^(- 1) (P^(- 1))^(\*) T^(\*) P^(\*)$で$A$は正規なのでこの二つが等しいので、
$ T^(\*) P^(\*) P T (P^(\*) P)^(- 1) = P^(\*) P T (P^(\*) P)^(- 1) T^(\*) . $
ここで、$P$は直交行列より$P^(\*) P$は対角行列
\$\$D = P^\* P = \\mqty(\\dmat{\\lrangle{\\vb\*{v}\_1, \\vb\*{v}\_1}, \\ddots, \\lrangle{\\vb\*{v}\_N, \\vb\*{v}\_N}})\$\$
なので対角成分を$d_1 , dots.h.c , d_N$とおくと、
$ D T D^(- 1) = (d_i c_(i j) d_j^(- 1)) $ である。
よって、$T^(\*) D T D^(- 1) = D T D^(- 1) T^(\*)$から、各$i , j = 1 , dots.h.c , N$に対して
$ sum_(k = 1)^N overline(c_(k i)) d_k c_(k j) d_j^(- 1) = sum_(k = 1)^N d_i c_(i k) d_k^(- 1) overline(c_(j k)) . $
これを対角成分で$i = j$が大きい方から考えると、$T$は三角行列であることに注意して$i = j = N$の時、
$ overline(c_(1 N)) d_1 c_(1 N) d_N^(- 1) + dots.h.c + overline(c_(N N)) d_N c_(N N) d_N^(- 1) = d_N c_(N N) d_N^(- 1) overline(c_(N N)) . $
つまり
$ overline(c_(1 N)) c_(1 N) d_1 + dots.h.c + overline(c_(N - 1 N)) c_(N - 1 N) d_(N - 1) = 0 $
で、$K$が非退化である条件が使える状況になっていて、$c_(1 N) = dots.h.c = c_(N - 1 N)$がわかる。
これを繰り返していけば$T$は対角行列にならざるを得ないことがわかり、定理の証明が完成する。~◻

]
== 実対称行列の対角化
<実対称行列の対角化>
まず、エルミート行列の固有値について調べる。

#block[
エルミート行列$A$の全ての固有値$c$は $ overline(c) = c $ を満たす。

]
#block[
#emph[Proof.]
固有ベクトルの一つを\$\\vb\*{v} \\ne \\vb\*{0}\$とおくと\$A\\vb\*{v} = c\\vb\*{v}\$なので、
標準内積について
\$\$\\lrangle{\\vb\*{v}, A\\vb\*{v}} = \\lrangle{\\vb\*{v}, c\\vb\*{v}} = c\\lrangle{\\vb\*{v}, \\vb\*{v}}.\$\$
また、$A$はエルミート行列より随伴行列$A^(\*)$は$A$自身なので、
\$\$\\lrangle{\\vb\*{v}, A\\vb\*{v}} = \\lrangle{A\\vb\*{v}, \\vb\*{v}} = \\lrangle{c\\vb\*{v}, \\vb\*{v}} = \\overline{c}\\lrangle{\\vb\*{v}, \\vb\*{v}}.\$\$
以上のことと\$\\vb\*{v} \\ne \\vb\*{0}\$より$overline(c) = c$である。~◻

]
この定理で出てくるスカラーの範囲を考える。 非退化な体$K$に対して
\$\$\\mathrm{R}(K) = \\lrset{ a \\in K \\mid \\overline{a} = a }\$\$
とおき、$K$の#emph[実部];と呼ぶ。
$upright(R) (K)$は$K$の加法と乗法で閉じていて、$K$のいわゆる部分体になっている。
