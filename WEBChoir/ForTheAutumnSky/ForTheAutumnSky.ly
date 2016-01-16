\version "2.17.3"
\language "english"

\header {
  title = "For The Autumn Sky"
  instrument = "SAB"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Gently" 4=96
  \set Score.markFormatter = #format-mark-box-numbers
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  R1*7 r2 r4 b,8 c |
  g'2. b,8 c g'4 f e d8 c b4 c a2~ a r4 b8 c |
   g'2. b,8 c g'4 f e d8 c <g' b>4 <a c> < f a>2~ q r4 b8 c |
   g2. b8 c g4 f e d8 c g'4 f e g c,2 r4 b8 c |
   g'4 c,2 b8 c g'4 c,2 b8 c g'4 e2.~ e2 r2 |
   R1 r2 r4 b8\mf c
   g'2. b,8 c g'4 f e d8 c b4 c a2~ a r4 b8 c |
   g'2. b,8 c g'4 f e d8 c b'4 c a2~ a r4 b8 c |
   g2. b8 c g4 f e d8 c g'4 f e g c,2 r4 b8 c |
   g'4 c,2 b8 c g'4 c,2 b8 c g'4 e2.~ e2 r4 f8 e  |
   %43
   d4 g g4. a8 g4 f e d d e2. |
   f4 e d c d g2 g8 a g4 f e d e1~ e4 r4 e e |
   \key d \major
   %51
   e4 a a4. b8 a4 g r4 fs8 e e4 fs fs a g fs e d |
   f4 d r4 d8 e f4 e d f a1~ a2 r4 cs,8\f d |
   a'2. cs,8 d a'4 g fs e8 d cs4 d b2~ b r4 cs8 d |
   a'2. cs,8 d a'4 g fs e8 d cs'4 d b2~ b r4 cs8 d |
   a2. cs,8 d a'4 g fs e8 d a'4 g fs a d,2 r4 cs8 d |
   a'4 d,2.~ d2 r4 cs8 d a'4 d,2.~ d2 r4 cs8 d |
   a'4 fs2.~ fs1~ fs
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
   R1*15 
  r2 r4 d8 c g'2. d8 c g'4 f e d8 c |
  c4 c c c c2 r4 b8 c c4 c2 b8 c |
  c4 c2 b8 a b4 c2.~ c2 r2 R1 |
 r2 r4 b8\mf c
   g'2. b,8 c g'4 f e d8 c b4 c a2~ a r4 b8 c |
   g'2. b,8 c g'4 f e d8 c c4 c c2~ c r4 d8 c |
   g'2. d8 c g'4 f e d8 c c4 c c c c2 r4 b8 c |
   c4 c2 b8 c c4 c2 b8 a b4 c2.~ c2 r4 c8 c |
   b4 d d4. d8 c4 c c a a c2. |
   d4 c d c b d2 d8 d c4 c c a c1 (d4) r4 d d |
   \key d \major
    cs4 cs cs4. cs8 d4 d r4 d8 b b4 d d cs |
    e4 d a a d bf r4 bf8 c d4 c bf d |
    d1 (cs2) r4 cs8 d e2 (d4) cs8 d |
    d4 d d e8 d cs4 d b2~ b r4 cs8 d |
    e2 (d4) cs8 d d4 d d e8 d d4 d d2~ d r4 e8 d |
    d4 d cs2 b4 b a e'8 d d4 d d d d2 r4 cs8 d |
    d4 d2.~ d2 r4 cs8 d d4 d2.~ d2 r4 cs8 b |
    cs4 d2.~ d1~ d
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.
  
}

bassVoice = \relative c {
  \global
  \dynamicUp
  R1*15 
  r2 r4 b'8\mf a \mark #17 
  g2. b8 a g4 f e f8 g |
  a4 a g e f2 r4 g8 a |
  a4 a2 g8 a a4 a2 g8 a |
  g4 g2.~ g2 r2 R1 |
  r2 r4 b8\mf c \mark #27
  g1~ g2. r4 |
  g4 a f2~ f r4 b8 c |
  g2. b,8 c g'4 a g f8 e |
  g4 a f2~ f r4 b8 a |
  g2. b8 a g4 f e f8 g a4 a g e f2 r4 g8 a |
  a4 a2 g8 a a4 a2 g8 a b4 g2.~ g2 r4 a8 g |
  \mark #43 g4 b b4. b8 a4 a g f f g2. |
  a4 g f e g b2 b8 b a4 a g f |
  g1~\crescTextCresc g4\! r4 b b |
  \key d \major \mark #51
  %51
  a4 a a4. a8 b4 b r4 a8 g g4 a a a b a g a |
  bf4 f r4 f8 f bf4 g g bf |
  a1~a2 r4 a8\f g |
  fs2. e8 fs fs4 g a g8 fs a4 b g2~g2 r4 a8 g |
  \mark #67 fs2. e8 fs fs4 g a g8 fs |
  a4 b g2~ g2 r4 g8 b |
  a2. a8 a e4 e fs g8 a b4 b a fs g2 r4 a8 b |
  b4 b2.~ b2 r4 a8 b b4 b2.~ b2 r4 a8 b |
  a4 a2.~ a1~ a1\p
  
  
}

verseBassVoice = \lyricmode {
  % Lyrics follow here.
  
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
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "violin"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  shortInstrumentName = "B."
  midiInstrument = "cello"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

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
    \altoVoicePart
    \bassVoicePart
    \pianoPart
  >>
  \layout { }
  \midi { }
}
