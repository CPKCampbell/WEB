\version "2.17.9"

\include "english.ly"

\header {
  title = "Guide Me, O Thou Great Jehovah"

}


\paper {

  #(set-paper-size "letter" )
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #30
  last-bottom-spacing #'basic-distance = #10

  ragged-last-bottom = ##f

  ragged-bottom = ##t
  ragged-right = ##f
  page-breaking = #ly:minimal-breaking
%  systems-per-page = #3
  print-page-number = ##t
  check-consistency = ##t
  % annotate-spacing = ##t
}

global = {
  \tempo "Steady, dignified walking tempo"
  \key g \major
  \time 4/4
}

tenorI = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  R1 R1 d4\mf e d4. g8
  g ([fs]) g (a) b4 a b g e c'b a g2|
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  d c g g8 (a) b4 c b2 |
  %11
  d4. d8 d4 d d4. d8 d4 d |
  d4. d8 g, [g] a [a] fs\< ([g]) a [b] c2 \breathe
  b4\f\! a4 g g8 ([c]) |
  b4\> c b2\mf\!
  %17
  d,4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b g e c' b a g2 d4 e d4. g8 |
  g8 ([fs]) g ([a]) b4 a d c g g8 ([a]) b4 c b2 |
  d4. d8 d4 d d4. d8 d4 d |
  d4. d8 g, [g] a [a] fs\< ([g]) a [b] c2 \breathe
  b4\f\! a g g8 ([c]) b4\> c b2\mf\!
  R1*2 \key af \major R1 R1
  %35
  ef,4\f^"broader" f ef4. af8 af ([g]) af ([bf]) c4 bf |
  c af f df' c bf af ~af8 r8 ef4 f ef4. af8 |
  af8 ([g])af ([bf]) c4 bf c df ef df8 ([bf])af4^"slight accel." g af2 |
  %43
  g4.^"a tempo" af8 bf4 g ef'4. df8 c4 af af4. af8 af [af] bf [bf] |
  g8 ([af])bf [c] df2 c4 bf af af8 ([df])c4 df c2 |
  ef4.\ff^"Broadly" df8 c ([ef]) df ([bf])
  <c ef>2 \breathe <df ef> <af' ef>1\fermata |
  \bar "|."




}

verseTenorI = \lyricmode {
  % Lyrics follow here.
  Guide me, O Thou great Je -- ho -- vah,
  Pil -- grim through this bar -- ren land;
  I am weak, but Thou  art  might -- y;
  Hold me with Thy __ pow'r -- ful hand;
  Bread of heav -- en, Bread of heav -- en,
  Feed me till I want no more, want no more,
  Feed me till  I __ want no more.
  %17
  O -- pen now the crys -- tal __ foun -- tain,
  Whence the heal -- ing stream doth flow.
  Let the fire and cloud -- y __ pil -- lar
  lead me all my __ jour -- ney through.
  %25
  Strong De -- liv -- 'rer, Strong De -- liv -- 'rer,
  Be Thou still my Strength and Shield, __ Strength and Shield,
  Be Thou still  my Strength and Shield.
  %35
  When I tread the verge of __ Jor -- dan,
  Bid my anx -- ious fears sub -- side; __
  Death of death, and hell's __ de -- struc -- tion,
  Land me safe on __ Can -- naan's side;
  %43
  Songs of prais -- es, songs of prais -- es,
  I will ev -- er give to Thee, give to Thee,
  I will ev -- er give to Thee;
  I will ev -- er give to Thee!
}

tenorII = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  R1 R1 d4\mf e d4. g8
  g ([fs]) g (a) b4 a b g e c'b a g2|
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b c d c8 (a) g4 fs g2 |
  %11
  a4. b8 c4 a b4. c8 d4 b |
  d4. d8 c [b] a [g] d'1\< \breathe
  d4.\f\! c8 b ([d]) c ([a]) |
  g4\> fs g2\mf\!
  %17
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b g e c' b a g2 d4 e d4. g8 |
  g8 ([fs]) g ([a]) b4 a b c d c8 ([a]) g4 fs g2 |
  %25
  a4. b8 c4 a b4. c8 d4 b d4. d8 c [b] a [g] d'1\< \breathe
  d4.\f\! c8 b ([d])c ([a])g4\> fs g2\mf\!|
  R1*2 \key af \major R1 R1
  ef4\f^"broader" f ef4. af8 af ([g]) af ([bf]) c4 bf |
  c af f df' c bf af ~af8 r8 ef4 f ef4. af8 |
  af8 ([g])af ([bf]) c4 bf c df ef df8 ([bf])af4^"slight accel." g af2 |
  %43
  bf4.^"a tempo" c8 df4 bf c4. df8 ef4 c ef4. ef8 df [c] bf [af] |
  ef'1 ef4. df8 c([ef]) df ([bf])af4 g af2 |
  ef'4.\ff^"Broadly" df8 c ([ef]) df ([bf]) af2 \breathe bf c1 \fermata

}

verseTenorII = \lyricmode {
  % Lyrics follow here.
  Guide me, O Thou great Je -- ho -- vah,
  Pil -- grim through this bar -- ren land;
  I am weak, but Thou __ art __ might -- y;
  Hold me with Thy __ pow'r -- ful hand;
  Bread of heav -- en, Bread of heav -- en,
  Feed me till I want no more,
  Feed me till __ I __ want no more.
  %17
  O -- pen now the crys -- tal __ foun -- tain,
  Whence the heal -- ing stream doth flow.
  Let the fire and cloud -- y __ pil -- lar
  lead me all my __ jour -- ney through.
  %25
  Strong De -- liv -- 'rer, Strong De -- liv -- 'rer,
  Be Thou still my Strength and Shield, __
  Be Thou still  my Strength and Shield.
  %35
  When I tread the verge of __ Jor -- dan,
  Bid my anx -- ious fears sub -- side; __
  Death of death, and hell's __ de -- struc -- tion,
  Land me safe on __ Can -- naan's side;
  %43
  Songs of prais -- es, songs of prais -- es,
  I will ev -- er give to Thee,
  I will ev -- er __ give to Thee;
  I will ev -- er __ give to Thee!
}

bassVoiceI = \relative c {
  \global
 \dynamicUp
  % Music follows here.
  R1*2 d4\mf  e d4. g8
  g ([fs]) g (a) b4 a b g e c'b a g2|
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  g g d e d d d2
  %11
  fs4. g8 a4 fs g4. a8 b4 g |
  g4. g8 e [e] e [e]  d4\< d8 [e] fs2 \breathe |
  g4\f\! fs f e d\> d d2\mf\! |
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b g e c' b a g2 d4 e d4. g8 |
  g8 ([fs]) g ([a]) b4 a g g d e d d d2 |
  fs4. g8 a4 fs g4. a8 b4 g g4. g8 e [e] e [e] |
  d4\< d8 [e] fs2 \breathe
  g4\f\! fs f e d\> d d2\mf\!
  R1*2 \key af \major R1 R1
  ef4\f^"broader" f ef4. af8 af ([g]) af ([bf]) c4 bf |
  c af f df' c bf af ~af8 r8 ef4 f ef4. af8 |
  af8 ([g])af ([bf]) c4 bf c df ef df8 ([bf])af4^"slight accel." g af2 |
  ef4.^"a tempo" ef8 ef4 ef af4. g8 af4 ef ef4. ef8 f [f] f [f] |
  ef4 ef8 [f] g2 af4 g gf f ef ef ef2 |
  ef4.^"Broadly"\ff df8 c ([ef]) df ([bf])ef2 \breathe ef af1 \fermata
}

verseBassVoiceI = \lyricmode {
  % Lyrics follow here.
  Guide me, O Thou great Je -- ho -- vah,
  Pil -- grim through this bar -- ren land;
  I am weak, but Thou __ art __ might -- y;
  Hold me with Thy __ pow'r -- ful hand;
  Bread of heav -- en, Bread of heav -- en,
  Feed me till I want no more, want no more,
  Feed me till I want no more.
  %17
  O -- pen now the crys -- tal __ foun -- tain,
  Whence the heal -- ing stream doth flow.
  Let the fire and cloud -- y __ pil -- lar
  lead me all my jour -- ney through.
  %25
  Strong De -- liv -- 'rer, Strong De -- liv -- 'rer,
  Be Thou still my Strength and Shield, __ Strength and Shield,
  Be Thou still  my Strength and Shield.
  %35
  When I tread the verge  of __ Jor -- dan,
  Bid my anx -- ious fears sub -- side; __
  Death of death, and hell's __ de -- struc -- tion,
  Land me safe on __ Can -- naan's side;
  %43
  Songs of prais -- es, songs of prais -- es,
  I will ev -- er give to Thee, give to Thee,
  I will ev -- er give to Thee;
  I will ev -- er give to Thee!
}

bassVoiceII = \relative c {
  \global
\dynamicUp
  % Music follows here.
  R1*2 d4\mf  e d4. g8
  g ([fs]) g (a) b4 a b g e c'b a g2|
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  g e b c d d g,2 |
  %11
  d'4 d d8 [d] d [d] d4 d d8 [d] d [d] |
  b4. b8 c [c] cs [cs] d ([e])\< fs g a2 \breathe |
  g4\f\! d d8 ([b]) c4 d\> d g,2\mf\! |
  d'4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b g e c' b a g2 d4 e d4. g8 |
  g8 ([fs]) g ([a]) b4 a g e b c d d g,2
  %25
  d'4 d d d d d d d b4. b8 c [c] cs [cs] |
  d8\< ([e]) fs g a2 \breathe
  g4\f\! d d8 ([b])c4 d\> d g2\mf\!
  R1*2 \key af \major R1 R1
  %35
  ef4\f^"broader" f ef4. af8 af ([g]) af ([bf]) c4 bf |
  c af f df' c bf af ~af8 r8 ef4 f ef4. af8 |
  af8 ([g])af ([bf]) c4 bf c df ef df8 ([bf])af4^"slight accel." g af2 |
  ef4.^"a tempo" ef8 ef4 ef ef4. ef8 ef4 ef c4. c8 df [df] d [d] |
  ef ([f]) g [af] bf2 af4 ef ef8 ([c]) df4 ef ef af2 |
  ef4.\ff^"Broadly" df8 c ([ef]) df ([bf]) ef,2 \breathe g af1 \fermata |
}
verseBassVoiceII = \lyricmode {
  % Lyrics follow here.
  Guide me, O Thou great Je -- ho -- vah,
  Pil -- grim through this bar -- ren land;
  I am weak, but Thou __ art __ might -- y;
  Hold me with Thy __ pow'r -- ful hand;
  Bread of, Bread of heav -- en, Bread of, Bread of heav -- en,
  Feed me till I want no more, __ want no more,
  Feed me till __ I want no more.
  %17
  O -- pen now the crys -- tal __ foun -- tain,
  Whence the heal -- ing stream doth flow.
  Let the fire and cloud -- y __ pil -- lar
  lead me all my jour -- ney through.
  %25
  Strong De -- liv -- 'rer, Strong De -- liv -- 'rer,
  Be Thou still my Strength and Shield, __ Strength and Shield,
  Be Thou still  my Strength and Shield.
  %35
  When I tread the verge of __ Jor -- dan,
  Bid my anx -- ious fears sub -- side; __
  Death of death, and hell's __ de -- struc -- tion,
  Land me safe on __ Can -- naan's side;
  %43
  Songs of prais -- es, songs of prais -- es,
  I will ev -- er give to Thee, give to Thee,
  I will ev -- er give to Thee;
  I will ev -- er give to Thee!
}

tenorIPart = \new Staff \with {
  instrumentName = "Tenor 1"
  midiInstrument = "acoustic grand"
} { \clef bass \tenorI }
\addlyrics { \verseTenorI }

tenorIIPart = \new Staff \with {
  instrumentName = "Tenor 2"
  midiInstrument = "acoustic grand"
} { \clef bass \tenorII }
\addlyrics { \verseTenorII }

bassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  midiInstrument = "acoustic grand"
} { \clef bass \bassVoiceI }
\addlyrics { \verseBassVoiceI }

bassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  midiInstrument = "acoustic grand"
} { \clef bass \bassVoiceII }
\addlyrics { \verseBassVoiceII }

\score {
 \new ChoirStaff
 <<
    \tenorIPart
    \tenorIIPart
    \bassVoiceIPart
    \bassVoiceIIPart
  >>
  \layout {
  \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = ##f
      \override VerticalAxisGroup.staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 5)
         (padding . 2))
    }
 
    \context {
      \Staff
      \override VerticalAxisGroup.staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 5)
         (padding . 2))
    }
  }
}

\midi {
  \context {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 96 4)
  }
}
