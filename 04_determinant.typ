
= 行列式

== 行列式の導入

行列式は正方行列に対して定まる特徴的な量で、その正方行列の可逆性の判定や正方行列が定める線形変換による体積の拡大率に応用される重要な量である。

実は$2$次正方行列の行列式はすでに登場していて、逆行列の公式の係数の分母がそれである。
つまり$2$次正方行列$A = mat(a, b; c, d)$の行列式の値は
$
det A = det mat(a, b; c, d) = mat(delim: "|", a, b; c, d) = a d-b c
$
である。
このように行列式を表すためには$det$を使ったり、行列を表すのに丸括弧を使う代わりに縦棒を使ったりして記述する。
この行列式の値が$0$でないことが逆行列を持つための必要十分条件になるのであった。
また、行列$A$を構成する$2$つのベクトル$vec(a, c)$と$vec(b, d)$のなす平行四辺形の面積を考えると、$abs(a d-b c)$なので行列式の絶対値になっている。
また行列式の計算規則について、
$2$次の縦ベクトル$bold(a), bold(a)', bold(b), bold(b)'$とスカラー$c, c'$に対して多重線形性と呼ばれる等式
$
det mat(c bold(a)+c' bold(a)', bold(b)) = c det mat(bold(a), bold(b))+c' det mat(bold(a)', bold(b)),
quad det mat(bold(a), c bold(b)+c' bold(b)') = c det mat(bold(a), bold(b))+c' det mat(bold(a), bold(b)')
$
が成り立つことと、
二つの$2$次正方行列$A$, $B$に対して積の行列式の等式
$
det (A B) = det A det B
$
が成り立っていることがわかる。
これらは愚直に計算すればわかるが後で一般化された形で証明するので詳細は省略する。

以上に挙げた性質を$3$次以上の行列に拡張するが、その場合の行列式の定義はやや複雑で、置換を使う方法や余因子展開による方法、基本変形による方法などがある。
どの方法でも定義される行列式の値は同一なので、計算する場面に応じてどの方法を使うか選択したり組み合わせて使うことになる。
本テキストでは標準的な線形代数の教科書の流れに従って、まず置換を使う方法で行列式を定義してから、それが余因子展開を満たすことを示し基本変形による行列式の計算方法を紹介する。
そのために次節では置換というものについて定義する。

== 置換と符号

$N = 1, 2, 3, dots$として、$1, dots, N$の並べ替えを$N$次の_置換_という。
より詳しくは$N$次の置換$s$は$N$個の元の集合${ 1, dots, N }$から${ 1, dots, N }$への写像であって逆写像$s^(-1)$を持つもの、
つまり各$i = 1, dots, N$に対して$s(i) = 1, dots, N$がただ一つ対応し$j = 1, dots, N$に対して$s(i) = j$となる$i$がただ一つ対応するので$i = s^(-1) (j)$とする。
$N$次の置換は$1, dots, N$の並べ替えなので$N!$個あることに注意して、
$N$次の置換全体の集合を$S_N$とおく。
置換$s$を表現するのにしばしば上に$1, dots, N$を並べて下に$s(1), dots, s(N)$を並べてそれらを丸括弧で括るという記法が採用され、上半分は$1, dots, N$で固定されるのでしばしば省略される。
つまり、
$ s = mat(1, dots, N; s(1), dots, s(N);) = mat(s(1), dots, s(N)) $
である。 行列の記法と紛らわしいが文脈で判断する。
二つの置換$s$と$t$に対して置換$s$をしてから置換$t$をするという_合成置換_を$t s$と書く。
$(t s)(i) = t(s(i))$である。
また、$1, dots, N$をそのままの並びにする置換を_恒等置換_といい$id_N$や$id$で表す。
$
id_N = mat(1, dots, N; 1, dots, N;)
$
である。
逆写像$s^(-1)$も置換であり置換$s$の_逆置換_という。
$s s^(-1) = s^(-1) s = id$に注意する。

$i eq.not j$を満たす$i, j = 1, dots, N$に対して、$i$と$j$を入れ替えてそれ以外はそのままにする置換を$i$と$j$の_互換_といい$mat(i, j)$と表す。
つまり、
$
mat(i, j) = mat(dots, i, dots, j dots; dots, j, dots, i dots;)
$
である。
この互換は今までの内容で言うと、二つの行を入れ替えるという行基本変形に対応する。

任意の置換はいくつかの互換の合成として表される。

#proposition[
$s$を$N$次の置換とする時、$s$は$N-1$個以下の互換の合成として表される。
ただし、$0$個の互換の合成は恒等置換$id$である。
]

#block[
$N$に関する数学的帰納法で証明する。
$N = 1$の時は$S_1 = { id }$なので成立する。
$N$で成立する時、$N+1$次の置換$s$について考える。
$s(N+1) = N+1$の時は$s$を$1, dots, N$に制限すると$N$次の置換になっているので$N-1$個以下の互換の合成として表される。
$s(N+1) eq.not N+1$の時は$i = s(N+1)$とすると$i = 1, dots, N$であり、$s$に$i$と$N+1$の互換をすると$N+1$を$N+1$に移すようになるので$N-1$個以下の互換の合成として表され、従って$s$は$N$個以下の互換の合成として表される。
以上より証明された。
]

この命題において$N-1$個以下の部分はあまり重要でなく、
重要なのは$s in S_N$に対して$s$を互換の合成として表した時の互換の個数の最小値$n(s)$が定まることである。
さらに$n(s)$が偶数の時$s$は_偶置換_といい、奇数の時_奇置換_と呼ぶことにする。
個数$n = 0, dots, N-1$に対して$n(s) = n$となる$s in S_N$全体を$S_N (n)$と表し、
偶置換全体を$S_N^(+)$で奇置換全体を$S_N^(-)$でそれぞれ表す。
自明なこととして$S_N^(+) sect S_N^(-) = nothing$と$S_N^(+) union S_N^(-) = S_N$が成り立つことがある。

#example[
- $N = 1$の時は
	$
	S_1 = S_1 (0) = { mat(1) }.
	$
- $N = 2$の時は
	$
	S_2 = { mat(1, 2), mat(2, 1) },
	$
	$
	S_2 (0) = { mat(1, 2) },
	quad S_2 (1) = { mat(2, 1) }.
	$
- $N = 3$の時は
	$
	S_3 = { mat(1, 2, 3), mat(2, 1, 3), mat(1, 3, 2), mat(3, 2, 1), mat(2, 3, 1), mat(3, 1, 2) },
	$
	$
	S_3 (0) = { mat(1, 2, 3) },
	quad S_3 (1) = { mat(2, 1, 3), mat(1, 3, 2), mat(3, 2, 1) },
	quad S_3 (2) = { mat(2, 3, 1), mat(3, 1, 2) }.
	$
]

すぐわかることとして$S_N (0) = { id_N }$である。

以降では偶置換に対して正の符号を奇置換に対して負の符号を割り当てたいが、今の互換の個数の最小値に基づく定義では扱いづらいので別の方法でいったん符号を定義する。

#definition([置換の符号])[
$N >= 2$に対して$N$次の置換$s$の符号$sgn(s)$を以下で定義する。
$
sgn(s) = product_(i < j) (s(j)-s(i))/(j-i).
$
ここで$product_(i < j) (s(j)-s(i))/(j-i)$は$i, j = 1, dots, N$が$i < j$を満たしながら動く時の実数$(s(j)-s(i))/(j-i)$すべての積である。
そのため、$sgn(s)$は実数値であるが、のちにすぐわかる通り$sgn(s) = plus.minus 1$しか取り得ない。
$N = 1$の時は$sgn(id) = +1$と定義する。
]

#proposition[
任意の置換$s$の符号$sgn(s)$の値は$+1$または$-1$である。
]

#proof[
$sgn(s)^2 = 1$を示せばよい。
計算すると
$
sgn(s)^2
= product_(i < j) (s(j)-s(i))/(j-i) product_(i < j) (s(j)-s(i))/(j-i)
= product_(i < j) (s(j)-s(i))/(j-i) product_(i < j) (s(i)-s(j))/(i-j)
= product_(i eq.not j) (s(i)-s(j))/(i-j)
= (product_(i eq.not j) (s(i)-s(j)))/(product_(i eq.not j) (i-j)).
$
ここで$s$は置換より、$i, j$が$i eq.not j$を満たしながら動く時$s(i), s(j)$が$s(i) eq.not s(j)$を満たしながら動くので、
$
sgn(s)^2
= (product_(i eq.not j) (i-j))/(product_(i eq.not j) (i-j))
= 1.
$
よって$sgn(s) = plus.minus 1$である。
]

この符号の定義の利点は次の性質が証明しやすいことである。

#proposition[
任意の二つの置換$s, t$に対して$sgn(t s) = sgn(t)sgn(s)$が成り立つ。
]

#proof[
計算すると
$
sgn(t s)
= product_(i < j) (t(s(j))-t(s(i)))/(j-i)
= product_(i < j) (t(s(j))-t(s(i)))/(s(j)-s(i)) (s(j)-s(i))/(j-i)
= sgn(s) product_(i < j) (t(s(j))-t(s(i)))/(s(j)-s(i))
$
ここで、
$
product_(i < j) (t(s(j))-t(s(i)))/(s(j)-s(i))
&= product_(i < j, s(i) < s(j)) (t(s(j))-t(s(i)))/(s(j)-s(i)) product_(i < j, s(i) > s(j)) (t(s(j))-t(s(i)))/(s(j)-s(i)) \
&= product_(i < j, s(i) < s(j)) (t(s(j))-t(s(i)))/(s(j)-s(i)) product_(i < j, s(i) > s(j)) (t(s(i))-t(s(j)))/(s(i)-s(j)) \
&= product_(i < j, s(i) < s(j)) (t(s(j))-t(s(i)))/(s(j)-s(i)) product_(j < i, s(j) > s(i)) (t(s(j))-t(s(i)))/(s(j)-s(i)) \
&= product_(s(i) < s(j)) (t(s(j))-t(s(i)))/(s(j)-s(i))
= product_(i < j) (t(j)-t(i))/(j-i)
= sgn(t)
$
なので、$sgn(t s) = sgn(t)sgn(s)$が従う。
]

#remark[
この命題から逆置換について
$sgn(s)sgn(s^(-1)) = sgn(s s^(-1)) = sgn(id) = product_(i < j) (j-i)/(j-i) = +1
$
なので、$sgn(s^(-1)) = sgn(s)$である。
]

さらに互換の符号は常に負である。

#proposition[
$N >= 2$の時、互換$t$の符号は$sgn(t) = -1$である。
]

#proof[
$t = mat(1, 2)$のとき、
$
sgn(t)
= (t(2)-t(1))/(2-1) product_(j = 3)^N (t(j)-t(1))/(j-1) product_(j = 3)^N (t(j)-t(2))/(j-2) product_(2 < i < j) (t(j)-t(i))/(j-i)
= (1-2)/(2-1) product_(j = 3)^N (j-2)/(j-1) product_(j = 3)^N (j-1)/(j-2)
= -1.
$
一般の互換$t = mat(k, l)$に対しては、$mat(l, k) = mat(k, l)$より$k < l$としてよく、置換$s$を
$
s =
cases(
	id & (k = 1, l = 2)",",
	mat(2, l) & (k = 1, l > 2)",",
	mat(2, l) mat(1, k) & (k > 1)
)
$
とすると$t = s^(-1) mat(1, 2) s$であるので、
$
sgn(t) = sgn(s^(-1))sgn(mat(1, 2))sgn(s) = -1
$
となる。
]

以上のことから偶置換の符号は正で奇置換の符号は負であることがわかる。

== 置換による行列式

行列式は置換とその符号を用いて以下のように定義される。

#definition([行列式])[
$K$上の$N$次正方行列$A = (a_(i j))$の_行列式_を以下で定義する。
$
det A = abs(A)
= mat(delim: "|", a_(1 1), dots.c, a_(1 N); dots.v, dots.down, dots.v; a_(N 1), dots.c, a_(N N);)
= sum_(s in S_N) sgn(s) a_(1 s(1)) dots a_(N s(N)).
$
正確には\$sgn(s)\$は実数の$plus.minus 1$として定義されたがこれを$K$の$plus.minus 1$と同一視して、
行列式は$K$の元つまりスカラーとして定義する。
]

$N$が小さいうちはこの定義によって直接行列式を定義することができる。

#proposition([サラスの公式])[
- $1$次正方行列（スカラー）の行列式は以下になる。
	$
	mat(delim: "|", a) = +a.
	$
- $2$次正方行列の行列式は以下になる。
	$
	mat(delim: "|", a, b; c, d) = +a d-b c.
	$
- $3$次正方行列の行列式は以下になる。
	$
	mat(delim: "|", a, b, c; d, e, f; g, h, i) = +a e i+b f g+c d h-c e g-b d i-a f h.
	$
]

これらの公式は行列の成分を斜めがけして方向によって符号を決めるという覚え方がある（サラスの方法）。
しかしながら$N$が大きくなると置換の個数が$N!$個あるため項数が爆発的に増えるのと、$N >= 4$では覚え方が通用しない。
そこで行列式が満たす性質をうまく使って効率よく計算する必要がある。

== 行列式の性質

重要な行列式の性質として以下が挙げられる。

#proposition([転置])[
$N$次正方行列$A$に対して、
$
det A^T = det A
$
が成り立つ。
]

#proof[
変形すると
$
det A^T
&= sum_(s in S_N) sgn(s) a_(s(1) 1) dots a_(s(N) N)
= sum_(s in S_N) sgn(s) a_(1 s^(-1) (1)) dots a_(N s^(-1) (N))
&= sum_(s in S_N) sgn(s^(-1)) a_(1 s(1)) dots a_(N s(N))
= sum_(s in S_N) sgn(s) a_(1 s(1)) dots a_(N s(N))
= det A.
$
]

#proposition[
第$1$行または第$1$列が第$(1, 1)$成分を残して他がすべて零の行列の行列式について、
$
mat(delim: "|",
	a_(1 1), 0, dots.c, 0;
	a_(2 1), a_(2 2), dots.c, a_(2 N);
	dots.v, dots.v, dots.down, dots.v;
	a_(N 1), a_(N 2), dots.c, a_(N N);
)
= mat(delim: "|",
	a_(1 1), a_(1 2), dots.c, a_(1 N);
	0, a_(2 2), dots.c, a_(2 N);
	dots.v, dots.v, dots.down, dots.v;
	0, a_(N 2), dots.c, a_(N N);
)
= a_(1 1) mat(delim: "|", a_(2 2), dots.c, a_(2 N); dots.v, dots.down, dots.v; a_(N 2), dots.c, a_(N N);)
$
が成り立つ。
]

#proof[
左辺の行列について示せば、中辺の行列はその転置なので前命題より行列式の値は等しい。
その左辺の行列の行列式について、置換$s in S_N$に対して$s(1) eq.not 1$だと$a_(1 s(1)) = 0$である。
よって、$s(1) = 1$であり行列式で$a_(1 s(1)) = a_(1 1)$がくくり出せて命題が従う。
]

この命題を繰り返し用いることで次の命題が従う。

#proposition([三角行列の行列式])[
三角行列の行列式は対角成分を掛け合わせることで得られる。 つまり
$
mat(delim: "|", a_(1 1), dots.c, a_(1 N); , dots.down, dots.v; , , a_(N N);)
= mat(delim: "|", a_(1 1), , ; dots.v, dots.down, ; a_(N 1), dots.c, a_(N N);)
= a_(1 1) dots a_(N N)
$
が成り立つ。
特に単位行列について
$
det I_N = 1
$
である。
]

次の二つの命題は行列式の計算をする上で重要である。

#proposition([多重線形性])[
$N$次の横ベクトル$bold(a)_1, dots, bold(a)_N, bold(a)'_1, dots, bold(a)'_N$とスカラー$c_1, dots, c_N, c'_1, dots, c'_N$に対して、
$
mat(delim: "|", dots.v; c_i bold(a)_i+c'_i bold(a)'_i; dots.v)
= c_i mat(delim: "|", dots.v; bold(a)_i; dots.v)+c'_i mat(delim: "|", dots.v; bold(a)'_i; dots.v)
$
が成り立つ。
また、$N$次の縦ベクトル$bold(a)_1, dots, bold(a)_N, bold(a)'_1, dots, bold(a)'_N$とスカラー$c_1, dots, c_N, c'_1, dots, c'_N$に対して、
$
mat(delim: "|", dots.c, c_i bold(a)_i+c'_i bold(a)'_i, dots.c)
= c_i mat(delim: "|", dots.c, bold(a)_i, dots.c)+c'_i mat(delim: "|", dots.c, bold(a)'_i, dots.c)
$
が成り立つ。
]

#proof[
成分を設定して行列式の定義に従って計算するとすぐわかるので詳細は省略する。
]

#proposition([交代性])[
$N$次の横ベクトル$bold(a)_1, dots, bold(a)_N, bold(a)$と$i eq.not j$を満たす$i, j = 1, dots, N$に対して
$
mat(delim: "|", dots.v; bold(a)_j; dots.v; bold(a)_i; dots.v)
= -mat(delim: "|", dots.v; bold(a)_i; dots.v; bold(a)_j; dots.v)
quad
mat(delim: "|", dots.v; bold(a); dots.v; bold(a); dots.v) = 0
$
が成り立つ。
また、$N$次の縦ベクトル$bold(a)_1, dots, bold(a)_N, bold(a)$と$i eq.not j$を満たす$i, j = 1, dots, N$に対して
$
mat(delim: "|", dots.c, bold(a)_j, dots.c, bold(a)_i, dots.c)
= -mat(delim: "|", dots.c, bold(a)_i, dots.c, bold(a)_j, dots.c)
quad
mat(delim: "|", dots.c, bold(a), dots.c, bold(a), dots.c) = 0
$
が成り立つ。
]

この命題の一つ目の等式は行を交換したら行列式の符号が変わることを述べ、二つ目の等式は二つの行が同じだったら行列式は零であることを述べている。
一見すると二つ目の式は一つ目の特別な場合であるが、$2 = 0$となるような体に配慮して二つ目を先に示し、そのことを利用して一つ目を示す。

#proof[
転置すればよいので、前半部分だけ示す。
一つ目の等式を示すために$A = (a_(i, j))_(j = 1, dots, N)^(i = 1, dots, N)$は第$i$行と第$j$行が等しい、つまり$a_(i k) = a_(j k)$がすべての$k = 1, dots, N$に対して成り立つとすると、
$
det A
= det A^T
= sum_(s in S_N) sgn(s) a_(s(1) 1) dots a_(s(N) N)
= sum_(s in S_N^+) a_(s(1) 1) dots a_(s(N) N)-sum_(s in S_N^-) a_(s(1) 1) dots a_(s(N) N).
$
ここで奇置換の方にだけ互換$t = mat(i, j)$の操作をすると、$A$の仮定から
$
sum_(s in S_N^(-)) a_(s(1) 1) dots a_(s(N) N)
= sum_(s in S_N^(-)) a_(t(s(1)) 1) dots a_(t(s(N)) N)
= sum_(s in S_N^(+)) a_(s(1) 1) dots a_(s(N) N).
$
よって$det A = 0$である。

二つ目を示すために第$i$行と第$j$行がともに$bold(a)_i+bold(a)_j$である行列の行列式を考えると多重線形性と先ほど示したことより、
$
mat(delim: "|", dots.v; bold(a)_i+bold(a)_j; dots.v; bold(a)_i+bold(a)_j; dots.v)
=
mat(delim: "|", dots.v; bold(a)_i; dots.v; bold(a)_i; dots.v)
+mat(delim: "|", dots.v; bold(a)_i; dots.v; bold(a)_j; dots.v)
+mat(delim: "|", dots.v; bold(a)_j; dots.v; bold(a)_i; dots.v)
+mat(delim: "|", dots.v; bold(a)_j; dots.v; bold(a)_j; dots.v)
= mat(delim: "|", dots.v; bold(a)_i; dots.v; bold(a)_j; dots.v)+mat(delim: "|", dots.v; bold(a)_j; dots.v; bold(a)_i; dots.v)
$
でこれが$0$に等しいので、証明すべき等式が得られる。
]

#proposition([積の行列式])[
二つの$N$次正方行列$A$と$B$に対して、
$
det (A B) = det A det B
$
が成り立つ。
] <t_proddet>

#proof[
まず、積$A B$は成分を使って以下のように書くことができる。
$
A B =
mat(a_(1 1), dots.c, a_(1 N); dots.v, dots.down, dots.v; a_(N 1), dots.c, a_(N N))
mat(bold(b)_1; dots.v; bold(b)_N)
= mat(a_(1 1) bold(b)_1+dots+a_(1 N) bold(b)_N; dots.v; a_(N 1) bold(b)_1+dots+a_(N N) bold(b)_N)
$
よって多重線形性より、
$
det(A B) =
sum_(j_1 = 1)^N dots sum_(j_N = 1)^N a_(1 j_1) dots a_(N j_N) mat(delim: "|", bold(b)_(j_1); dots.v; bold(b)_(j_N))
$
交代性より同じ行がある場合の行列式は$0$なので、
$
det(A B) =
sum_(s in S_N) a_(1 s(1)) dots a_(N s(N)) mat(delim: "|", bold(b)_(s(1)); dots.v; bold(b)_(s(N)))
$
行を並べ替えて、
$
det(A B) =
sum_(s in S_N) sgn(s) a_(1 s(1)) dots a_(N s(N)) mat(delim: "|", bold(b)_1; dots.v; bold(b)_N)
$
よって$det (A B) = det A det B$である。
]

== 余因子展開

$N$次正方行列$A$と$i, j = 1, dots, N$に対して、$A$の第$i$行と第$j$列を取り除いて得られる$N-1$次正方行列の行列式を$(-1)^(i+j)$倍した数を$A$の$(i, j)$_余因子_という。
つまり、$A$を
$
A = mat(A_(U L), \*, A_(U R); \*, a_(i j), \*; A_(L L), \*, A_(L R);)
$
と区分けした時に
$
tilde(A)_(i j) = (-1)^(i+j) mat(delim: "|", A_(U L), A_(U R); A_(L L), A_(L R);) $
を定義する。

元の行列$A$の行列式は余因子を使って次のように表現される。

#theorem([余因子展開])[
$N$次正方行列$A$と$i, j = 1, dots, N$に対して
$
det A
= a_(i 1) tilde(A)_(i 1)+dots+a_(i N) tilde(A)_(i N)
= a_(1 j) tilde(A)_(1 j)+dots+a_(N j) tilde(A)_(N j)
$
が成り立つ。
]

この式の中で$i$を使った式を第$i$行についての余因子展開といい、$j$を使った式を第$j$列についての余因子展開という。

#proof[
第$i$行についての余因子展開を示す。 第$i$行を
$
mat(a_(i 1), a_(i 2), dots, a_(i N))
= a_(i 1) mat(1, 0, dots, 0)+a_(i 2) mat(0, 1, dots, 0)+a_(i N) mat(0, 0, dots, 1)
$
と分解すると、多重線形性より示される。
列についての余因子展開は転置を取ればよい。
]

#example[
]

#remark[
]

余因子は逆行列とも結びつく。 まず、余因子を次のように並べて得られる行列
$
tilde(A)
= mat(tilde(A)_(1 1), dots.c, tilde(A)_(N 1); dots.v, dots.down, dots.v; tilde(A)_(1 N), dots.c, tilde(A)_(N N);)
$
を$A$の_余因子行列_という。
並べ方が転置を取ったようになっているので注意。

#theorem([余因子行列と逆行列])[
$N$次正方行列$A$とその余因子行列$tilde(A)$について
$
A tilde(A) = tilde(A) A = det(A) I_N
$
が成り立つ。
特に$A$が可逆であることと$det A eq.not 0$であることは同値であり、$A$の逆行列は
$
A^(-1) = 1/(det A) tilde(A)
$
で与えられる。
] <t_cofactinv>

この定理は逆行列を持つための必要十分条件を与えて非常に重要であるが、
逆行列の計算という観点からは行列式の値の計算が大変なので基本変形の方が一般に効率が良い。

証明のために次の補題を用意する。

#lemma[
$A$を$N$次正方行列、$tilde(A)$をその余因子行列として$bold(b)$を$N$次ベクトルとする。
この時、
$
tilde(A)bold(b)
= mat(det A_(1, bold(b)), dots.c, det A_(N, bold(b)))
$
が成り立つ。
ただし、$A_(k, bold(b))$は行列$A = mat(bold(a)_1, dots.c, bold(a)_N)$の第$k = 1, dots, N$列をベクトル$bold(b)$で置き換えて得られる行列
$
A_(k, bold(b))
= mat(bold(a)_1, dots, bold(a)_(k-1), bold(b), bold(a)_(k+1), dots, bold(a)_N)
$
である。
] <t_cofactvec>

#proof[
ベクトル$tilde(A)bold(b)$の第$k$成分は
$
tilde(A)_(1 k) b_1+dots+tilde(A)_(N k) b_N
$
であり、これは$det A_(k, bold(b))$の第$k$列についての余因子展開に一致する。
]

#proof([@t_cofactinv の証明])[
$tilde(A) A = det (A) I_N$を示せば十分である。
$tilde(A) A$の第$(i, j)$成分は、$A$の第$j$列を$bold(a)_j$とすると、$tilde(A)bold(a)_j$の第$i$成分なので、@t_cofactvecより、$det A_(i, bold(a)_j)$に等しい。
これは$j eq.not i$の時は同じ列が二つあるので$0$であり、$j = i$の時は$det A$に他ならない。
以上より証明される。
]

この節の最後に行列式を用いた連立一次方程式の解の公式を紹介する。

#block[
$A$を$N$次正則行列つまり逆行列を持つとして、連立一次方程式
$
A bold(x) = bold(b)
$
の一意な解$bold(x) = vec(x_1, dots.v, x_N)$の成分$x_k$は
$
x_k = (det A_(k, bold(b)))/(det A)
$
で与えられる。
]

#proof[
$A$は逆行列を持ち、それは余因子行列を用いて$A = frac(1, det A) tilde(A)$で与えられるので、解は$bold(x) = 1/(det A) tilde(A)bold(b)$である。
よって後は@t_cofactvecにより計算される。
]

== 基本変形と行列式

行列の基本変形は基本行列との積を取ることと考えられることと基本行列の行列式は簡単な計算で
$
det P_n(i, j) = -1,
quad det Q_n(i, c) = c,
quad det R_n(i, j, c) = 1
$
と求まることから、基本変形をすると行列式の値は次のように変化する。

- 二つの行（または列）を入れ替えると行列式の符号が反転する。
- ある行（または列）を定数$c in K$倍すると行列式の値が$c$倍になる。
- ある行（または列）に、別の行（列）の定数倍を加えても行列式は変化しない。

基本変形して行列をより単純な形にすることで、行列式の計算をやりやすくすることができる。

#example[
]

また、基本変形をまとめて処理すると行列式の値は次のように変化する。

- 置換$s$に従っていくつかの行（または列）をまとめて入れ替えると行列式の値は$sgn(s)$倍になる。
- $R$個の行（または列）に$R$次の正則行列$A$を左からかけると行列式の値は$det A$倍になる。
- ある$L$個の行（または列）に、別の$R$個の行（列）に$L times R$型の行列を左からかけたものを加えても行列式は変化しない。

ここで(2)は正則行列が基本行列の積として表されることから正当化される。

#example[
]

== 種々の行列式
<種々の行列式>
重要な行列式の公式として以下がある。

#block[
$a_1, dots, a_N in K$に対して、 \$\$\\mqty|
1 & a\_1 & a\_1^2 & dots & a\_1^{N-1} \\\\
1 & a\_2 & a\_2^2 & dots & a\_2^{N-1} \\\\
\\vdots & \\vdots & \\vdots & & \\vdots \\\\
1 & a\_N & a\_N^2 & dots & a\_N^{N-1} \\\\
|
= product_(i < j}(a\_j-a\_i)\$\$ が成り立つ。

]
#block[
$N$についての数学的帰納法で示す。
$N = 1$の時は両辺ともに$1$である。
$N-1$次で成立する時、第$(1, 1)$成分で第$1$行を掃き出すことで、
\$\$\\begin{aligned}
\\mqty|
1 & a\_1 & a\_1^2 & dots & a\_1^{N-1} \\\\
1 & a\_2 & a\_2^2 & dots & a\_2^{N-1} \\\\
\\vdots & \\vdots & \\vdots & & \\vdots \\\\
1 & a\_N & a\_N^2 & dots & a\_N^{N-1} \\\\
|
&=
\\mqty|
1 & a\_1 & a\_1^2 & dots & a\_1^{N-1} \\\\
0 & a\_2-a\_1 & a\_2^2-a\_1^2 & dots & a\_2^{N-1}-a\_1^{N-1} \\\\
\\vdots & \\vdots & \\vdots & & \\vdots \\\\
0 & a\_N-a\_1 & a\_N^2-a\_1^2 & dots & a\_N^{N-1}-a\_1^{N-1} \\\\
| \\\\
&=
\\mqty|
a\_2-a\_1 & a\_2^2-a\_1^2 & dots & a\_2^{N-1}-a\_1^{N-1} \\\\
\\vdots & \\vdots & & \\vdots \\\\
a\_N-a\_1 & a\_N^2-a\_1^2 & dots & a\_N^{N-1}-a\_1^{N-1} \\\\
| \\\\
&=
(a\_2-a\_1)dots(a\_N-a\_1)\\mqty|
1 & a\_2+a\_1 & dots & a\_2^{N-2}+a\_2^{N-3}a\_1dots+a\_1^{N-2} \\\\
\\vdots & \\vdots & & \\vdots \\\\
1 & a\_N+a\_1 & dots & a\_N^{N-2}+a\_N^{N-3}a\_1dots+a\_1^{N-2} \\\\
|.
\\end{aligned}\$\$
ここで最右辺の行列式は$N-1$次で、第$N-1$列から第$N-2$列の$a_1$倍を引き、第$N-2$列から第$N-3$列の$a_1$倍を引き、ということを続けると、
\$\$\\mqty|
1 & a\_1 & a\_1^2 & dots & a\_1^{N-1} \\\\
1 & a\_2 & a\_2^2 & dots & a\_2^{N-1} \\\\
\\vdots & \\vdots & \\vdots & & \\vdots \\\\
1 & a\_N & a\_N^2 & dots & a\_N^{N-1} \\\\
|
=
(a\_2-a\_1)dots(a\_N-a\_1)\\mqty|
1 & a\_2 & dots & a\_2^{N-2} \\\\
\\vdots & \\vdots & & \\vdots \\\\
1 & a\_N & dots & a\_N^{N-2} \\\\
|.\$\$ よって、数学的帰納法の仮定より、 \$\$\\mqty|
1 & a\_1 & a\_1^2 & dots & a\_1^{N-1} \\\\
1 & a\_2 & a\_2^2 & dots & a\_2^{N-1} \\\\
\\vdots & \\vdots & \\vdots & & \\vdots \\\\
1 & a\_N & a\_N^2 & dots & a\_N^{N-1} \\\\
|
= (a\_2-a\_1)dots(a\_N-a\_1)product_(2 \\le i < j}(a\_j -a\_i)
= product_(i < j}(a\_j -a\_i)\$\$ を得る。

]
#block[
$a, b, c in K$に対して$N$次正方行列の行列式 \$\$D\_N =
\\mqty|
a & b & 0 & dots & 0 \\\\
c & a & b & dots & 0 \\\\
0 & c & a & dots & 0 \\\\
\\vdots & \\vdots & \\vdots & & \\vdots \\\\
0 & 0 & 0 & dots & a \\\\
|\$\$ とおくと、
\$\$D_(n+2} = a D_(n+1}-b c D\_n, \\qq{\$D\_1 = a\$, \$D\_2 = a^2-b c\$}\$\$
が成り立つ。
ただし、この行列は対角成分が$a$でその右上成分が$b$で左下成分が$c$であり他は全て$0$となっている。

]
#block[
計算すると
$ D_1 = a, quad D_2 = a^2-b c, quad D_3 = a^3-2 a b c, quad dots $
である。

]
#block[
$D_1$, $D_2$はサラスの公式より成立する。
第$1$行に関する余因子展開をして、 \$\$D\_N =
a
\\mqty|
a & b & dots & 0 \\\\
c & a & dots & 0 \\\\
\\vdots & \\vdots & & \\vdots \\\\
0 & 0 & dots & a \\\\
|
-b
\\mqty|
c & b & dots & 0 \\\\
0 & a & dots & 0 \\\\
\\vdots & \\vdots & & \\vdots \\\\
0 & 0 & dots & a \\\\
|.\$\$ さらに後ろの行列式は第$1$列に関する余因子展開をして、 \$\$D\_N =
a
\\mqty|
a & b & dots & 0 \\\\
c & a & dots & 0 \\\\
\\vdots & \\vdots & & \\vdots \\\\
0 & 0 & dots & a \\\\
|
-b c
\\mqty|
a & dots & 0 \\\\
\\vdots & & \\vdots \\\\
0 & dots & a \\\\
|
= a D_(N-1}-b c D_(N-2}.\$\$ よって主張が示された。

]
#block[
$a = 2, b = c = 1$の時、
\$\$D_(n+2} = 2 D_(n+1}-D\_n, \\qq{\$D\_1 = 2\$, \$D\_2 = 3\$}\$\$
であり、この漸化式を解いて $ D_N = N+1 $ を得る。

]
#block[
$x, a_1, dots, a_N in K$に対して、 \$\$\\mqty|
x & -1 & 0 & dots & 0 & 0 \\\\
0 & x & -1 & dots & 0 & 0 \\\\
0 & 0 & x & dots & 0 & 0 \\\\
\\vdots & \\vdots & \\vdots & & \\vdots & \\vdots \\\\
0 & 0 & 0 & dots & x & -1 \\\\
a\_1 & a\_2 & a\_3 & dots & a_(N-1} & x+a\_N \\\\
|
= x^N+a\_N x^{N-1}+dots+a\_1\$\$ が成り立つ。

]
#block[
$N$についての数学的帰納法で示す。 $N = 1$の時は成立する。
$N-1$次で成立する時、$N$次を考える。
第$1$列についての余因子展開をすると、 \$\$\\begin{aligned}
\\mqty|
x & -1 & 0 & dots & 0 \\\\
0 & x & -1 & dots & 0 \\\\
0 & 0 & x & dots & 0 \\\\
\\vdots & \\vdots & \\vdots & & \\vdots \\\\
0 & 0 & 0 & dots & -1 \\\\
a\_1 & a\_2 & a\_3 & dots & x+a\_N \\\\
|
&=
x
\\mqty|
x & -1 & dots & 0 \\\\
0 & x & dots & 0 \\\\
\\vdots & \\vdots & & \\vdots \\\\
0 & 0 & dots & -1 \\\\
a\_2 & a\_3 & dots & x+a\_N \\\\
|
+(-1)^{N+1}a\_1
\\mqty|
-1 & 0 & dots & 0 \\\\
x & -1 & dots & 0 \\\\
0 & x & dots & 0 \\\\
\\vdots & \\vdots & & \\vdots \\\\
0 & 0 & dots & -1 \\\\
| \\\\
&= x(x^{N-1}+a\_N x^{N-2}+dots+a\_2)+a\_1 \\\\
&= x^N+a\_N x^{N-1}+dots+a\_1.
\\end{aligned}\$\$ よって、主張が示された。

]
