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
  R1 d4 e8 fs e4 e8 gs \time 2/4 fs4 gs8 a |
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

}

tenor = \relative c' {
  \global
  % Music follows here.

}

bass = \relative c {
  \global
  % Music follows here.

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
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
    midiInstrument = "baritone sax"
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
    \tempo 4=100
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
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}

