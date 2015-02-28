\version "2.19.16"
\language "english"

\header {
  title = "The Word Was God"
  instrument = "SSAATTBB, Unaccompanied"
  composer = "Rosephayne Powell"
  poet = "John 1: 1-3"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  \time 2/2
  \numericTimeSignature
  \tempo "Strongly" 2=60
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
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
  << { c'8 c c-. c->~ c c b a b4-. a8 a b4-. c-.
       c4-. a r a8 a b4-. c-. a r4
       r4 a8-> a b4-. c-. c-. a r2 r4 a8 a b4-> r4
       r4 a8^"legato" a b4\< c r2 e2\sfp\<~ e1\ff}
     {a,8 a a-. a->~a a g e g4-. e8 e g4-. a-.
      a4-. e s4 e8 e g4-. a-. e-. s4
      s1*2 s4 e8-> e g4-> s4
      s1 s2 b2\sfp~ b1\ff }
  >>
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
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
 << {
   e4.\mf d8~ d c4 d8~ d1 d4. e8~ e d4 c8~ c2. r4
   e4. d8~ d c4 d8~ d1 d4. e8~ e d4 c8~  (c2 b )
    }
    {c4. b8~ b a4 b8~ b1 b4. c8~ c b4 a8~ a2. r4
     c4. b8~ b a4 b8~ b1 b4. c8~ c b4 s8 s2 s2
    }
 >>
 R1*11
 %56
e8\mf e e-. e->~ e e d c d4-. c8 c d4-. e-. e-. c r4 c8 c |
d4-. e-. c r |
%60

<<
  %alto I
  { g'8 g g-. g~ g g fs e fs4 e8 e fs4-. g-. g-.  e r4 e8 e |
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
  % alto II
  {e8 e e-. e~-> e e d c d4-. c8 c d4-. e-. e-. c r4 c8 c |
   d4-. e-. c r4 e8 e e-. e->~ e e d c |
   %65
   d4-. c8 c d4-. e-. e-. c r4 c8 c d4-. e-. c r4 |
   e8 e e-. e~-> e e d c d4-. c8 c d4-. e-. e-. c r4 c8 c |
   %71
   d4-. e-. c r4 e8\f e e-. e~-> e e d c
   d4-.\( c8->\) c d4-. e-. e-. c r4 c8-> c d4-> s4 s2 |
   %76
   s4 s8 s8 s4 s4 s2 s2 s1
     }
  >>
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

bassVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

verseBassVoice = \lyricmode {
  % Lyrics follow here.

}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

\score {
  <<
    \sopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout { }
  \midi { }
}