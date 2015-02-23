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