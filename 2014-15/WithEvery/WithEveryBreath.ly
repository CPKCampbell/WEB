\version "2.19.16"
\language "english"

\header = {
	title = "With Every Breath"
}

global = {
	\key g \major
	\time 3/4
	\tempo 4=100
}

soprano = \relative c'' {
	\global
	R2.*5
	g4 a b e,2. g fs2 fs4 g a e2. d~ d4 r4 r4 
	g4  a b e,2. g fs2 fs4 fs g a d,2.~ d4 r4 f4
	R2. g4 a b c2. b a fs4 g a b2 c4 b2 a4
	%29
	g2. g4 a b e,2 r4 a b  c
	fs,2 r4 fs g a g2.~ g R2.*3
	%40
	c4 d e a,2. r2. r4 r c b c d a2.
	g2. R2. c4 d e a,2. d d2 d4 c b a b2 r4
	%54
	g4 a b c2. b a fs4 g a 
	b2 c4 b2 a4 g2. g4 a b e,2.
	a4 b c fs,2. c'4 b a g2.~ g~ g4 r r
	%70
	g4 a bf c2. c4 bf a bf2. bf4 c d
	ef2. ef4 d c d2. d4 c bf c2.
	c4 bf a bf2. af4 bf c g2.~ g~ g
	bf4 a g d'2.~ d~ d2 r4
	%90
	b4 c d e2. e d d4 d d
	e2. d c b c 
	e2. a,2 d4 d d d d2. c4 ( d ) e 
	d2 r4 R2. r4 e,4 fs g a b d2.
	R2. r4 g,4 a b ( c ) d e2.
	%114
	g,4 a b e,2. a4 b c fs,2. fs4 g a
	g2 r4 d'4 c b g2.~ g~ g2 r4
	b4 a g g2 r4 g4 g g g2.~ g~ g\fermata
	\bar "||"
	
}

alto = \relative c' {
	\global
	R2.*8
	r4 r d d d d c2. d~ d b r2. r2.
	r4 r d d d d d2. ( c2 ) c4
	b2. d4 d g e2. c
	d2. d4 d d d2 d4 d2 d4
	e2. e4 fs g c,2 r4 c4 d e
	d2 r4 d4 d d g2.~ g R2.
	%38
	g4 a b e,. g fs2 fs4 
	fs4 g a e2. d~ d4 r4 r 
	g4 a b e,2. g fs2 fs4
	fs4 g a d,2.~ d~ d4 r r
	d4 d d e2. c d d4 d d
	d2 d4 d2 d4 e2. g4 a b e,2.
	a4 b c fs,2. c'4 b a g2.~ g~ g4 r r
	%70
	g4 g g g2. fs4 fs fs g2. bf4 a bf
	g2. f4 g a f2. g4 g g g2.
	fs4 g a g2. ef4 ef ef d2. cs
	d2. e4 e e fs. fs d2 r4
	g4 a b e,2. g fs fs4 g a
	g2. g~ g g4 a b e,2.
	g2. fs2 fs4 fs g a d,2.~ d~ 
	d2 r4 g4 a b c2. b a
	fs4 g a b2 c4 b2 a4 g2.
	e4 fs g c,2. e4e e d2. d4 e fs
	g2 r4 d'4 c b g2.~ g~ g2 r4
	b4 a g g2 r4 e d c b2.~ b~ b\fermata
	\bar "||"
}'