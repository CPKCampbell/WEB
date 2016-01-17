\version "2.17.3"
\language "english"

\header {
  title = "One At The Feast"
  instrument = "Two-part Mixed with optional Flute"
  composer = "Craig Courtney"
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 6/8
  \tempo "Gently" 4.=48
  \set Score.markFormatter = #format-mark-box-numbers
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  R2.*3 r4. r8 c,\mf c f4 f16 e f8 c f g g16 a~ a bf a4\breathe f8 |
  c'8. c16 c c c8 f,a bf bf16 a~ a f g4 g8 |
  c8 c c16 c c8 f,f d' d16 d~ d d g,4 \breathe a16 bf |
  c4 c8 c f, a bf4. bf8 a f g4. r4 a16\mf bf |
  c8. bf16 a bf c4 g16 a bf8 g a bf a g a8. g16 f g a4 f16 f |
  bf4 r8 bf8 a f f2.
  %19
  R2.*9 r4. r4 a16\mf bf |c8. bf16 a bf c4 g16 a bf8 g a bf a g |
  a8. g16 f g a4 f16 f bf4 r8 bf a f f2. |
  R2. d16 e f8 g f c4 bf'16 a f8 g c,4 r8 |
  R2.*2 d16\mp e f8 g f c4 d16\< e f8 g a4. |
  a16\!\mf g a8 bf c f,4 bf bf8 bf (a) f |
  %43
  g2.~ g4. r4 g8 
  \key g \major a2.~ a4. r4 b16 c |
  d8.\f c16 b c d4 a16 b c8 a b c b a |
  b8. a16 g a b4 \breathe  g16 g |
  c8 b g a b c d8. c16 b c d4 a16 b |
  c8 a b c b a b8. a16 g a b8 r8 a16 b |
  c4.~ c4 b16 c d4.~ d4 a16 b |
  c2.~ c4 r8 c\> b g\! g2. R2.*4
 
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  
}

bassVoice = \relative c {
  \global
  \dynamicUp
 R2.*12 r4. r4 c'16\mf bf a8. bf16 c bf a4 bf16 a |
 g8 bf a g e a f8. g16 a g f4 c'16 c |
 bf4  r8 bf8 a f f2. 
  %19
  r4. c8 c c f4 f16 e f8 c f |
  g8 g16 a~ a bf a4 \breathe f8 c'8. c16 c c c8 f, a |
  bf8 bf16 a~ a f g4 \breathe g8 c c c16 c c8 f, f |
  d'8 d16 d~ d d g,4 a16 (bf) c8. c16 c c c8 f, a |
  bf4 bf8 bf (a) f g4. r4 c16 \mf bf |
  a8. bf16 c bf a4 bf16 a g8 bf a g e a |
  f8. g16 a g f4 c'16 c bf4 r8 bf8 a f f2. |
  R2.*3 d16 e f8 g f c4 bf'16 bf a8 c g4 r8 |
  d'16 d c8 bf a c4 d16 d c8 bf a4. |
  a16 bf a8 g a d4 bf bf8 bf (a) f |
  g2.~ g4. r4 g8 |
  \key g \major a2.~ a4. r4 d16 c |
  b8. c16 d c b4 c16 b a8 c b a fs b |
  g8. a16 b a g4 \breathe b16 b a8 b c c b a |
  b8. c16 d c b4 c16 b a8 c b a fs b |g8. a16 b a g8 r8 r |
  r4 a16 b c4. r4 b16 c d4. |
  r4 a16 b c4.~ c4 r8 c8 b g g2. R2.*4
}

verseBassVoice = \lyricmode {
  % Lyrics follow here.
  
}

flute = \relative c'' {
  \global
  r4 f16_\mf (e) f4. r4 f16 (e) f4 a8 |
  bf8 ( a bf ) c (bf a ) bf8.-> a16->~a8 f8.->\> d16->~ d8\! |
  c4.-> r4.
  % 6-17
  R2.*12 f8._\mf f16~ (f e) f8. e16~ (e f) g4. bf8 (f) d c4. r4. |
  R2.*8 r8 a'16_\mf (bf c8) r8 f,16 (g a8) |
  r8 g16 (a bf8) r8 e,16 (f g8) a4.~ (a8. g16 f a ) |
  bf8 bf,16 (c d8) d16 (e f g a bf ) |
  c4 (a16 bf) c4 ( g16 a ) bf8 (a ) f c4. |
  R2.*4 %35-38
  r4. f16_\mp (g a8 c) bf4.\< e,16 (f g f g bf)\! |
  a16\mf (g a ) bf (a bf) c8. (a16 g f ) bf4. r4. |
  %43
  g8. g16~ (g f) g8 (e) g bf (a) f g e16 (f g c) |
  \key g \major
  a8. a16~ (a g) a8 (fs) a |
  c (b) g a \times 4/7 {d,16 (e fs g a b c ) } d4.\f d8. (c16 b d) |
  c4. c8. (b16 a c) b4. b8. ( a16 g d) |
  e8 ( g) c a8. e'8. d4 ( a'8) g4 (d8) c4 (g'8) fs4 (b,8) b2. |
  a16 (b c4~ c) r8 b16 (c d4~d) r8 |
  a16 (b c4~ c4. c) r4. |
  r4 g16 (fs) g4. r4 g16 (fs) g4 b8 |
  c8 (b c) d (c b) c8.-> b16->~ b8 g8.->\> e16->~ e8 d2.\fermata_\mp\!
  
}

right = \relative c'' {
  \global
  % Music follows here.
  
}

left = \relative c' {
  \global
  % Music follows here.
  
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Part I"
  shortInstrumentName = "I"
  midiInstrument = "violin"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Part II"
  shortInstrumentName = "II"
  midiInstrument = "cello"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

flutePart = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \flute

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \sopranoVoicePart
    \bassVoicePart
    \flutePart
    \pianoPart
  >>
  \layout { }
  \midi { }
}
