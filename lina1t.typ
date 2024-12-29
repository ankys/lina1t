
#let title = [線形代数学１]
#let author = [中安淳]
#let date = datetime.today().display()
// #let date = [2024年12月22日]

#import "deps/jbook.typ": jbook, maketitle
#show: jbook.with()

#import "deps/autoeqnum.typ": autoeqnum
#show heading.where(level: 2): it => {
	counter(math.equation).update(0)
	it
}
#show: autoeqnum.with(mode: "ref", numbering: it => {
	let count = counter(heading).get()
	numbering("(1.1)", ..count, it)
})

#maketitle(
	title: title,
	author: author,
	date: date,
)

#include "00_preface.typ"

#outline()

#include "01_2dimension.typ"
#include "02_matrix.typ"
#include "03_linearsystem.typ"
#include "04_determinant.typ"
#include "05_linearspace.typ"
#include "06_eigenproblem.typ"
#include "07_diagonalization.typ"
#include "08_triangularization.typ"
// #include "09_variousclass.typ"
// #include "10_quadratic.typ"

#bibliography("99_ref.yml")
