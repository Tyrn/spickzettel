//#import "@preview/knowledge-key:1.0.2": *
#import "lib.typ": *

#show: knowledge-key.with(
  title: [The Nuts and Bolts of Haskell],
  authors: "λ",
)

#import "utils.typ": *

#include "sections/introduction.typ"
#include "sections/typeclasses.typ"
#include "sections/morphisms.typ"
#include "sections/types.typ"
#include "sections/algebraic-datatypes.typ"
