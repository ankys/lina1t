
= 連立一次方程式

== 拡大係数行列

$N = 1, 2, 3, dots$個の未知数$x_1, dots, x_N$と$M = 1, 2, 3, dots$個の等式からなる次の形の連立方程式
$
cases(
  a_(1 1) x_1+dots+a_(1 N) x_N = b_1",",
  quad dots.v,
  a_(M 1) x_1+dots+a_(M N) x_N = b_M
)
$
のことを_連立一次方程式_あるいは_線形方程式系_などという。
$M$と$N$が異なる場合は解がなかったり複数あったりするのでそのような場合を考える必要を感じないかもしれないが、さまざまな場合を扱えた方が良いのでここでは$M$と$N$が異なる場合を含めて考える（そもそも$M = N$でも解がなかったり複数あったりする場合が存在する）。
第1章で扱ったように連立一次方程式は行列とベクトルを用いて
$
mat(a_(1 1), dots.c, a_(1 N); dots.v, dots.down, dots.v; a_(M 1), dots.c, a_(M N);)vec(x_1, dots.v, x_N)
= vec(b_1, dots.v, b_M)
$
と表すことができる。
ここで
$
A = mat(a_(1 1), dots.c, a_(1 N); dots.v, dots.down, dots.v; a_(M 1), dots.c, a_(M N);),
quad bold(x) = vec(x_1, dots.v, x_N),
quad bold(b) = vec(b_1, dots.v, b_M)
$
として、$M times N$型の行列$A$を連立一次方程式の_係数行列_、$M$次ベクトル$bold(b)$を_定数ベクトル_、$N$次ベクトル$bold(x)$を_未知数ベクトル_とそれぞれ呼ぶ。
また、連立一次方程式は
$
mat(a_(1 1), dots.c, a_(1 N), b_1; dots.v, dots.down, dots.v, dots.v; a_(M 1), dots.c, a_(M N), b_M;)vec(x_1, dots.v, x_N, - 1)
= vec(0, dots.v, 0)
$
のようにも変形できる。
この時の係数行列$A$と定数ベクトル$bold(b)$を並べて得られる$M times (N+1)$型の行列
$
tilde(A)
= mat(A, bold(b))
= mat(a_(1 1), dots.c, a_(1 N), b_1; dots.v, dots.down, dots.v, dots.v; a_(M 1), dots.c, a_(M N), b_M;)
$
を連立一次方程式の_拡大係数行列_という。
連立一次方程式は係数行列と定数ベクトルが与えられたら定まるので、拡大係数行列は連立一次方程式の必要な情報をすべて表現する。

== 基本変形
<基本変形>
第1章で紹介した連立一次方程式の解法は方程式
\$\$Abold(x} = bold(b)$\$
の両辺に係数行列$A$の逆行列を左からかけるというものであったが、
この方法が適用できるのは$A$が正方行列つまり$M = N$であって逆行列を持つ場合である。
しかしながら今回は一般の状況で方程式を解くために別の方法を考える必要がある。
加えて逆行列の簡便な公式があるのは$2$次の場合だけで、$3$次以上だと連立一次方程式を発展させた方程式
$ A X = I $ を解く必要がある。

連立一次方程式を解くために使われる方法が基本変形である。
基本変形による方法は掃き出し法やガウスの消去法とも呼ばれる重要な解法である。

基本変形の基本的な着想は中学校で習う加減法である。
つまり、$M$個の等式からなる連立一次方程式に対して次の三つの操作を考える。

- 二つの等式を入れ替える。

- ある等式を$0$でない定数倍する。

- ある等式に、別の等式の定数倍を加える。

これらをまとめて連立方程式の_基本変形_という。
基本変形は同値な変形になっており、繰り返し用いることで連立一次方程式を解くことができる。

#block[
鶴亀算の方程式 $ {x+y = 8 ,\
2 x+4 y = 26\
 $ を考える。 第2式に第1式の$- 2$倍を足して、 $ {x+y = 8 ,\
2 y = 10 .\
 $ 第2式を$1 / 2 eq.not 0$倍して、 $ {x+y = 8 ,\
y = 5 .\
 $ 第1式に第2式の$- 1$倍を足して、 $ {x = 3 ,\
y = 5 .\
 $ これにて解$(x, y) = (3, 5)$が得られた。

]
これを拡大係数行列への操作に置き換えると次が対応する。

- 二つの行を入れ替える。

- ある行を$0$でない定数倍する。

- ある行に、別の行の定数倍を加える。

これらをまとめて行列の_行基本変形_という。
なお、行のところを列に変えることで_列基本変形_も定義でき、行基本変形と列基本変形を合わせて行列の_基本変形_というが、
連立一次方程式の基本変形に対応するのは行基本変形であることに注意する。

行列の基本変形を導入する利点は基本変形は以下の通りの可逆行列をかけることとして定式化できることにある。
つまり$M times N$型の行列に対する行基本変形は$i, j = 1, 2, 3, dots, M$で$c$をスカラーとして次の操作と考えられる。

- 第$i$行と第$j$行を入れ替える基本変形は、正方行列
  $ P_M (i, j) = mat(dots.down,, ,, ;, 0,, 1, ;,, dots.down,, ;, 1,, 0, ;,, ,, dots.down;) $
  を左からかけることである（三点で省略した部分は$1$）。

- 第$i$行を$c eq.not 0$倍する基本変形は、正方行列
  $ Q_M (i, c) = mat(dots.down,, ,, ;, c,, , ;,, dots.down,, ;,, , 1, ;,, ,, dots.down;) $
  を左からかけることである（三点で省略した部分は$1$）。

- 第$i$行に第$j eq.not i$行の$c$倍を加える基本変形は、正方行列
  $ R_M (i, j, c) = mat(dots.down,, ,, ;, 1,, c, ;,, dots.down,, ;,, , 1, ;,, ,, dots.down;) $
  を左からかけることである（三点で省略した部分は$1$）。

これらの正方行列$P_M (i, j)$, $Q_M (i, c)$,
$R_M (i, j, c)$をまとめて_基本行列_という。
なお、行基本行列と呼ばないのは列基本変形は基本行列$P_N (i, j)$,
$Q_N (i, c)$,
$R_N (i, j, c)$を右からかけることに相当するので行基本変形と共通であるためである。

基本行列はいずれも可逆である。 実際、
$ P_M (i, j)^(- 1) = P_M (i, j), quad Q_M (i, c)^(- 1) = Q_M (i, c^(- 1)), quad R_M (i, j, c)^(- 1) = R_M (i, j, - c) $
である。 そのため行列の基本変形は同値な変形となっている。

#block[
やっていることは連立一次方程式の基本変形と同じだが鶴亀算の方程式の拡大係数行列を行基本変形すると以下のようになる。
$ mat(1, 1, 8; 2, 4, 26) arrow.r mat(1, 1, 8; 0, 2, 10) arrow.r mat(1, 1, 8; 0, 1, 5) arrow.r mat(1, 0, 3; 0, 1, 5) $
ここから解は$(x, y) = (3, 5)$が結論づけられる。

]
== 掃き出し法と行列の階数
<掃き出し法と行列の階数>
基本変形を用いて一定の手続きで連立一次方程式を解く手法が掃き出し法（ガウスの消去法）である。
$A$を$M times N$型の行列として第$(i, j)$成分について_掃き出す_ことを以下で定義する。

+ $A$の第$(i, j)$成分$a_(i j)$で第$i$行を割る、つまり逆数$a_(i j)^(- 1)$をかける。

+ $A$の第$i$行以外の行（第$k$行とする）から第$i$行の$a_(k j)$倍を引く、つまり$- a_(k j)$倍を足す。

この操作により第$j$列は第$i$行だけ$1$でそれ以外の成分はすべて$0$となるように変形される。
なお、第$(i, j)$成分$a_(i j)$が$0$の場合はこの操作は行えないことに注意する。

この掃き出しを用いて$M times N$型の行列$A$を以下のように変形していく。

+ 最初$i = 1$, $j = 1$とする。

+ 第$(i, j)$成分が零の場合はそれより下に、つまり$k = i+1, dots, M$として第$(k, j)$成分が非零の行を見つけて第$i$行と第$k$行を入れ替える。

+ 第$(i, j)$成分が非零になったところで第$(i, j)$成分について掃き出し、$i$を$1$増やす。

+ 非零の行が見つからない場合は$j$を$1$増やす。

+ 上記のことを繰り返して$i$が$M$を超えたり$j$が$N$を超えたところで変形を終了する。

この掃き出しを_行簡約化_といい、それよって行列は以下の形になる。

#block[
$M times N$型の行列が_行簡約行列_であるとは以下の条件が満たされることをいう。
各行（第$i$行）に対して成分が非零である一番左の成分の列数を$j (i)$として（ただし全ての成分が零の時は$j (i) = oo$とする）、
$j (i)$は単調増加かつ第$j (i)$列は第$(i, j (i))$成分だけが$1$でそれ以外はすべて零である。
またこの時、第$(i, j (i))$成分を行簡約行列の_主成分_といい、その個数を行簡約行列の_階数_という。

]
例えば次は行簡約行列であり階数は$2$である。

$ mat(0, 1, \*, 0, \*; 0, 0, 0, 1, \*; 0, 0, 0, 0, 0;) . $

重要なことはこの行簡約行列は元の行列に対して一意に決まることである。
行簡約行列$A^(‾)$を$mat(tilde(A), \*)$と区分けすると前半部分の$tilde(A)$も行簡約行列であることに注意する。

#block[
行列$A$に行基本変形を繰り返し用いることで簡約行列$A^(‾)_1$が得られて、別の変形方法によって簡約行列$A^(‾)_2$が得られたとする時、$A^(‾)_1 = A^(‾)_2$である。

]
#block[
_Proof.]
行基本変形は可逆なので、正則行列$P_1, P_2$が存在して$P_1 A = A^(‾)_1$,
$P_2 A = A^(‾)_2$が成立する。
よって、正則行列$P = P_2 P_1^(- 1)$により$A^(‾)_2 = P A^(‾)_1$とでき、このとき$A^(‾)_2 = A^(‾)_1$を示せばよい。
列数$N$についての数学的帰納法で証明する。
すぐわかることとして$N = 1$の時は成立する（行簡約行列は縦零ベクトル\$bold(0)$か\$bold(e}\_1\$しかない）。
列数が$N$で成立するとき列数が$N+1$の場合について考える。
\$\\bar{A}\_1 = \\begin{pmatrix}\\tilde{A}\_1 & bold(a}\_1\\end{pmatrix)$,
\$\\bar{A}\_2 = \\begin{pmatrix}\\tilde{A}\_2 & bold(a}\_2\\end{pmatrix)$と区分けして、$A^(‾)_2 = P A^(‾)_1$より$tilde(A)_2 = P tilde(A)_1$かつ\$bold(a}\_2 = Pbold(a}\_1\$である。
よって数学的帰納法の仮定より$tilde(A)_1 = tilde(A)_2$であり、これを$tilde(A)$としてその階数を$R$とおく。
このとき、行簡約行列の定義から各$i = 1, dots, R$に対して$tilde(A)$の第$j (i)$行は\$bold(e}\_i\$で、$tilde(A) = P tilde(A)$から\$Pbold(e}\_i = bold(e}\_i\$を得る。
ここで階数の定義から$A^(‾)_1$と$A^(‾)_2$の階数は$R$または$R+1$である。
$A^(‾)_1$の階数が$R$の場合、\$bold(a}\_1\$の第$R+1$行目以降はすべて零なので、スカラー$c_1, dots, c_R$を使って\$bold(a}\_1 = c\_1bold(e}\_1+\\cdots+c\_Rbold(e}\_R\$とできる。
よって、
\$\$bold(a}\_2 = Pbold(a}\_1 = c\_1 Pbold(e}\_1+\\cdots+c\_R Pbold(e}\_R = c\_1bold(e}\_1+\\cdots+c\_Rbold(e}\_R = bold(a}\_1\$\$
である。
$A^(‾)_1 = P^(- 1) A^(‾)_2$なので同様の議論をすれば$A^(‾)_2$の階数が$R$の場合も$A^(‾)_1 = A^(‾)_2$がわかる。
残るは$A^(‾)_1, A^(‾)_2$の階数がともに$R+1$の場合であるが、この時は\$bold(a}\_1 = bold(a}\_2 = bold(e}\_{R+1)$しかありえない。
以上より定理の証明が完成した。~◻

]
このことにより、任意の$M times N$型の行列$A$に対して簡約行列$A^(‾)$が一意に定まり、
その簡約行列$A^(‾)$の階数をもって元の行列$A$の_階数_として\$\\rank(A)\$と表す。

#block[
本によっては上記の行に対する掃き出し法と同様にして列に対する掃き出し法や列簡約行列を導入して、
さらに行簡約行列かつ列簡約行列である行列、すなわち簡約行列の階数により行列の階数を定める。
この場合、階数$R$の簡約行列は $ mat(I_R, O; O, O) $
と表される。

]
#block[
行列$A$に対して、 \$\$\\rank(A^T) = \\rank(A)\$\$ が成り立つ。

]
#block[
_Proof.] $A^T$に対応する行簡約行列は$A$の列簡約行列の転置である。
$A$の行簡約行列の階数も列簡約行列の階数も、簡約行列の階数に等しいので、二つは一致する。
したがって、\$\\rank(A^T) = \\rank(A)\$がいえる。~◻

]
#block[
$N$次正方行列が正則であることはその階数が$N$であることと同値であり、
その際の行簡約行列は単位行列$I_N$である。
また、正則行列は基本行列の積になる。

]
#block[
_Proof.] $N$次正方行列を$A$、その行簡約行列を$A^(‾)$とする。
階数の定義から$A$の階数は$A^(‾)$の階数に等しく$N$以下であることに注意する。
$A$の階数が$N$でないとすると、$A^(‾)$の階数も$N$でなく$N - 1$以下であり$A^(‾)$の第$N$行は零ベクトルとなる。
したがって$A$の第$N$行も零ベクトルとなりこれは正則でない。
以上より$A$が正則の時、\$\\rank(A) = N\$である。
次に$A$の階数が$N$の時、$N$次正方行列の行簡約行列$A^(‾)$の階数も$N$であり、階数の定義より
$ 1 lt.eq j (1) < j (2) < j (3) < dots < j (N) lt.eq N $
がわかるので、$j (1) = 1, dots, j (N) = N$なので最終的に$A^(‾) = I_N$がわかる。
また$A$は基本行列の積になるので正則であり、逆に正則ならば基本行列の積になっている。~◻

]
#block[
$A$を$M times N$型の行列、$B$を$M times L$型の行列とする。
$M times (N+L)$型の行列$tilde(A) = mat(A, B)$の行簡約行列を$mat(A^(‾), B^(‾))$とおくと、
$A^(‾)$は$A$の行簡約行列である。
さらに\$\\rank(\\tilde{A}) \\ge \\rank(A)\$である。

]
#block[
$B^(‾)$の方は$B$の行簡約行列とは限らない。

]
この節の最後に第2章で触れた逆行列の同値な条件の証明を与える。

#block[
$A, X$を$N$次正方行列とする。
ここで$A X = I_N$か$X A = I_N$のどちらか片方が成立したら、もう片方も成立して$X$は$A$の逆行列である。

]
#block[
_Proof.]
議論は行と列を入れ替えれば同様なので、$X A = I_N$ならば$A X = I_N$を示す。
$N = 1, 2, 3, dots$についての数学的帰納法による。
$N = 1$の時は$N$次正方行列はスカラーにほかならなく、スカラーの乗法の交換法則より$A X = X A$なので成立する。
$N$次正方行列に対して成り立つとき、$N+1$次正方行列$A$を考える。
第$1$列が零ベクトルだと$X A = I_N$は成り立たないので、第$(k, 1)$成分が非零となるような第$k$行が存在し、第$1$行と第$k$行を入れ替えてから第$(1, 1)$成分について掃き出すことで
\$\$P A = \\begin{pmatrix}1 & bold(a} \\\\ bold(0} & \\tilde{A}\\end{pmatrix)$\$
となる$N+1$次の正則行列$P$が存在することがわかる。
ここで$X A = (X P^(- 1)) (P A)$より\$X P^{-1} = \\begin{pmatrix}x\_{1 1} & bold(x}\_{1 2} \\\\ bold(x}\_{2 1} & \\tilde{X}\\end{pmatrix)$と区分けすると
\$\$X A
= \\begin{pmatrix}x\_{1 1} & bold(x}\_{1 2} \\\\ bold(x}\_{2 1} & \\tilde{X}\\end{pmatrix}\\begin{pmatrix}1 & bold(a} \\\\ bold(0} & \\tilde{A}\\end{pmatrix}
= \\begin{pmatrix}x\_{1 1} & x\_{1 1}bold(a}+bold(x}\_{1 2}\\tilde{A} \\\\ bold(x}\_{2 1} & bold(x}\_{2 1}bold(a}+\\tilde{X}\\tilde{A}\\end{pmatrix}
= \\begin{pmatrix}1 & bold(0} \\\\ bold(0} & I\_N\\end{pmatrix}.\$\$
よって、 \$\$x\_{1 1} = 1,
\\quad x\_{1 1}bold(a}+bold(x}\_{1 2}\\tilde{A} = bold(0},
\\quad bold(x}\_{2 1} = bold(0},
\\quad bold(x}\_{2 1}bold(a}+\\tilde{X}\\tilde{A} = I\_N.\$\$
特に$N$次正方行列$tilde(A), tilde(X)$に対して$tilde(X) tilde(A) = I_N$なので、$tilde(A) tilde(X) = I_N$が成り立つ。
また、\$bold(a} = -bold(x}\_{1 2}\\tilde{A)$であることに注意する。
したがって$A X$を計算すると \$\$A X
= \\begin{pmatrix}1 & bold(a} \\\\ bold(0} & \\tilde{A}\\end{pmatrix}\\begin{pmatrix}x\_{1 1} & bold(x}\_{1 2} \\\\ bold(x}\_{2 1} & \\tilde{X}\\end{pmatrix}
= \\begin{pmatrix}x\_{1 1}+bold(a}bold(x}\_{1 2} & bold(x}\_{1 2}+bold(a}\\tilde{X} \\\\ \\tilde{A}bold(x}\_{2 1} & \\tilde{A}\\tilde{X}\\end{pmatrix}
= \\begin{pmatrix}1 & bold(0} \\\\ bold(0} & I\_N\\end{pmatrix}.\$\$
以上より数学的帰納法より定理が示された。~◻

]
== 連立一次方程式の解
<連立一次方程式の解>
連立一次方程式を解くことを考えると拡大係数行列に対する行基本変形は同値変形になる。
その結果として行簡約行列が得られたとすると実はそれで連立一次方程式はもう解かれた形になっていることがわかる。

つまり以下の流れで解くことができる。

+ 連立一次方程式が与えられる。

+ 対応する拡大係数行列を書く。

+ 行基本変形して行簡約行列を求める。

+ 対応する連立一次方程式を書く。

+ 解を得る。

いくつかの具体例を見てみる。

#block[
]
前の方で述べた通り解はただ一つに定まるとは限らず、解がない場合と複数ある場合が存在する。
複数ある場合は未知数のうちいくつかが自由に値を取れる状態になり解は無数にあることになる。

#block[
]
#block[
]
これらの状況を一般化してまとめると以下の定理が得られる。

#block[
$K$上の$M times N$型の行列$A$を係数行列、$M$次の縦ベクトル\$bold(b)$を定数項ベクトルとして連立一次方程式\$Abold(x} = bold(b)$を考える。
\$\\tilde{A} = \\begin{pmatrix}A & bold(b}\\end{pmatrix)$を拡大係数行列とする。

- \$\\rank(\\tilde{A}) \> \\rank(A)\$の時、\$Abold(x} = bold(b)$は解を持たない。

- \$\\rank(\\tilde{A}) = \\rank(A)\$の時、$N$次のベクトル\$\\bar{bold(x})$と\$L = N-\\rank(A)\$個の$N$次のベクトル\$bold(y}\_1, \\cdots bold(y}\_L\$が存在して、解は$L$個のスカラー$c_1, dots c_L in K$を使って
  \$\$bold(x} = \\bar{bold(x}}+c\_1bold(y}\_1+\\cdots+c\_Lbold(y}\_L\$\$
  と書ける。 特に\$\\rank(A) = N\$の時、解はただ一つである。

]
定数項がすべて零である連立一次方程式 \$\$Abold(x} = bold(0)$\$
を_斉次連立一次方程式_という。
この場合拡大係数行列\$\\tilde{A} = \\begin{pmatrix}A & bold(0}\\end{pmatrix)$を行基本変形しても一番右の列は常に零ベクトルである。
そのため拡大係数行列を考える必要はなく係数行列$A$を行基本変形したので十分である。
特に\$\\rank(\\tilde{A}) = \\rank(A)\$である。
よく考えてみると零ベクトル\$bold(x} = bold(0)$は解なので解を持たないことはない。
そのため前の定理は斉次連立一次方程式に対しては以下のように単純になる。

#block[
<t:homlinsys>
$K$上の$M times N$型の行列$A$を係数行列として斉次連立一次方程式\$Abold(x} = bold(0)$を考える。
このとき、\$L = N-\\rank(A)\$個の$N$次のベクトル\$bold(y}\_1, \\cdots bold(y}\_L\$が存在して、解は$L$個のスカラー$c_1, dots c_L in K$を使って
\$\$bold(x} = c\_1bold(y}\_1+\\cdots+c\_Lbold(y}\_L\$\$ と書ける。
特に\$\\rank(A) = N\$の時、解は零ベクトル\$bold(0)$ただ一つである。

]
係数行列の等しい連立一次方程式と斉次連立一次方程式
\$\$Abold(x} = bold(b},
\\quad Abold(x} = bold(0)$\$ を考える。
ここでもし斉次とは限らない連立一次方程式\$Abold(x} = bold(b)$の解\$\\bar{bold(x})$が一つ見つかったとする。
このとき、斉次連立一次方程式\$Abold(x} = bold(0)$の任意の解\$bold(y)$とスカラー$c$に対して\$\\bar{bold(x}}+cbold(y)$は連立一次方程式\$Abold(x} = bold(b)$の解である。
そのため前の定理によって斉次連立一次方程式\$Abold(x} = bold(0)$の全ての解
\$\$bold(x} = c\_1bold(y}\_1+\\cdots+c\_Lbold(y}\_L\$\$
を得たとすると、連立一次方程式\$Abold(x} = bold(b)$の全ての解は
\$\$bold(x} = \\bar{bold(x}}+c\_1bold(y}\_1+\\cdots+c\_Lbold(y}\_L\$\$
となる。
つまり方程式の解を一つ見つけて斉次方程式を完全に解くと元の方程式も完全に解かれる。
このような解のことを_特解_という。
連立一次方程式だと拡大係数行列を行簡約化する手間も係数行列を行簡約化する手間とあまり変わらないので斉次方程式のありがたみを感じないが、
微分方程式に対しても同様のことができしばしば重要になる。

== 逆行列の計算
<逆行列の計算>
この章の始めの方で述べたように$N$次正方行列$A$の逆行列を計算することは
$ A X = I_N $ を満たす$N$次正方行列$X$を見つけることである。
正方行列$X$と単位行列$I_N$を
\$\$X = \\begin{pmatrix}bold(x}\_1 & \\cdots & bold(x}\_N\\end{pmatrix},
\\quad I\_N = \\begin{pmatrix}bold(e}\_1 & \\cdots & bold(e}\_N\\end{pmatrix)$\$
と区分けする（\$bold(e}\_1, \\cdots, bold(e}\_N\$は$N$次の標準基底ベクトル）と、
\$\$Abold(x}\_1 = bold(e}\_1, \\cdots, Abold(x}\_N = bold(e}\_N\$\$
となる。
これらは連立一次方程式になっていて、つまり逆行列を求めることは上記の$N$個の連立一次方程式を解くことに帰着される。

しかしながら$N$個の連立一次方程式を順番に解くことは効率が悪い、なぜなら拡大係数行列は\$\\begin{pmatrix}A & bold(e}\_1\\end{pmatrix}, \\cdots, \\begin{pmatrix}A & bold(e}\_1\\end{pmatrix)$であり係数行列が$A$で同じであるため同じ計算を何度もしてしまうためである。
そこで拡大係数行列をまとめて次の$N times (N+N)$型の行列
\$\$\\begin{pmatrix}A & bold(e}\_1 & \\cdots & bold(e}\_N\\end{pmatrix} = \\begin{pmatrix}A & I\_N\\end{pmatrix)$\$
を行簡約化する。
もしこの行列が$N$次正方行列\$Y = \\begin{pmatrix}bold(y}\_1 & \\cdots & bold(y}\_N\\end{pmatrix)$を使って
\$\$\\begin{pmatrix}I\_N & Y\\end{pmatrix} = \\begin{pmatrix}I\_N & bold(y}\_1 & \\cdots & bold(y}\_N\\end{pmatrix)$\$
と行簡約化されたとすると、各$i = 1, dots, N$に対して\$\\begin{pmatrix}A & bold(e}\_i\\end{pmatrix)$は\$\\begin{pmatrix}I\_N & bold(y}\_i\\end{pmatrix)$に簡約化されるので、
連立一次方程式\$Abold(x} = bold(e}\_i\$の解は\$bold(x} = bold(y}\_i\$であり先述の議論により$Y$こそが$A$の逆行列であることがわかる。
一方でこの形に行簡約化されない場合は逆行列を持たないこともわかり、まとめると以下になる。

#block[
$A$を$N$次正方行列とする。

- \$\\rank(A) = N\$の時、$A$は正則であり、$N times (N+N)$型の行列$mat(A, I_N)$は$mat(I_N, X)$の形に行簡約化されて、$X$は$A$の逆行列である。

- \$\\rank(A) \\ne N\$の時、$A$は正則でない。

]
#block[
さらに$P mat(A, I_N) = mat(I_N, X)$とおくと$X = P$なので、$A$の逆行列は基本行列の積として表される。
特にすべての正則行列は基本行列の積として表される。

]
== 区分けと基本変形
<区分けと基本変形>
行列の行基本変形は一行ずつ処理していくが、まとめて処理すると区分けされた行列の行簡約化がやりやすい場合がある。
そこで次の三つの変形を導入する。

- いくつかの行をまとめて入れ替える。

- $R$個の行に$R$次の正則行列を左からかける。

- ある$L$個の行に、別の$R$個の行に$L times R$型の行列を左からかけたものを加える。

これらはいずれも行基本変形の繰り返しとして実現できる。
(1)と(3)は容易にわかるが、(2)は前節で述べた通り正則行列が基本行列の積として表されることにより証明できる。

#block[
例@t:blockinvで見た通り$A$を$N_1$次の正則行列、$D$を$N_2$次の正則行列として$N_1+N_2$次の正方行列
$ mat(A, B; O, D) $ の逆行列は
$ mat(A^(- 1), - A^(- 1) B D^(- 1); O, D^(- 1)) $
で与えられる。 これを導出しようとすると上記の変形により
$ mat(A, B, I, O; O, D, O, I) arrow.r mat(I, A^(- 1) B, A^(- 1), O; O, D, O, I) arrow.r mat(I, A^(- 1) B, A^(- 1), O; O, I, O, D^(- 1)) arrow.r mat(I, O, A^(- 1), - A^(- 1) B D^(- 1); O, I, O, D^(- 1)) $
とできるからわかる。

]
