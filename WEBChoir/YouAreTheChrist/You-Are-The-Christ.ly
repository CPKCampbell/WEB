\version "2.19.35"
\language "english"

\header {
  title = "You Are The Christ!"
  instrument = "SATB"
  composer = "Lloyd Larson"
  poet = "Jan McGuire"
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 72
  \phrasingSlurDashed
}

soprano = \relative c' {
  \global
  R1*4 r4 cs8 e fs4 e8 d e8. e16 e8 b cs4 r8 cs |
  %7
  cs4 cs8 e fs8. fs16 gs8 a b4 fs e r a fs8 a gs4 e |
  %10
  fs8. fs16 e8 d e4 r d e8 fs e4 a8 gs \time 2/4 fs4 gs8 a |
  %13
  \time 4/4 b2. r4 cs cs8 e, fs4. r8 b4 b8 d, e4. r8 |
  %16
  a4 a8 cs, d4 d8 e fs4 gs8 a b4. r8 cs4 cs8 e, fs4. r8 |
  %19
  b4 b8 gs cs2\( d4\) cs8 b a4 e r fs a gs |
  %22
  a1 r2 r4 r8 e cs8. cs16 e4 fs r8 fs |
  %25
  e4 e8 b cs4 r8 cs cs4 cs8 e fs4 gs8 a |
  %27
  b8. b16 fs4 e r R1 |
  %29
  R1 d4 e8 fs e4 a8 gs \time 2/4 fs4 gs8 a |
  %32
  \time 4/4 b2. r4 cs cs8 e, fs4. r8 b4 b8 d, e4. r8 |
  %35
  a4 a8 cs, d4 d8 e fs4 gs8 a b4. r8 cs4 cs8 e, fs4. r8 |
  %38
  b4 b8 gs cs2\( d4\) cs8 b a4 e |
  %40
  r4 fs a gs a2. r8. e16 fs4 fs8 fs gs8. gs16 gs8 gs |
  %43
  a8. a16 a8 a b4 r8 b a4 a8 a b4 r8 b |
  %45
  c4 c8 c a4 c d1 R1 \key c \major |
  %48
  e4 e8 g, a4. r8 d4 d8 f, g4. r8 c4 c8 e, f4 f8 g |
  %51
  a4 b8 c d4. r8 e4 e8 g, a4. r8 d4 d8 b e2\( |
  %54
  f4\) e8 d c4 g r4 c e d c1 |
  %57
  r8 f e d c4 g r2 c2 e d <g c,>1~ q |
  \bar "|"
}

alto = \relative c' {
  \global
  R1*4 r4 cs8 e fs4 e8 d e8. e16 e8 b cs4 r8 cs |
  %7
  cs4 cs8 e fs8. fs16 gs8 a b4 fs e r a fs8 a gs4 e |
  %10
  fs8. fs16 e8 d e4 r d e8 fs e4 a8 gs \time 2/4 fs4 gs8 a |
  %13
  \time 4/4 b2. r4 e,4 e8 e e4 ( d8) r8 e4 e8 d d4 ( cs8) r8 |
  %16
  cs4 cs8 a b4 b8 cs d4 e8 d d4. r8 e4 e8 e e4 ( d8) r8 |
  %19
  e4 e8 e e2\( fs4\) e8 d e4 e r4 fs a gs |
  %22
  a1 r2 r4 r8 e cs8. cs16 e4 fs r8 fs |
  %25
  e4 e8 b cs4 r8 cs cs4 cs8 e fs4 gs8 a |
  %27
  b8. b16 fs4 e r R1 |
  %29
  R1 d4 e8 fs e4 e8 gs \time 2/4 fs4 gs8 a |
  %32
  \time 4/4 b2. r4 e,4 e8 e e4 (d8) r8 e4 e8 d d4 ( cs8 ) r8 |
  %35
  cs4 cs8 a b4 b8 cs d4 e8 d d4. r8 e4 e8 e e4 (d8) r8 |
  %38
  e4 e8 e e2\( fs4\) e8 d e4 e |
  %40
  r4 d4 fs e e2. r8. cs16 d4 d8 d e8. e16 e8 e |
  %43
  fs8. fs16 fs8 fs e4 r8 gs f4 f8 f g4 r8 g |
  %45
  a4 a8 a f4 f c'2 (b) R1 \key c \major
  %48
  g4 g8 g g4 (f8) r g4 g8 f f4 (e8) r e4 e8 c d4 d8 e |
  %51
  f4 g8 f f4. r8 g4 g8 g g4 (f8) r8 g4 g8 g g2\( |
  %54
  a4\) g8 f g4 g r a a b a1 |
  %57
  r8 a g f e4 e r2 f f f e1~ e |
  \bar "|"
}

tenor = \relative c {
  \global
  R1*8 fs4 a8 fs e4 gs |
  %10
  a8. a16 gs8 fs e4 r fs gs8 a b4 a8 b \time 2/4 a4 gs8 fs |
  %13
  \time 4/4 a2 ( gs4) r a a8 cs a4. r8 gs4 gs8 gs a4. r8 |
  %16
  fs4 fs8 e fs4 fs8 gs a4 b8 fs a4 (gs8) r a4 a8 cs a4. r8 |
  %19
  gs4 gs8 b b4 ( as)\( b4\) fs8 fs a4 a r a fs b  |
  %22 a due
  a1 r2 r4 r8 e8 e8. e16 a4 a r8 a |
  %25
  gs4 gs8 b a4 r8 a8 e4 e8 a a4 b8 a |
  %27
  b8. b16 a4 gs r8 gs a4 fs8 a gs4 e |
  %29
  fs8. fs16 e8 d e4 r fs4 gs8 a b4 a8 b \time 2/4 a4 gs8 fs |
  %32
  \time 4/4 a2 ( gs4 ) r a a8 cs a4. r8 gs4 gs8 gs a4. r8 |
  %35
  fs4 fs8 e fs4 fs8 gs a4 b8 fs a4 (gs8) r a4 a8 cs a4. r8 |
  %38
  gs4 gs8 b b4 ( as)\( b\) fs8 fs a4 a |
  %40
  r4 a d d cs2. r8. a16 a4 a8 a b8. b16 b8 b |
  %43
  cs8. cs16 cs8 cs b4 r8 d c4 c8 c d4 r8 d |
  %45
  e4 e8 e e4 c f1 R1 |
  %48
  \key c \major
  c4 c8 e c4. r8 b4 b8 b c4. r8 a4 a8 g a4 a8 b |
  %51
  c4 d8 a c4 (b8) r8 c4 c8 e c4. r8 b4 b8 d d4 ( cs )\( |
  %54
  d4\) a8 a c4 c r4 c c f e1 |
  %57
  r8 d c a c4 c r2 a c b <c g>1~ q \fermata
  \bar "|"
}

bass = \relative c {
  \global
  R1*8 fs4 a8 fs e4 gs |
  %10
  a8. a16 gs8 fs e4 r fs gs8 a b4 a8 b \time 2/4 a4 gs8 fs |
  %13
  \time 4/4 a2 ( gs4) r a4 a8 a d,4. r8 e4 e8 e a,4. r8 |
  %16
  fs'4 fs8 cs b4 b8 b e4 e8 e e4. r8 a4 a8 a d,4. r8 |
  %19
  e4 d8 d g4 (fs)\( b,\) b8 b cs4 cs r4 a' fs b |
  %22
  a1 r2 r4 r8 e8 e8. e16 a4 a r8 a |
  %25
  gs4 gs8 b a4 r8 a8 e4 e8 a a4 b8 a |
  %27
  b8. b16 a4 gs r8 gs a4 fs8 a gs4 e |
  %29
  fs8. fs16 e8 d e4 r fs4 gs8 a b4 a8 b \time 2/4 a4 gs8 fs |
  %32
  \time 4/4 a2 ( gs4 ) r4 a4 a8 a d,4. r8 e4 e8 e a,4. r8 |
  %35
  fs'4 fs8 cs b4 b8 b e4 e8 e e4. r8 a4 a8 a d,4. r8 |
  %38
  e4 d8 d g4 ( fs)\( b,\) b8 b cs4 cs |
  %r40
  r4 d e e a2. r8. a,16 d4 d8 d d8. d16 d8 d |
  %43
  d8. d16 d8 a' gs4 r8 e f4 f8 f f4 r8 f |
  %45
  f4 f8 f c'4 a g1 R1 |
  %48
  \key c \major c4 c8 c e,4. r8 g4 g8 g c,4. r8 a'4 a8 a, d4 d8 d |
  %51
  g4 g8 g g4. r8 c4 c8 c f,4. r8 g4 f8 f bf4 ( a)\( |
  %54
  d,4\) d8 d e4 e r f g g a1 |
  %57
  r8 d,8 e f g4 g r2 g g g c,1~ c \fermata |
  \bar "|"


}

verse = \lyricmode {
  % Lyrics follow here.

}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.3
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 84 4)
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
  \new Staff \with {
    midiInstrument = "violin"
    instrumentName = "Soprano"
  } \new Voice = "soprano" \soprano
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verse
  \new Staff \with {
    midiInstrument = "viola"
    instrumentName = "Alto"
  } \new Voice = "alto" \alto
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "alto" \verse
  \new Staff \with {
    midiInstrument = "cello"
    instrumentName = "Tenor"
  } {
    \clef "bass"
    \new Voice = "tenor" \tenor
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \verse
  \new Staff \with {
    midiInstrument = "contrabass"
    instrumentName = "Bass"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
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
    \tempo 4=84
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "baritone sax" \verse
    \midi { }
  }
}

