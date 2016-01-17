\version "2.19.0"
\language "english"

\header {
  title = "Magnificat"
  instrument = "Flute"
  composer = "Ruth Elaine Schram"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Gently, with freedom" 4=96
  \compressFullBarRests
}

flute = \relative c'' {
  \global
  e2\mp (e e4. g8 g2) e (e e4. g8 g2~ g1\>) R1\! |
  e2 (e e4. g8 g4 c, c1\>) R1*2\!
  r2 a8\mp (b c d e1\>) R1\!
  e2\mf (e e4. g8 g4 c g2) c,8 (d e f g2.) r4 |
  g2 c,16^"poco rall." (b a b c d e f g2.) r4 |
  %21
  e2 (e e4. g8 g2) e2 (e e4. g8 g4 a8 b g1\>) R1\! |
  e2 (e e4. g8 g4 a8 b c1\>) R1*2\! |
    r4 f,8\mf (g a g f g~ g1\>) R1\! |
  %35
  e2\mf (d4 c e4. g8 g4 c g2) c,8 (d e f g2.) r4 |
  g2^"poco rall." f16 (g a b a b c d e2 d4. c8 c2) r8^"a tempo" g8 (c d e d c g e4 d c4.) r8 r2 |
  R1*5 g'2\mf (c,8 d e f g2) c,8 (d c16 d e f g2)^"poco rall." c,16(b a b c d e f) |
  g2\trill g~ g1^"a tempo"\> R1\! |
  %55
  e2\mf (e e4. g8 g4 c, c1)\> R1*2\! |
  r4 f8\mf (g a g f g~ g1\>) R1\! |
  %63
  e2\mf (d4 c e4. g8 g4 c g2) c,8 (d e f g2.) r4 |
  g2^"poco rall." a,8 (b c d e4. d16 c d4) r4 |
  e2^"a tempo" (e e4._"rit e dim al fine" g8 g2) c,1 (b) |
  c4. (c8 b a g1 ) \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Flute"
    midiInstrument = "flute"
  } \flute
  \layout { }
  \midi { }
}
