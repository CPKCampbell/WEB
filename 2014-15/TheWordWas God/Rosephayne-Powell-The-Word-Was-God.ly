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
  \tempo "Strongly" 2=60
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  e,8\p e e-. e->~ e e d c d4-. c8 c d4-. e-.
  e4-. a, r4 a8 a c4-. d-. a r8 e' g4-> g8 g~ g g fs e
  fs8 fs g4-. e r4 R1*6 |
  %12
  R1 a8\p a a-. a~-.-> a a g e g4-. e8 e g4-. a-.
  %15
  a4-. e r4 e8 e g4-. a-. e-. r4 a8\mp a a-. a~-.-> a a g e |
  
  
  
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
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
