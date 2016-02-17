\version "2.19.23"
\language "english"

\header {
  title = "Find Us Faithful"
  instrument = "Male Chorus - TTBB"
  composer = "Jon Mohr"
  poet = "Jon Mohr"
  arranger = "arr. CPKCMusic"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \tempo 4=92
  \partial 4
}

tenorOne = \relative c {
  \global
  % intro on piano 9 bars
  s1*7 \time 2/4 s2 \time 4/4 s1
  r2 r4 r8 b e b16 e~ e8 fs16 a~ a gs8. r8 fs16 e ds8 e16 cs~ cs2 |

  %

  f8 bf c c c c16 c~ c8 g g a bf8. ( a16 ) a4~  a4 a8 bf
  c8 c c d16 c~ c8 bf a g16 a a2~ a4. f16 f |
  d'8 c bf a g2 c8 bf a g f4. f16 f |
  d'8 a g f d' a g f  c'2 ~ c4 a8 c |
  %16
  d bf a g16 d'~ d8 bf a g g8. ( f16 ) f2. \fermata |
}

tenorTwo = \relative c' {
  \global

  c8 c c c bf bf16 g~ g8 c c c d8. (c16) c4 ~  c4 c8 c
  c8 c bf bf16 g~ g8 g a a a2~  a4. a16 a |
  f8 f bf d c2 a8 g c bf a4. a16 a |
  c8 c c c b b b b bf2~ bf4 a8 a
  bf8 d c c16 bf~ bf8 d c bf bf4 a2.\fermata
}

bassOne = \relative c {
  \global
  f8 f g g f f16 e~ e8 e e e f4 f ~ f4 f8 f |
  g g f f16 e~ e8 e e e f2 ( e4.)  d16 d |
  d8 d d f e2 e8 d f e d4. d16 d |
  f8 f f f f f f f f2 (e4) e8 e |
  f8 f e e16 f~ f8 f e d d4 c2. \fermata |

}

bassTwo = \relative c {
  \global
  f8 f e e d d16 c~ c8 c c c f4 f~ f4 f8 f  |
  e e d d16 c~ c8 c cs cs d2 ( c4. ) c16 c  |
  bf8 bf bf bf bf2 a8 bf c cs  d4. d16 d  |
  g8 g g g g g g g c,2~ c4 c8 c |
  g8 g a a16 bf~ bf8 bf c c f2  f \fermata
  \bar "|"
}

verse = \lyricmode {
  % Lyrics follow here.

}

pianoR = \relative c' {
  \global
  %{
  \chordmode {
    f1:5 f g4:m7 f:9/a bf:maj9 bf:/c }
  %}
}

pianoL = \relative c {
  \global
}

accomp = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    \clef "treble"
    #(set-accidental-style 'piano)
    \pianoR
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    \pianoL
  }
>>

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenorOne }
     \new Staff = "tenor2" \new Voice = "tenor2" { \tenorTwo }
     \new Staff = "bass1" \new Voice = "bass1" { \bassOne }
     \new Staff = "bass2" \new Voice = "bass2" { \bassTwo }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.4
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 92 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "alto sax"
        instrumentName = "Tenor I"
        shortInstrumentName = "T. I"
        \consists "Ambitus_engraver"
      } {
        \clef "bass"
        \new Voice = "tenor1" \tenorOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor1" \verse
      \new Staff \with {
        midiInstrument = "tenor sax"
        instrumentName = "Tenor II"
        shortInstrumentName = "T. II"
        \consists "Ambitus_engraver"
      } {
        \clef "bass"
        \new Voice = "tenor2" \tenorTwo
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor2" \verse
      \new Staff \with {
        midiInstrument = "baritone sax"
        instrumentName = "Bass I"
        shortInstrumentName = "B. I"
        \consists "Ambitus_engraver"
      } {
        \clef bass
        \new Voice = "bass1" \bassOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bass1" \verse
      \new Staff \with {
        midiInstrument = "bassoon"
        instrumentName = "Bass II"
        shortInstrumentName = "B. II"
        \consists "Ambitus_engraver"
      } {
        \clef bass
        \new Voice = "bass2" \bassTwo
      }
    >>
    \accomp
  >>
  \layout { }
  \midi { }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor1"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor2"
  \score {
    \rehearsalMidi "tenor2" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass1"
  \score {
    \rehearsalMidi "bass1" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass2"
  \score {
    \rehearsalMidi "bass2" "tenor sax" \verse
    \midi { }
  }
}