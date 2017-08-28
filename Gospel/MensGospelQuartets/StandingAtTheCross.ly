\version "2.19.65"
\language "english"

\header {
  title = "Men‘s Gospel Quartets"
  composer = "E.S. Lorenz"
  poet = "E.S.L."
  piece = "Standing at the Cross"
  copyright = "believed to be in the public domain"
  tagline = "Engraved by CPKC.Music"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/4
  \tempo 4=100
  \partial 4
  \autoBeamOff
}

scoreATenor = \relative c' {
  \global
b8. c16 d4. g,8 a b c2 r4
b8. d16 d4 b a2
b8. c16 d4. g,8 a b c2 r4
cs8. e16 e4 c d2 r4
c8. b16 a8 gs a b d4 ( c ) r4
e8. d16 cs8 d b d fs4 ( e ) r4
b8. d16 d4 c b2 \bar "||"

}

scoreALead = \relative c' {
  \global
g8. a16 b4. g8 fs g fs2 r4
g8. b16 b4 g fs2
g8. a16 b4. g8 fs g g2 r4
a8. c16 c4 a a2 r4
a8. g16 fs8 es fs g b4 ( a ) r4
b8. a16 g8 fs f a c4 ( b ) r4
c8. b16 as8 b g b d4 ( c ) r4
g8. b16 b4 a g2


}

scoreABaritone = \relative c {
  \global
d8. 16 g4. d8 d d d2 r4
d8. g16 g4 d d2
d8. d16 d4. d8 d d e2 r4
e8. a16 a4 e fs2 r4
fs8. d16 d8 d d g fs2 r4
g8. d16 d8 d d g g2 r4
g8. g16 g8 g g g g2 r4
d8. g16 fs4 fs d2

}

scoreABass = \relative c {
  \global
 g8. 16 4. b8 a g a2 r4
 g8. 16 4 b d2
 g,8. 16 g4. b8 a g c2 r4
 a8. 16 4 4 d2 d8. d16
 d2 d4 d8. 16 4 8. 16 g,2 4
 g8. 16 4 g'8. 16 g2 4 c,8. 16 4 g'8 e d2 d4 g,2

}

scoreAVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.

}

scoreAVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

}

scoreAVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.

}

scoreARehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor" \new Voice = "tenor" { \scoreATenor }
     \new Staff = "lead" \new Voice = "lead" { \scoreALead }
     \new Staff = "baritone" \new Voice = "baritone" { \scoreABaritone }
     \new Staff = "bass" \new Voice = "bass" { \scoreABass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
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

\book {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \scoreATenor }
        \new Voice = "lead" { \voiceTwo \scoreALead }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor" \scoreAVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor" \scoreAVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor" \scoreAVerseThree
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \clef bass
        \new Voice = "baritone" { \voiceOne \scoreABaritone }
        \new Voice = "bass" { \voiceTwo \scoreABass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreARehearsalMidi "tenor" "tenor sax" \scoreAVerseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "lead"
  \score {
    \scoreARehearsalMidi "lead" "tenor sax" \scoreAVerseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \scoreARehearsalMidi "baritone" "tenor sax" \scoreAVerseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreARehearsalMidi "bass" "tenor sax" \scoreAVerseOne
    \midi { }
  }
}


scoreBTenor = \relative c' {
  \global
  % Music follows here.

}

scoreBLead = \relative c' {
  \global
  % Music follows here.

}

scoreBBaritone = \relative c {
  \global
  % Music follows here.

}

scoreBBassTwo = \relative c {
  \global
  % Music follows here.

}

scoreBVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.

}

scoreBVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

}

scoreBVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.

}

scoreBRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor" \new Voice = "tenor" { \scoreBTenor }
     \new Staff = "lead" \new Voice = "lead" { \scoreBLead }
     \new Staff = "baritone" \new Voice = "baritone" { \scoreBBaritone }
     \new Staff = "bass" \new Voice = "bass" { \scoreBBassTwo }
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

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \scoreBTenor }
        \new Voice = "lead" { \voiceTwo \scoreBLead }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor" \scoreBVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor" \scoreBVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor" \scoreBVerseThree
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \clef bass
        \new Voice = "baritone" { \voiceOne \scoreBBaritone }
        \new Voice = "bass" { \voiceTwo \scoreBBassTwo }
      >>
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreBRehearsalMidi "tenor" "tenor sax" \scoreBVerseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "lead"
  \score {
    \scoreBRehearsalMidi "lead" "tenor sax" \scoreBVerseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \scoreBRehearsalMidi "baritone" "tenor sax" \scoreBVerseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreBRehearsalMidi "bass" "tenor sax" \scoreBVerseOne
    \midi { }
  }
}

