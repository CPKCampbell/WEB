\version "2.17.3"
\language "english"

\header {
  title = "Is Your Heart Prepared For A King"
  instrument = "SATB Accompanied"
  composer = "Words and Music by Robert Lau (ASCAP)"
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
  \tempo "Flowing" 4=96
  \set Score.markFormatter = #format-mark-box-numbers
}

soprano = \relative c'' {
%{  \global
 R2.*3 r4 r4 d,8 e f4. f8 e f e2 d8 e f4. f8 e f e2 d8 d |
 a'2 g4 f2 e8 c d2.~ d2. |
  %}
}

alto = \relative c' {
  \global
  % Music follows here.
  
}

tenor = \relative c' {
  \global
%R2.*13 
r4 r4 d,8 e f4. f8 e f e2 d8 e |
f4. f8 e f e2 d8 d a'2 g4 f2 e8 c d2.~ d2. |
R2.*2 \mark #25
d'2^\mf r4 bf4^\mp r r c2^\mf c8 c |
a4 a a g (a) bf8 bf bf2 c4 c2.~ c2 r4
\mark #33
d2\mf r4 bf4\mp r r  c2^\mf c8 c |
a4 a a g2 g8 a bf4 bf d d2. (cs2) r4 |
\mark #41
r4 a4\p (c b2) r4 r a4 (c b2) r4 |
a2.~ (a2 g4 a2.~ a2.) |
R2. r4 r d,8 e f4. f8 e f e2 d8 e |
f4. f8 e f e2 d8 d a'2 g4 f2 r4 |
R2. r4 r\fermata d8 d a'2 g4 f e c d2.~ d~ d~ d2 r4 R2. R2.
  
}

bass = \relative c {
  \global
  % Music follows here.
%  R2.*13 
  r4 r4 d8 e f4. f8 e f e2 d8 e |
f4. f8 e f e2 d8 d a'2 g4 f2 e8 c d2.~ d2. |
R2.*2
bf'2^\mf r4 g4^\mp r r a2^\mf a8 a |
d,4 e f g2 g8 g c,2 bf'4 a2.~ a2 r4
\mark #33
bf2^\mf r4 g4^\mp r r a2^\mf a8 a |
d,4 e f g2 g8 a bf4 bf bf a2. (a2) r4 |
\mark #41
r4 a4\p (c b2) r4 r a4 (c b2) r4 |
a2.~ (a2 g4 a2.~ a2.) |
R2. r4 r d,8 e f4. f8 e f e2 d8 e |
f4. f8 e f e2 d8 d a'2 g4 f2 r4 |
R2. r4 r\fermata d8 d a'2 g4 f e c d2.~ d~ d~ d2 r4 R2. R2.
  
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

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \soprano \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 96 4)
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

choirPart = <<
  \new ChoirStaff <<
    \new Staff = "sa" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Soprano" "Alto" }
      shortInstrumentName = \markup \center-column { "S." "A." }
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
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
      shortInstrumentName = \markup \center-column { "T." "B." }
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
%  \pianoReduction
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
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
  \midi { }
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

