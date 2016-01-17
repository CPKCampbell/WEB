\version "2.16"

\header {
  title = "Are You Dressed For The Wedding?"
  instrument = "SATB accompanied"
  composer = "Joseph Martin & David Angerman"
  tagline = "Engraved with Lilypond"
}

global = {
  \key f \major
  \time 4/4
  \partial 4.
  \language  "english"
  \set Score.markFormatter = #format-mark-box-numbers
}

soprano = \relative c'' {
  \global
  % Music follows here.
  r8 r4 R1*2
  r2 r4 c,8_\mf d f4 f8 f16 d~ d8 c f g r8 a4 g8 f4 a8 g |
  f4 f8 f16 g~ g8 f f g r8 a a g16 f~ f4 c8 d |
  f4 f8 f16 d~ d8 c f g a4\< c d d8 d\! |
  c\f c c d16 c~ c8 a f g 
  \time 2/4 a8 a4 g8 \time 4/4
  f2. f8\mf g \mark #13 a a a a a16 a8. a8 a g16 f8. f8 d f4 r4 |
  R1 r2 r4 r8 g8 a a a a16 g~ g8 f f f |
  bf4\< c8 d~ d\! r8 d\f d c c16 c~ c8 d c a f g |
  \time 2/4 a16 a8. a8 g |
  \time 4/4 f2. c8 d \mark #22
  f4 f8 f16 d~ d8 c f g r8 a4 g8 f4 a8 g |
  f4 f8 f16 g~ g8 f f g r8 a a g16 f~ f4 c8 d |
  f4 f8 f16 d~ d8 c f g a4 c d d8 d |
  c8 c c d16 c~ c8 a f g |
  \time 2/4 a8 a4 g8 
  \time 4/4 f2. r4 \mark #31
  R1 r2 r4 c8 d f f f g a c a16 (g) f8 |
  g8 g g a16 g~ g4 r4 R1 |
  r2 r4 d'8\f d c c16 c~ c8 d c a f g |
  \time 2/4 a8 a a16 g8 f16~ \time 4/4 f2. c8 d |
  f4 f8 f16 d~ d8 c f g r8 a4 g8 f4 a8 g |
  f4 f8 f16 g~ g8 f f g r8 a a g16 f~ f4 c8 d |
  f4 f8 f16 d~ d8 c f g a4\< c d d8 d \! |
  c8\f c c d16 c~ c8 a f g |
  \time 2/4 a8 a4 g8 \time 4/4 f2. df8 ef |
  \mark #49 \key gf \major
  gf4 gf8 gf16 ef~ ef8 df gf af r8 bf4 af8 gf4 bf8 af |
  gf4 gf8 gf16 af~ af8 gf8 gf af r8 bf bf af16 gf~ gf4 df8 ef |
  gf4 gf8 gf16 ef~ ef8 df gf af |
  \time 2/4 bf4 df \time 4/4 ef2. ef8 ef |
  df8 df df ef16 df~ df8 bf gf af |
  bf4\< df ef <ef gf> \! <df gf>1\ff R1
}

alto = \relative c' {
  \global
  % Music follows here.
   r8 r4 R1*2
    r2 r4
}

tenor = \relative c {
  \global
  % Music follows here.
  r8 r4 R1*2
    r2 r4 c'8\mf bf a4 a8 a16 bf~ bf8 a a bf |
    r8 c4 bf8 a4 c8 c bf4 bf8 bf16 bf~ bf8 bf bf bf |
    r8 c8 c bf16 a! a4 c8 bf a4 a8 a16 bf~ bf8 a a g |
   c4\< a bf bf8 bf \! a\f a a bf16 a~ a8 c b b |
    \time 2/4 c,8 c4 c8 \time 4/4
    a2. r4 \mark #13 R1 r2 r4 r8 c8\mf
    f8 f f g a c a16 (g) f8 g g g a16 g~ g4 r4  R1 |
    r2 r4 d'8\f d c c16 c~ c8 d c a f g |
    \time 2/4 a16 a8. a8 g 
    \time 4/4 f2. c'8 bf \mark#22
    a4 a8 a16 bf~ bf8 a a g  |
    r8 c4 bf8 a4 c8 c 
    bf4 bf8 bf16 bf~ bf8 bf bf bf |
    r8 c8 c bf16 a~ a4 c8 bf |
   a4 a8 a16 bf~ bf8 a a bf |
   c4 c bf bf8 bf 
   a8 a a bf16 a~ a8 c b b |
       \time 2/4 c8 c4 bf8 |
    \time 4/4 a2. f8 g |
    \mark #31 a8 a a a a a g f |
    g f  f d f4 r4 |
    R1 r2 r4 f8 g |
    a8 a a a16 g~ g8 f r8 f8 |
    bf8\< bf16 bf~ bf8 c d4\! b8\f b |
    c8 c16 c~ c8 bf c c bf bf |
    \time 2/4 c8 c bf16 bf8 a16~ \time 4/4 a2.  c8\mf bf  |
    \mark #40
   a4 a8 a16 bf~ bf8 a a bf r8 c4 bf8 a4 c8 c |
   bf4 bf8 bf16 bf~ bf8 bf bf bf r8 c c bf16 a~ a4 c8 bf |
   a4 a8 a16 bf~ bf8 a a c c4\< a bf bf8 bf\! |
   a8 a a bf16 a~ a8 c b b 
   \time 2/4 c8 c4 bf8 
    \time 4/4a2. df,8 ef |
    \mark #49 \key gf \major
    gf4 gf8 gf16 ef~ ef8 df gf af r8 bf4 af8 gf4 bf8 af |
    gf4 gf8 gf16 af~ af8 gf gf af r bf bf af16 gf~ gf4 df8 ef |
    gf4 gf8 gf16 ef~ ef8 df gf af |
    \time 2/4 bf4 df 
    \time 4/4 c2.c8 c df df df cf16 df~ df8 df c c 
    df4\< bf c ef\! df1\ff R1
   
}

bass = \relative c {
  \global
  % Music follows here.
   r8 r4 R1*2
    r2 r4 c'8\mf bf a4 a8 a16 bf~ bf8 a a bf |
    r8 c4 bf8 a4 f8 f bf4 bf8 bf16 bf~ bf8 bf bf bf |
    r8 c8 c bf16 a! a4 c8 bf a4 a8 a16 bf~ bf8 a a g |
    f4\< a bf bf8 bf \! a\f a a bf16 a~ a8 f g g |
    \time 2/4 c,8 c4 c8 \time 4/4
    f2. r4 \mark #13 R1 r2 r4 r8 c8\mf
    f8 f f g a c a16 (g) f8 g g g a16 g~ g4 r4  R1 |
    r2 r4 d'8\f d c c16 c~ c8 d c a f g |
    \time 2/4 a16 a8. a8 g 
    \time 4/4 f2. c8 d \mark#22
    f8 (d) c d16 f~ f8 f f c f,2 r8 f8 g a |
    bf4 bf8 bf16 bf~ bf8 bf bf bf |
    f4 f8 f16 f~ f4 c'8 d f (d) c d16 f~ f8 f c d |
    f4 a, bf bf8 bf c c c d16 f~ f8 f d d |
    \time 2/4 c8 c4 c8 |
    \time 4/4 f2. f8 g |
    \mark #31 a8 a a a a a g f |
    g f  f d f4 r4 |
    R1 r2 r4 f8 g |
    a8 a a a16 g~ g8 f r8 f8 |
    bf8 bf16 bf~ bf8 a gs4 gs8 gs |
    a8 a16 a~ a8 bf a f df df |
    \time 2/4 c8 c c16 c8 f16~ \time 4/4 f2.  r4 |
    \mark #40
    f8 r c r f r c r r f4 f8 f4 r4 |
    bf,8 r f r bf r f r r f' f f16 f~ f4 r4 |
    f8 r c r f r c r f4 f bf, bf8 bf |
    f'8 f f f16 f~ f8 f d d \time 2/4 c8 c4 c8 
    \time 4/4 f2. df8 ef |
    \mark #49 \key gf \major
    gf4 gf8 gf16 ef~ ef8 df gf af r8 bf4 af8 gf4 bf8 af |
    gf4 gf8 gf16 af~ af8 gf gf af r bf bf af16 gf~ gf4 df8 ef |
    gf4 gf8 gf16 ef~ ef8 df gf af |
    \time 2/4 gf4 bf 
    \time 4/4 a2.a8 a bf bf bf cf16 bf~ bf8 gf ef ef |
    df4 gf c, c gf'1 R1
   
}

sopranoVerse = \lyricmode {
  % Lyrics follow here.
  
}

altoVerse = \lyricmode {
  % Lyrics follow here.
  
}

tenorVerse = \lyricmode {
  % Lyrics follow here.
  
}

bassVerse = \lyricmode {
  % Lyrics follow here.
  
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \soprano }
     \new Staff = "alto" \new Voice = "alto" { s1*0\f \alto }
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 112 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

right = \relative c'' {
  \global
  % Music follows here.
  
}

left = \relative c' {
  \global
  % Music follows here.
  
}

choirPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    midiInstrument = "violin"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    alignAboveContext = "sa"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "soprano" \sopranoVerse
  \new Lyrics \lyricsto "alto" \altoVerse
  \new Staff = "tb" \with {
    midiInstrument = "cello"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
  \new Lyrics \with {
    alignAboveContext = "tb"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "tenor" \tenorVerse
  \new Lyrics \lyricsto "bass" \bassVerse
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
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
    \choirPart
    \pianoPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 112 4)
    }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerse
    \midi { }
  }
}

