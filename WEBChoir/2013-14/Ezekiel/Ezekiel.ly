\version "2.17.16"

\header {
  title = "Ezekiel Saw De Wheel"
}
\language  "english"
global = {
  \time 2/4
  \key g \major
  \tempo 4=100
   \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
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
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = "bright acoustic"
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})


bb = {\bar "" \break }

soprano = \relative c' {
  \global
  \repeat volta 3 {
    % refrain
    \partial 8 d8 g16 g8. g g16 b2
    b4 b8 g16 g b b a a g8 \bb d |
    g16 g8.  g g16 b2
    b8 b16 b a a a a g4. \bb d8 |
    g8 g g g b4. g8 b16 b b8 b g16 a b8 a g \bb
    d8 g4. g16 g b2 b8 b16 b a a a a 
  }
  \alternative {
    %vs 1
    { g4. \bb d'16 d e8 d d16 d b b b [b8 a16] g4
      g8 g16 g a a a a b4. r8 
      R2*2 b8 b16 b a a a a g4.
    }
    { g2 }
  }
}

alto = \relative c' {
  \global
  \repeat volta 3 {
    % refrain
    \partial 8 d8  d16 d8. d d16 g2
    g4 g8 d16 d g g fs fs d8 \bb
    d8 d16 d8. d d16 e2
    g8 g16 g fs fs fs fs d4. \bb
    d8 d d d d g4. d8 g16 g g8 g e16 fs g8 fs d \bb
    d8 e4. e16 e e2 g8 g16 g fs fs fs fs }
  \alternative {
    { d4. \bb
      r8 R2*2 e8 e16 e fs fs fs fs g4. r8 R2*2
      g8 g16 g e e fs fs d4.
    }
    { d2 }
  }
}

tenor = \relative c {
  \global
  \repeat volta 3 {
    % refrain
    \partial 8 d8 b'16 b8. b b16 d2
    d4 d8 b16 b d d c c b8 \bb
    d, b'16 b8. b b16 g2
    d'8 d16 d c c c c b4. \bb
    b8 b b b b d4. b8 d16 d d8 d b16 c d8 c b \bb
    a8 b4. b16 b g2 d'8 d16 d c c c c }
  \alternative {
    { b4. \bb
      r8 R2*2 b8 b16 b d d d d d4. r8
      R2*2 d8 d16 d c c c c b4.
    }
    { b2
    }
  }
}

bass = \relative c {
  \global
  \repeat volta 3 {
    % refrain
    \partial 8 d8 g16 g8. g g16  g2
    g4 g8 g16 g d d d d g8 \bb
    d8 g16 g8. g fs16  e2
    d8 d16 d d d d d g4. \bb
    g8 g,g g g g4. g8 g16 g g8 g e'16 ef d8 d g \bb
    fs8 e4. e16 e e2 d8 d16 d d d d d }
  \alternative {
    {g4. \bb
     r8 R2*2 e8 e16 e d d d d g4. d8
     e8 d d b16 d b8 a g4
     d'8 d16 d d d d d g4.
    }
    { g2
    }
  }
  
}

verseSop = \lyricmode {
  E -- ze -- k'el saw de wheel
  'Way up in de mid -- dle o' de air,
  E -- ze -- k'el saw de wheel
  'Way in de mid -- dle o' de air
  De big wheel run by faith,
  De lit -- tle wheel run by de grace o' God,
  A wheel in a wheel __ 
  'Way in de mid -- dle o' de air.
  %
  \set stanza = "1."
  Bet -- ter mind, my sis -- ter,
  how you walk on de cross,
  'Way in de mid -- dle o' de air.
  'Way in de mid -- dle o' de air.
  % 2nd time around
  \skip 8 \repeat unfold 45 {\skip 2 }
  \set stanza = "2."
  Let me tell you, bro -- ther,
  what a sin -- ner will do,
  'Way in de mid -- dle o' de air.
  'Way in de mid -- dle o' de air.
}
verseBass = \lyricmode {
  \skip 8 \repeat unfold 65 {\skip 2 }
  
  Your foot might slip an' your soul be lost,
  \skip 8 \repeat unfold 65 {\skip 2 }
  He'll step on me an' He'll step on you.
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSop
    
    \new Staff \with {
      midiInstrument = "choir aahs"
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
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { S A }
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \verseSop
      
      \new Staff \with {
        midiInstrument = "choir aahs"
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

