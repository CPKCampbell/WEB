\version "2.19.23"
\language "english"

\header {
  title = "Find Us Faithful"
  instrument = "Male Chorus - TTBB"
  composer = "Jon Mohr"
  arranger = "CPKCMusic"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key ef \major
  \time 2/2
  \tempo 4=100
  \partial
}

tenorOne = \relative c' {
  \global
  % Music follows here.

}

tenorTwo = \relative c' {
  \global
  % Music follows here.

}

bassOne = \relative c {
  \global
g'4 af bf bf bf bf8 bf~ bf4 f f g af4. ( g8 ) g2~ |
g2 g4 af bf bf bf c8 bf~ bf4 af g f8 g g1~ g2. ef8 ef |
c'4 bf af g f1 bf4 af g f ef2. ef8 ef |
c'4 g f ef c' g f ef c' g f ef bf'1 ~ bf2 g4 bf |
c af g f8 c'~ c4 af g f f4. ( ef8 ) e2 \fermata |

}

bassTwo = \relative c {
  \global
  % Music follows here.

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
       \set Score.midiMinimumVolume = #0.5
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
        midiInstrument = "choir aahs"
        instrumentName = "Tenor I"
        shortInstrumentName = "T. I"
        \consists "Ambitus_engraver"
      } {
        \clef "treble_8"
        \new Voice = "tenor1" \tenorOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor1" \verse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Tenor II"
        shortInstrumentName = "T. II"
        \consists "Ambitus_engraver"
      } {
        \clef "treble_8"
        \new Voice = "tenor2" \tenorTwo
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor2" \verse
      \new Staff \with {
        midiInstrument = "choir aahs"
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
        midiInstrument = "choir aahs"
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
