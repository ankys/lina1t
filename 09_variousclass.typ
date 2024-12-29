
= 種々の行列

== ベクトルのテンソル積


$bold(a)$と$bold(b)$をそれぞれ$M$次と$N$次のベクトルとする時、
$bold(a)$を$M$次の縦ベクトル、$bold(b)^T$を$N$次の横ベクトルとみなして行列の積$bold(a)bold(b)^T$は$M times N$型の行列であり、ベクトル$bold(a)$と$bold(b)$の_テンソル積_と呼ばれ$bold(a) times.circle bold(b)$とも書かれる。
成分を使って書けば
$
bold(a) times.circle bold(b)
= bold(a)bold(b)^T
= mat(a_1; dots.v; a_M) mat(b_1, dots.c, b_N)
= mat(a_1 b_1, dots.c, a_1 b_N; dots.v, dots.down, dots.v; a_M b_1, dots.c, a_M b_N)
$
である。

また、$bold(a)$と$bold(b)$を$N$次のベクトルとする時、
$bold(a)^T$を横ベクトル、$bold(b)$を縦ベクトルとみなして行列の積$bold(a)^T bold(b)$はスカラーであり、ベクトル$bold(a)$と$bold(b)$の_スカラー積_と呼ばれ$bold(a) dot bold(b)$とも書かれる。
成分を使って書けば
$
bold(a) dot bold(b)
= bold(a)^T bold(b)
= mat(a_1, dots.c, a_N) mat(b_1; dots.v; b_N)
= a_1 b_1+dots+a_N b_N
$
である。
行列の積には交換法則は一般には成り立たないが、スカラー積に対しては交換法則が成り立つことに注意する。
つまり、任意の$N$次のベクトル$bold(a)$と$bold(b)$に対して、
$
bold(a) dot bold(b) = bold(b) dot bold(a)
$
が成り立つ。

ここで、$bold(a)$と$bold(b)$を$N$次ベクトルとする時のテンソル積である$N$次の正方行列$A = bold(a) times.circle bold(b)$の$n$乗を考える。
$2$乗を計算すると、
$
A^2
= (bold(a)bold(b)^T)(bold(a)bold(b)^T)
= bold(a)(bold(b)^T bold(a))bold(b)^T
= (bold(b) dot bold(a))A
= (bold(a) dot bold(b))A
$
とスカラー積倍になる。
よってこれを繰り返し用いることで、
$
A^n = (bold(a) dot bold(b))^(n-1) A
quad (n = 1, 2, 3, dots)
$
を得る。

== 巡回行列
