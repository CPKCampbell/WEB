\version "2.15.28"
\language "english"

\header {
  title = "A Song of Parting"
  composer = "David Angerman (ASCAP)"
  poet = "Joseph Graham (BMI)"
  copyright = "2008 Malcolm Music"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \time 4/4
  \partial 2
  \tempo "Expressively" 4=100
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
 d,4 e fs fs g g a a r d, |
 b'2 a4 g fs2 a4 a d2 d,4 d |
 b'2 e,4 fs g2 a e d4 e |
 fs2 g4 g a2 d,4 d b'2 cs |
 d4 \breathe d d d d2 d, b' a |
 g4 fs e d fs e d cs d \fermata r4 r2 |
 %bar 18
 r4 b\<  (e g) cs, e (a cs)\! e\f (d2) a4 |
 b1~ b4 e, (fs g) a1~a4 d, (e fs g fs e d e1) |
d2 r4 d\> (a'2 <d g>) \! a1 \fermata
  
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  
}

altoVoice = \relative c' {
  \global
  \dynamicUp
 b4 cs d d d cs e d r4 d |
 d2 e4 e d2 e4 e fs2 d4 d |
 d2 b4 b b2 b cs b4 cs d2 d4 cs e2 d4 d d2 fs |
 fs4\breathe d4 d e fs2 cs d d |
 d4 d b b d cs b a |
 a4\fermata \breathe a4 (d fs) b,1 r4 cs4 (e2) a g4 (fs) |
 d4 b (cs d ) cs1~ cs4 cs (d e) d1 |
 d1~ (d2 cs4 b) a2 r4  \voiceOne a4 (d2 e) e1\fermata 
  \new Voice { \voiceTwo a4 ( d1)  d1}
  
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.
  
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  g4 a a a a a a a  r4 a |
  b2 cs4 a a2 a4 a fs2 fs 4 fs |
  g2 g4 fs e2 e e g4 a |
  a2 a4 a a2 a4 a b2  b4 (as) |
  b4 \breathe b4 a g a2 fs d a'2 |
  b4 a g fs a a g g |
  fs \fermata r4 r2 R1 r2 a2\< a1\!\f~
  a4 d, (e fs ) e1~ e4 e (fs g ) fs1 |
  b4 (a b2 a2. g4 fs2 ) r4 fs4 (f2 g ) fs1\fermata
  
  
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.
  
}

bassVoice = \relative c {
  \global
  \dynamicUp
<<
  { \voiceOne
 a4 a d d e e fs fs r4 fs |
 g2 a,4 cs d2 cs4 cs b2 a4 a |
 g2 e'4 ds e2 e, a a4 a |
 d2 e4 e fs2 g4 fs g2 fs |
 b,4 \breathe b bf bf a2 a g fs |
 e4 fs g b a a a a |
 d4 \fermata r4 r2 r4 b'4 (a\< e) a2 g\! fs\f e4 (d) |g,1~ g fs b |
 e4 (fs g2 a a,) d r4 d8 (c bf1)  d1\fermata} 
  \new Voice {d2 ( d,) } \oneVoice s1
}
>>
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
