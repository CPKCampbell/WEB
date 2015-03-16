\version "2.19.17"
\language "english"
\header {
  title = "The Word Was God"
  instrument = "SSAATTBB, Unaccompanied"
  composer = "Rosephanye Powell"
  poet = "John 1: 1-3"
}

global = {
  \key c \major
  \numericTimeSignature
  \time 2/2
  \tempo "Strongly"
}

sopranoOne = \relative c'' {
  \global
  e,8\p e e-. e->~ e e d c d4-. c8 c d4-. e-.
  e4-. a, r4 a8 a c4-. d-. a r8 e' g4-> g8 g~ g g fs e
  fs8 fs g4-. e r4 R1*5 |
  %12
  R1 a8\p a a-. a~-.-> a a g e g4-. e8 e g4-. a-.
  %15
  a4-. e r4 e8 e g4-. a-. e-. r4 a8\mp a a-. a~-.-> a a g e |
  g4-. e8 8 g4-. a-. a-. e r4 e8 e
  %20
  g4-. a-. e r a8-.\mf a a-. a->~ a a g e
  %22
  g4-. e8 e g4-. a-. a-. e r e8 e
  %24
  g4-. a-. e r a8\f a a-. a~-.-> a a g e |
  g4-. e8 e g4-. a-. a-. e r4 e8 e |
  %28
  g4-.\< a-. e\ff-- \breathe r4 a4.\p^"dolce, legato, not slower" g8~ g e4 f8~ \< |
  << f1 { s4 s4\! s4\> s4\!} >> f4. g8~ g f4 e8~\< << e2. { s4 s4\! s4\>  } >> r4\! |
  %33
  a4. g8~ g e4 f8~\< <<f1 { s4 s4\! s4\> s4\! }>> f4. g8~ g f4 e8~\< |
  << e2. { s4 s4\! s4\> } >> r4\! a4.\mf g8~ g e4 f8~\< <<f1 { s2 s4\> s4\! } >>
  %39
  f4. g8~ g  f4 e8~\< |
  << e2. { s4 s4\! s4\> } >> r4\! a4.\mf g8~ g e4 f8~\< <<f1 { s2 s4\> s4\! } >> |
  f4. g8~ g f4 e8~ << e1 { s4 s4\> s4 s4\mp } >> \breathe
  %45
  R1*20
  %65
  a8\p a a-. a~-.-> a a g e g4-. e8 e g4-. a-.
  %67
  a4-. e r4 e8 e g4-. a-. e-.r4
  %69
  c'8 c c-. c->~ c c b a b4-. a8 a b4-. c-.
  c4-. a r a8 a b4-. c-. a r4
  r4 a8-> a b4-. c-. c-. a r2 r4 a8 a b4-> r4
  r4 a8^"legato" a b4\< c r2 e2\sfp\<~ e1\ff

}

sopranoTwo = \relative c'' {
  \global
  e,8\p e e-. e->~ e e d c d4-. c8 c d4-. e-.
  e4-. a, r4 a8 a c4-. d-. a r8 e' g4-> g8 g~ g g fs e
  fs8 fs g4-. e r4 R1*5 |
  %12
  R1 a8\p a a-. a~-.-> a a g e g4-. e8 e g4-. a-.
  %15
  a4-. e r4 e8 e g4-. a-. e-. r4 a8\mp a a-. a~-.-> a a g e |
  g4-. e8 8 g4-. a-. a-. e r4 e8 e
  %20
  g4-. a-. e r a8-.\mf a a-. a->~ a a g e
  %22
  g4-. e8 e g4-. a-. a-. e r e8 e
  %24
  g4-. a-. e r a8\f a a-. a~-.-> a a g e |
  g4-. e8 e g4-. a-. a-. e r4 e8 e |
  %28
  g4-.\< a-. e\ff-- \breathe r4 a4.\p^"dolce, legato, not slower" g8~ g e4 f8~ \< |
  << f1 { s4 s4\! s4\> s4\!} >> f4. g8~ g f4 e8~\< << e2. { s4 s4\! s4\>  } >> r4\! |
  %33
  a4. g8~ g e4 f8~\< <<f1 { s4 s4\! s4\> s4\! }>> f4. g8~ g f4 e8~\< |
  << e2. { s4 s4\! s4\> } >> r4\! a4.\mf g8~ g e4 f8~\< <<f1 { s2 s4\> s4\! } >>
  %39
  f4. g8~ g  f4 e8~\< |
  << e2. { s4 s4\! s4\> } >> r4\! a4.\mf g8~ g e4 f8~\< <<f1 { s2 s4\> s4\! } >> |
  f4. g8~ g f4 e8~ << e1 { s4 s4\> s4 s4\mp } >> \breathe
  %45
  R1*20
  %65
  a8\p a a-. a~-.-> a a g e g4-. e8 e g4-. a-.
  %67
  a4-. e r4 e8 e g4-. a-. e-.r4
  %69
  a8 a a-. a->~a a g e g4-. e8 e g4-. a-.
  a4-. e s4 e8 e g4-. a-. e-. r4
r4  a8-> a b4-. c-. c-. a r2 r4
 e8-> e g4-> r4
 r4 a8^"legato" a b4\< c r2  b2\sfp~ b1\ff
}

altoOne = \relative c' {
  \global
  e8\p e e-. e->~ e e d c d4-. c8 c d4-. e-.
  e4-. a, r4 a8 a c4-. d-. a r8 c e4-> e8 e~ e e d c |
  d8 d e4-. c r4 R1*6
  %13
  r2 r4 r8 c\mp e4-> e8 e~ e e d c |
  %15
  d8 d e4-. c r8 c e4-> e8 e~ e e d c d d e4-. c r8 c |
  %18
  e4-> e8 e~ e e d c d d e4-. c r8 c |
  %20
  e4-> e8 e~ e e d c d d e4-. c r8 c\mf |
  %22
  e4-> e8 e~ e e d c d d e4-. c r8 c |
  %24
  e4-> e8 e~ e e d c d d e4-. c r8 c\f |
  e4-> e8 e~ e e d c d d e4-. \phrasingSlurDashed c\( c8\) c |
  %28
  d4-.\< e-. c--\ff \breathe r4 e4.\p d8~ d c4 d8~
  << d1 { s4\< s4 s4\> s4\! } >> d4. e8~ e d4 c8~ c2. r4 |
  %33
  e4. d8~ d c4 d8~ d1 d4. e8~ e d4 c8~
  c2. r4 |
  %37
  e4.\mf d8~ d c4 d8~ d1 d4. e8~ e d4 c8~ c2. r4
  e4. d8~ d c4 d8~ d1 d4. e8~ e d4 c8~  (c2 b )
  R1*11
  %56
  e8\mf e e-. e->~ e e d c d4-. c8 c d4-. e-. e-. c r4 c8 c |
  d4-. e-. c r |
  %60
  g'8 g g-. g~ g g fs e fs4 e8 e fs4-. g-. g-.  e r4 e8 e |
  fs4-. g-. e r4 g8 g g-. g->~ g g fs e |
  fs4-. e8 e fs4-. g-. g-. e r4 e8 e |
  %67
  fs4-. g-. e r4 g8^"mf" g g-. g~-> g g fs e |
  fs4-. e8 e fs4-. g-. g-. e r4 e8 e |
  %71
  fs4-. g-. e r4 g8\f g g-. g~-> g g fs e |
  fs4-.\( e8->\) e fs4-. g-. g-.  e r4 e8-> e fs4-> r4 r2 |
  r4 e8 e g4\< a\! r2 g2~\sfp\< g1\ff
  \bar "||"
}

altoTwo = \relative c' {
  \global
  e8\p e e-. e->~ e e d c d4-. c8 c d4-. e-.
  e4-. a, r4 a8 a c4-. d-. a r8 c e4-> e8 e~ e e d c |
  d8 d e4-. c r4 R1*6
  %13
  r2 r4 r8 c\mp e4-> e8 e~ e e d c |
  %15
  d8 d e4-. c r8 c e4-> e8 e~ e e d c d d e4-. c r8 c |
  %18
  e4-> e8 e~ e e d c d d e4-. c r8 c |
  %20
  e4-> e8 e~ e e d c d d e4-. c r8 c\mf |
  %22
  e4-> e8 e~ e e d c d d e4-. c r8 c |
  %24
  e4-> e8 e~ e e d c d d e4-. c r8 c\f |
  e4-> e8 e~ e e d c d d e4-. \phrasingSlurDashed c\( c8\) c |
  %28
  d4-.\< e-. c--\ff \breathe r4 e4.\p d8~ d c4 d8~
  << d1 { s4\< s4 s4\> s4\! } >> d4. e8~ e d4 c8~ c2. r4 |
  %33
  e4. d8~ d c4 d8~ d1 d4. e8~ e d4 c8~
  c2. r4 |
  %37
  c4. b8~ b a4 b8~ b1 b4. c8~ c b4 a8~ a2. r4
  c4. b8~ b a4 b8~ b1 b4. c8~ c b4 c8~  (c2 b )
  R1*11
  %56
  e8\mf e e-. e->~ e e d c d4-. c8 c d4-. e-. e-. c r4 c8 c |
  d4-. e-. c r |
  %60
  e8 e e-. e~-> e e d c d4-. c8 c d4-. e-. e-. c r4 c8 c |
  d4-. e-. c r4 e8 e e-. e->~ e e d c |
  %65
  d4-. c8 c d4-. e-. e-. c r4 c8 c d4-. e-. c r4 |
  e8 e e-. e~-> e e d c d4-. c8 c d4-. e-. e-. c r4 c8 c |
  %71
  d4-. e-. c r4 e8\f e e-. e~-> e e d c
  d4-.\( c8->\) c d4-. e-. e-. c r4 c8-> c d4-> r4 r2 |
  %76
  r4 e8 e g4\< a\! r2 g2~\sfp\< g1\ff
}

tenorOne = \relative c' {
  \global
  R1*6 c8\p c c-. c->~ c c b a b4-. a8 a b4-. c-.
  c4-. a r4 a8 a b4-. c-. a r8 a\mp c4-> c8 c~ c c b a |
  %12
  b8 b\> c4-. a r4\! r2 r4 r8 a\mp c4-> c8 c~ c c b a |
  b8 b c4-. a\( a8\p\) a b4-. c-. a r8 c\mp c4-> c8 c~ c c b a |
  %16
  b8 b c4-. a\( a8\) a b4-. c-. a r8 a |
  c4-> c8 c~ c c b a b b c4-. a\( a8\) a |
  b4-. c-. a r8 a\mf c4-> c8 c~ c c b a |
  %24
  b8 b c4-. a a8 a b4-. c-. a r8 a\f |
  c4-> c8 c~ c c b a b b c4-. a\( a8\) a |
  b4-.\< c-. a--\ff \breathe r4 R1 |
  %30
  r4 b\p\< c d b1\>~ b4\! b c b a1~ a8 r8 b4 c d b1~
  %36
  b4 b c b a1\mf~ a8 r b4 \< c d
  %39
  b1\!\>~ b4 b c b a1~ a8 r b4 c d gs,4. a8~ a gs4 a8~ (a2 b\> ) \breathe |
  %45
  R1*2 a8\mp a a-. a~-> a a g e g4-. e8 e g4-. a-. |
  %49
  a4-. e r4 e8 e g4-. a-. e r4 |
  %51
  c'8 c c-. c->~ c c b a b4-. a8 a b4-. c-. |
  c4-. a r4 a8 a b4-. c-. a r4 |
  c8 c c-. c->~ c c b a b4\mp-. a8 a b4-. c-. |
  %57
  c4-. a r4 a8 a b4-. c-. a r4 |
  %59
  c8\mf c c-. c->~ c c b a b4-. a8 a b4-. c-. |
  c4-. a r4 a8 a b4-. c-. a r4 |
  c8 c c-. c->~ c c b a b4-. a8 a b4-. c-. |
  %68
  c4-. a r4 a8 a b4-. c-. a r4 |
  c8\mf c c-. c->~ c c b a b4-. a8 a b4-. c-. |
  c4-. a r4 a8 a b4-. c-. a r4 |
  c8 c c-. c->~ c c b a b4-. a8 a b4-. c-. |
  R1 c4-. a r4 a8-> a b4-> r4 r c8->\f c
  d4-> c8 c d4\< e r2\! d2\sfp\<~ d1\ff
  \bar "||"
}

tenorTwo = \relative c' {
  \global
  % Music follows here.
  R1*6 c8\p c c-. c->~ c c b a b4-. a8 a b4-. c-.
  c4-. a r4 a8 a b4-. c-. a r8 a\mp c4-> c8 c~ c c b a |
  %12
  b8 b\> c4-. a r4\! r2 r4 r8 a\mp c4-> c8 c~ c c b a |
  b8 b c4-. a\( a8\p\) a b4-. c-. a r8 c\mp c4-> c8 c~ c c b a |
  %16
  b8 b c4-. a\( a8\) a b4-. c-. a r8 a |
  c4-> c8 c~ c c b a b b c4-. a\( a8\) a |
  b4-. c-. a r8 a\mf c4-> c8 c~ c c b a |
  %24
  b8 b c4-. a a8 a b4-. c-. a r8 a\f |
  c4-> c8 c~ c c b a b b c4-. a\( a8\) a |
  b4-.\< c-. a--\ff \breathe r4 R1 |
  %30
  r4 b\p\< c d b1\>~ b4\! b c b a1~ a8 r8 b4 c d b1~
  %36
  b4 b c b a1\mf~ a8 r b4 \< c d
  %39
  b1\!\>~ b4 b c b a1~ a8 r b4 c d gs,4. a8~ a gs4 a8~ (a2 b\> ) \breathe |
  %45
  R1*2 a8\mp a a-. a~-> a a g e g4-. e8 e g4-. a-. |
  %49
  a4-. e r4 e8 e g4-. a-. e r4 |
  %51
  a8 a a-. a->~ a a g e g4-. e8 e g4-. a-. |
  a4-. e r4 e8 e g4-. a-. e r4 |
  %55
  a8 a a-. a->~ a a g e g4-. e8 e g4-. a-. |
  a4-. e r4 e8 e g4-. a-. e r4 |
  %59
  a8 a a-. a->~ a a g e g4-. e8 e g4-. a-. |
  a4-. e r4 e8 e g4-. a-. e r4 |
  %63
  a8 a a-. a->~ a a g e g4-. e8 e g4-. a-. |
  a4-. e r4 e8 e g4-. a-. e r4 |
  %67
  a8 a a-. a->~ a a g e g4-. e8 e g4-. a-. |
  a4-. e r4 e8 e g4-. a-. e r4 |
  %71
  a8 a a-. a->~ a a g e g4-. e8 e g4-. a-. |
R1 c4-. a r4 a8-> a b4-> r4 r c8->\f c
  d4-> c8 c d4\< c r2 g2~\sfp g1\ff
}

bassOne = \relative c {
  \global
  R1*6 a'8\p a a-. a->~ a a g e g4-. e8 e g4-. a-. |
  %9
  a4-. e r4 e8 e g4-. a-. e r8 e\mp a4-> a8 a~ a a g e |
  g8 g\> a4-. e r4 a8\p a a-. a->~ a a g e g4-. e8 e g4-. a-. |
  a4-. e r4 e8 e g4-. a-. e r4 a8\mp a a-. a->~ a a g e |
  %18
  g4-. e8 e g4-. a-. a-. e r4 e8 e |
  g4-. a-. e r4 a8\mf a a-. a->~ a a g e |
  g4-. e8 e g4-. a-. a-. e r4 e8 e |
  %24
  g4-. a-. e r4  a8\f a a-. a->~ a a g e |
  g4-. e8 e g4-. a-. a-. e r4 e8 e |
  g4-.\< a-. e--\ff \breathe  d4\p  e 1~
  %30
  e e~ e e~ e e~ e e~\mf e e~ e e1->~ e e4. e8~ e e4 e8~ e1 |
  %45
  e8\p e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  %65
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4\( |
  e8\) e e e->~ e e e4\(~ e8\) e e e->~ e e e4
  % 73
  R1 a4-. e r2 r2 r4 a8->\f a
  b4-> a8 a b4\< c r2\! b2~\sfp\< b1\ff\bar "||"
}

bassTwo = \relative c {
  \global
  % Music follows here.
  R1*6 a'8\p a a-. a->~ a a g e g4-. e8 e g4-. a-. |
  %9
  a4-. e r4 e8 e g4-. a-. e r8 e\mp a4-> a8 a~ a a g e |
  g8 g\> a4-. e r4 a8\p a a-. a->~ a a g e g4-. e8 e g4-. a-. |
  a4-. e r4 e8 e g4-. a-. e r4 a8\mp a a-. a->~ a a g e |
  %18
  g4-. e8 e g4-. a-. a-. e r4 e8 e |
  g4-. a-. e r4 a8\mf a a-. a->~ a a g e |
  g4-. e8 e g4-. a-. a-. e r4 e8 e |
  %24
  g4-. a-. e r4  a8\f a a-. a->~ a a g e |
  g4-. e8 e g4-. a-. a-. e r4 e8 e |
  g4-.\< a-. e--\ff \breathe  g,4\p  a1~
  %30
  a a~ a a~ a a~ a a~\mf a a~ a e'1->~ e e4. e8~ e e4 e8~ e1 |
  %45
  a,8\p a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  %65
  a8\) a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4\( |
  a8\)  a a a->~ a a a4\(~ a8\) a a a->~ a a a4
  %73
 R1 a'4-.  e4 r2 r2 r4 e8-> e
  e4-> e8 e e4\< e r2 <e a,>2~\sfp <e a>1\ff
}

verse = \lyricmode {
  In the be -- gin -- ning was the Word,
  and the Word was with God,
  and the Word was God.
  The same was in __ (uh) the be -- gin -- ning with God.
  In the be -- gin -- ning was the Word,
  and the Word was with God,
  and the Word was God.
  In the be -- gin -- ning was the Word,
  and the Word was with God,
  and the Word was God.
  In the be -- gin -- ning was the Word,
  and the Word was with God,
  and the Word was God.
  In the be -- gin -- ning was the Word,
  and the Word was with God,
  and the Word was God.

}

click = \drummode {
  \repeat unfold 78 {
    hc4-> hc  hc-> hc
  }
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano1" \new Voice = "soprano1" { \sopranoOne }
     \new Staff = "soprano2" \new Voice = "soprano2" { \sopranoTwo }
     \new Staff = "alto1" \new Voice = "alto1" { \altoOne }
     \new Staff = "alto2" \new Voice = "alto2" { \altoTwo }
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenorOne }
     \new Staff = "tenor2" \new Voice = "tenor2" { \tenorTwo }
     \new Staff = "bass1" \new Voice = "bass1" { \bassOne }
     \new Staff = "bass2" \new Voice = "bass2" { \bassTwo }
     \new DrumStaff = "click" \new DrumVoice = "click" { \click }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 60 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  \new ChoirStaff <<
  \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano I"
    } \new Voice = "soprano1" \sopranoOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano1" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano II"
    } \new Voice = "soprano2" \sopranoTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano2" \verse

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto I"
    } \new Voice = "alto1" \altoOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto1" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto II"
    } \new Voice = "alto2" \altoTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto2" \verse

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor I"
    } {
      \clef "treble_8"
      \new Voice = "tenor1" \tenorOne
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor II"
    } {
      \clef "treble_8"
      \new Voice = "tenor2" \tenorTwo
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor2" \verse

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass I"
    } {
      \clef bass
      \new Voice = "bass1" \bassOne
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass1" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass II"
    } {
      \clef bass
      \new Voice = "bass2" \bassTwo
    }
      \new DrumStaff \with {
      midiInstrument = "woodblock"
      instrumentName = "Click"
    } {
         \new DrumVoice = "click" \click
    }

  >>
  \layout { }
  \midi {
    \tempo 2=60
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano1"
  \score {
    \rehearsalMidi "soprano1" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "soprano2"
  \score {
    \rehearsalMidi "soprano2" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto1"
  \score {
    \rehearsalMidi "alto1" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto2"
  \score {
    \rehearsalMidi "alto2" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor1"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor2"
  \score {
    \rehearsalMidi "tenor2" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass1"
  \score {
    \rehearsalMidi "bass1" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass2"
  \score {
    \rehearsalMidi "bass2" "tenor sax" \verse
    \midi { }
  }
}

