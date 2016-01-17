\version "2.19.4"

\language  "english"

\header {
  title = "Jubilate Deo - Canon"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=100
 }

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     %      \new Staff = "solo" \new Voice = "solo" { s1*0\f \soloVoice }
     \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \soprano }
     \new Staff = "alto" \new Voice = "alto" { s1*0\f \alto }
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiInstrument = "choir aahs"
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Score.midiPanPosition = #1
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = "bright acoustic"
       \set Staff.midiPanPosition = #-1
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})


bb = {\bar "" \break }

soprano = \relative c'' {
  \global
  c2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r 
   c'2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r 
   }
  

alto = \relative c' {
  \global
  R1  c'2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r 
   c'2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r 
    }

tenor = \relative c' {
  \global
  R1*2  c2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r 
   c'2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r 
}

bass = \relative c {
  \global
 R1*3  c2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r 
  c'2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r 
}

verseSop = \lyricmode {
  
}
verseBass = \lyricmode {
   
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSop
    
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #DOWN
    } \lyricsto "bass" \verseBass
    
  >>
  \layout { }
  %  \midi { }
}
\score {
  \unfoldRepeats {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = \markup \center-column { S A }
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \verseSop
      
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = \markup \center-column { T B }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #DOWN
      } \lyricsto "bass" \verseBass
      
    >>
  }
  \midi {}
}


% Rehearsal MIDI files:
%{
  \book {
  \bookOutputSuffix "solo"
  \score {
  \rehearsalMidi "solo" "flute" \verseSolo
  \midi { }
  }
  }
%}
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "violin" \verseSop
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "viola"  \verseSop
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "cello"  \verseBass
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "contrabass"  \verseBass
    \midi { }
  }
}



%{
  convert-ly (GNU LilyPond) 2.19.0  convert-ly: Processing `'...
  Applying conversion: 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
  2.17.29
%}
