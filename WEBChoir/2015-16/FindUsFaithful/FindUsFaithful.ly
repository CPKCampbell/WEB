\version "2.19.23"
\language "english"

\header {
  title = "Find Us Faithful"
  instrument = "Male Chorus - TTBB"
  composer = "Jon Mohr"
  poet = "jon Mohr"
  arranger = "arr. CPKCMusic"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key ef \major
  \numericTimeSignature
  \time 2/2
  \tempo 4=100
  \partial 2
}

tenorOne = \relative c' {
  \global
ef4 ef f f ef ef8 d~ d4 d d d ef2 ef ~ ef2 ef4 ef |
f f ef ef8 d~ d4 d d d ef1 ( d2.)  c8 c |
c4 c c ef d1 d4 c ef d c2. c8 c |
ef4 ef ef ef ef ef ef ef ef1 (d2) d4 d |
ef4 ef d d8 ef~ ef4 ef d c c2 bf |

}

tenorTwo = \relative c' {
  \global
  bf4 bf bf bf af af8 f~ f4 bf bf bf c4. (bf8) bf2 ~ |
  bf2 bf4 bf bf bf af af8 f~ f4 f g g g1~ |
  g2. g8 g c,4 c af' c bf1 g4 f bf af g2. g8 g |
  bf4 bf bf bf a a a a af1~ |
  af2 g4 g af c bf bf8 af~ af4 c bf af af2 g \fermata
}

bassOne = \relative c {
  \global
  g'4 af bf bf bf bf8 bf~ bf4 f f g af4. ( g8 ) g2~ |
  g2 g4 af bf bf bf c8 bf~ bf4 af g f8 g g1~ g2. ef8 ef |
  c'4 bf af g f1 bf4 af g f ef2. ef8 ef |
  c'4 g f ef c' g f ef  bf'1 ~ bf2 g4 bf |
  %16
  c af g f8 c'~ c4 af g f f4. ( ef8 ) ef2 \fermata |

}

bassTwo = \relative c {
  \global
  ef4 ef d d c c8 bf~ bf4 bf bf bf ef2 ef~ ef2 ef4 ef  |
  d d c c8 bf~ bf4 bf b b c1 ( bf2. ) bf8 bf  |
  af4 af af af af1 g4 af bf b |
  c2. c8 c f4 f f f f f f f bf,1~ |
  bf2 bf4 bf f f g g8 af~ af4 af bf bf ef2  ef \fermata
  \bar "|"
}

verse = \lyricmode {
  % Lyrics follow here.

}

pianoR = \relative c' {
  \global
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