
= 固有値問題

#import "deps/theorem.typ": thmrules, theorem, lemma, proposition, corollary, definition, example, remark, proof
#show: thmrules.with()

#let Ker = $op("Ker")$

== 固有値と固有ベクトル

いよいよこの章から体$K$上の$N$次正方行列$A$の$n = 0, 1, 2, 3, dots$乗を計算するのに役に立つ理論を学ぶ。
例えば$A$が$N$次正則行列$P$を使って次のように変形されたとする。
$
A = P mat(c_1, , ; , dots.down, ; , , c_N) P^(-1).
$
一般に$N$次正方行列$A$を$N$次正則行列$P$を使って$B = P^(-1) A P$と変形することを_相似変換_といい、このように相似変換して対角行列にすることを_対角化_という。
このとき、$P = mat(bold(v)_1, dots.c, bold(v)_N)$とすると
$
A mat(bold(v)_1, dots.c, bold(v)_N) = mat(c_1 bold(v)_1, dots.c, c_N bold(v)_N)
$
なので、
$
A bold(v) = x bold(v)
$ <e_eigen>
を満たす$(x, bold(v)) = (c_1, bold(v)_1), dots, (c_N, bold(v)_N)$であって$bold(v)_1, dots, bold(v)_N$が線形独立であるものを見つけてくれば対角化できることになる。
この時の$x$を$A$の_固有値_、$bold(v)$を$A$の_固有ベクトル_といい関係式@e_eigen を_固有値問題_という。

それではどうやって固有値・固有ベクトルを見つけてくればよいのだろうか。
@e_eigen を変形すると$bold(v)$は斉次連立一次方程式
$
(x I-A) bold(v) = bold(0)
$
の解であり、$bold(v) eq.not bold(0)$でないと線形独立にならない。
よって、$N$次正方行列$x I-A$は逆行列を持たないので、
$
det(x I-A) = 0
$
が成立する。
これを$x$についての方程式とみて$A$の_固有方程式_という。
なお、左辺は$x$についての$K$係数の$N$次の多項式になっていて、$A$の_固有多項式_という。
固有方程式の解つまり固有多項式の零点が固有値であり、$x in K$に対して$K^N$の線形部分空間
$
W(x) = Ker(x I-A) = { bold(v) in K^N mid(|) (x I-A) bold(v) = bold(0) }
$
を定め、固有値$x = c$に対して$W (c)$を$A$の固有値$c$に対する_固有空間_という。
このとき$dim W(c) >= 1$に注意する。

#example[
第1章で紹介した液体の入れ替えの問題をもとに片方の容器から$p in [0, 1]$の割合をもう片方の容器から$q in [0, 1]$の割合の液体を入れ替える問題を考えると、係数行列は
$
A = mat(1-p, q; p, 1-q)
$
となりこれを対角化することを考える。 $A$の固有多項式は
$
det(x I-A)
&= mat(delim: "|", x-1+p, -q; -p, x-1+q)
= (x-1+p)(x-1+q)-p q \
&= x^2-(2-p-q)x+1-p-q
= (x-1)(x-1+p+q).
$
よって固有値は$x = 1, 1-p-q$である。
ここで$p+q = 0$の時この固有値は$1$が$2$重になるが、$p = q = 0$なので$A = mat(1, 0; 0, 1)$と最初から対角化されている。
$p+q eq.not 0$の場合は$2$つの異なる固有値を持つので$A$は対角化可能である。
この時、固有値$x = 1$に対しては
$
x I_2-A = mat(p, -q; -p, q)
$
より固有ベクトルとして$(q, p)$が取れて、
固有値$x = 1-p-q$に対しては
$
x I_2-A = mat(-q, -q; -p, -p)
$
より固有ベクトルとして$(1, -1)$が取れる。
よって、$A$は
$A
= mat(1-p, q; p, 1-q)
= mat(q, 1; p, -1) mat(1, 0; 0, 1-p-q) mat(q, 1; p, -1)^(-1)
$
と対角化でき、
$
A^n
= mat(q, 1; p, -1) mat(1, 0; 0, (1-p-q)^n) mat(q, 1; p, -1)^(-1)
$
と計算できる。
]

== 固有空間の線形独立性

#lemma([固有空間の線形独立性])[
$T$を$K$上の線形空間$V$上の線形変換として、$c, d in K$を異なる固有値とする。
このとき固有空間について$W(c) sect W(d) = O_V$が成り立つ。
]

#proof[
$bold(v) in W(c) sect W(d)$とすると、
$
A bold(v) = c bold(v) = d bold(v).
$
よって、$c eq.not d$より$bold(v) = bold(0)_V$を得る。
]

#theorem([対角化の十分条件])[
$A$を$K$上の$N$次元正方行列として、$c_1, dots, c_L in K$を相異なる固有値とする。
ここで固有空間が$W(c_1) xor dots xor W(c_L) = K^N$、つまり$dim W(c_1)+dots+dim W(c_L) = N$を満たすとき、$A$は対角化可能である。

特に$K$上の$N$次元正方行列$A$が相異なる$N$個の固有値を持つならば、$A$は対角化可能である。
]

== 三角化可能性

対角化を緩和して、$N$次正方行列$A$を$N$次正則行列$P$を使って
$
A = P mat(c_1, dots.c, \*; , dots.down, dots.v; , , c_N) P^(-1)
$ <e_tri>
と変形することを_三角化_という。
本節の見出しは三角化「可能性」となっているが、後で見るように三角化なら（固有方程式が解ければ）常にできることが重要である。

まず、三角化できるならば固有多項式が因数分解されることを紹介する。

#proposition[
$N$次正方行列$A$が@e_tri と三角化されたとすると固有多項式は
$
det(x I-A) = (x-c_1) dots (x-c_N)
$ <e_eigenfactor>
と因数分解される。
] <t_eigenfactor>

#proof[
$x I-A$を書き直すと
$
x I-A
= P mat(x-c_1, dots.c, \*; , dots.down, dots.v; , , x-c_N) P^(-1)
$
この行列式を取ると、
$
det(x I-A)
= det P mat(delim: "|", x-c_1, dots.c, \*; , dots.down, dots.v; , , x-c_N) det P^(-1)
= (x-c_1) dots (x-c_N)
$
である。
]

逆に固有多項式が因数分解されるならば三角化できる。

#theorem([一般の三角化])[
$N$次正方行列$A$に対して、固有多項式が@e_eigenfactor と因数分解されたとすると、$A$は@e_tri と三角化される。
] <t_tri>

#proof[
$N$に関する数学的帰納法で証明する。
$N = 1$の時は$A$はスカラーなので三角化されている。
$N-1$次までで三角化されたとする。
$c_1$は固有方程式の解で固有値なので、
$
A bold(v)_1 = c_1 bold(v)_1
$
となるベクトル$bold(v)_1 eq.not bold(0)$が存在する。
ここで基底の延長を行い、$K^N$の基底$bold(v)_1, bold(v)_2, dots, bold(v)_N$を構成して正則行列$P_0 = mat(bold(v)_1, bold(v)_2, dots.c, bold(v)_N)$とおくと、
$
A P_0
= P_0 mat(c_1, \*, dots.c, \*; 0, \*, dots.c, \*; dots.v, dots.v, dots.down, dots.v; 0, \*, dots.c, \*)
= P_0 mat(c_1, bold(\*); bold(0), A_1)
$
となる。
前の命題の証明同様に行列式を考えると、
$
det(x I_(N-1)-A_1) = (x-c_2) dots (x-c_N)
$
となるので、数学的帰納法の仮定より
$
A_1 = tilde(P)_1 mat(c_2, dots.c, \*; , dots.down, dots.v; , , c_N) tilde(P)_1^(-1)
$
と三角化される。 ここで、
$
P_1 = mat(1, bold(0); bold(0), tilde(P)_1),
quad P = P_0 P_1
$
とおくと、$P$は$N$次正則行列で
$
A P
= P_0 mat(c_1, bold(\*); bold(0), A_1) mat(1, bold(0); bold(0), tilde(P)_1)
= P_0 mat(c_1, bold(\*); bold(0), A_1 tilde(P)_1)
= P mat(c_1, dots, \*; , dots.down, dots.v; , , c_N)
$
となる。
以上より$A$は三角化される。
]

== 代数的閉体

@t_eigenfactor でわかるように、行列が三角化されるためには固有多項式が因数分解されることが必要であるが、
因数分解できることを保証する$K$の条件が代数的閉体であることである。

#definition([代数的閉体])[
体$K$上の$1$次以上の任意の多項式$f(x) in K[x]$に対して零点、つまり$f(c) = 0$となる$c in K$が存在する時、
$K$は_代数的閉体_であるという。
]

#proposition([因数分解])[
$K$を代数的閉体として、$f(x)$をその上の$N = 1, 2, 3, dots$次の多項式であって$x^N$の係数が$1$であるものとする。
このとき、$c_1, dots, c_N in K$を使って
$
f(x) = (x-c_1) dots (x-c_N)
$
と因数分解される。
]

#example[
代数的閉体の重要な例は複素数体$CC$である。
これは代数学の基本定理と呼ばれる定理からわかるが、その証明には$CC$あるいは$RR^2$上の微分積分学の知識が必要である。
なお、実数体$RR$や有理数体$QQ$などは代数的閉体ではない。
]

#example[
複素数の中でも有理数$QQ$上の$1$次以上の多項式$f(x) in QQ[x]$の零点となる数は_代数的数_と呼ばれる。
代数的数全体の集合
$
macron(QQ) = { a in CC mid(|) a^n+c_(n-1) a^(n-1)+dots+c_0 = 0, n = 1, 2, 3, dots, c_0, dots, c_(n-1) in QQ }
$
は複素数体$CC$の部分体であり、代数的閉体になっている。
]

== 固有値の重複度

$A$を体$K$上の$N$次正方行列として、$c$をその固有値とする。
このとき、$A$の固有多項式$det(x I-A)$は$x-c$で割り切れるが、$det(x I-A)$が$(x-c)^n$で割り切れるような最大の$n$を固有値$c$の_代数的重複度_という。
固有多項式は$N$次なので代数的重複度は$1, dots, N$の値を取る。
一方で固有空間$W(c)$の次元を_幾何学的重複度_という。

#proposition[
$A$を$K$上の$N$次正方行列として、$c$をその固有値とする。
このとき$c$の幾何学的重複度は代数的重複度以下である。
つまり$M = dim W(c)$とすると、$A$の固有多項式$det(x I-A)$は$(x-c)^M$で割り切れる。
]

#proof[
線形独立な$M$個のベクトル$bold(v)_1, dots, bold(v)_M in K^N$がとれ、拡張をして$K^N$の基底$bold(v)_1, dots, bold(v)_N$を構成する。
このとき、$P = mat(bold(v)_1, dots.c, bold(v)_N)$を使って、
$
A = P mat(c I_M, \*; O, \*) P^(-1)
$
とでき、
$
x I-A = P mat((x-c)I_M, \*; O, \*) P^(-1)
$
より、$det(x I-A)$は$(x-c)^M$で割り切れる。
]
