\version "2.19.16"
\language "english"

\header {
  title = "With Every Breath"
  composer = "Ken Medema"
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/4
  \tempo "Worshipfully"
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Beam.auto-knee-gap = #3
}

rm = { \mark \default }
csu = { \change Staff = "up" }
csd = { \change Staff = "down" }

soprano = \relative c'' {
  \global
  R2.*5
  g4 a b \rm e,2.g fs2 fs4 fs g a e2. d~ d4 r4 r4
  g4  a b \rm e,2.g fs2 fs4 fs g a d,2.~ d4 r4 r4
  R2. g4 a b  \rm c2.b a fs4 g a b2 c4 b2 a4
  %29
  g2. g4 a b \rm e,2 r4 a b  c
  fs,2 r4 fs g a g2.~ g R2.*2  \rm R2.
  %40
  c4 d e a,2. r2. r4 r c b c d a2.
  g2. \rm  R2. c4 d e a,2. d d2 d4 c b a b2 r4
  %54
  g4 a b \rm c2.  b a fs4 g a
  b2 c4 b2 a4 g2. g4 a b e,2.
  a4 b c fs,2. c'4 b a g2.~ g~ g4 r r
  %70
  g4 a bf \rm c2.  c4 bf a bf2. bf4 c d
  ef2. ef4 d c d2. d4 c bf \rm c2.
  c4 bf a bf2. af4 bf c g2.~ g~ g
  bf4 a g d'2.~ d~ d2 r4
  %90
  b4 c d \rm e2. e d d4 d d
  e2. d c b  \rm c
  e2. a,2 d4 d d d d2. c4 ( d ) e
  d2 r4 R2.  \rm r4 e,4 fs g a b d2.
  R2. r4 g,4 a b ( c ) d e2.
  %114
  g,4 a b \rm e,2. a4 b c fs,2. fs4 g a
  g2 r4 d'4 c b g2.~ g~ g2 r4
  b4 a g g2 r4 g4 g g g2.~ g~ g\fermata
  \bar "||"

}

alto = \relative c' {
  \global
  R2.*8
  r4 r d d d d c2. d~ d b r2. r2.
  r4 r d d d d d2. ( c2 ) c4
  b2. d4 d g e2. c
  d2. d4 d d d2 d4 d2 d4
  e2. e4 fs g c,2 r4 c4 d e
  d2 r4 d4 d d g2.~ g R2.
  %38
  g4 a b e,2.  g fs2 fs4
  fs4 g a e2. d~ d4 r4 r
  g4 a b e,2. g fs2 fs4
  fs4 g a d,2.~ d~ d4 r r
  d4 d d e2. c d d4 d d
  d2 d4 d2 d4 e2. g4 a b e,2. \rm
  a4 b c fs,2. c'4 b a g2.~ g~ g4 r r
  %70
  g4 g g g2. fs4 fs fs g2. bf4 a bf
  g2. f4 g a f2. g4 g g g2.
  fs4 g a g2. ef4 ef ef d2. cs
  d2. e4 e e fs2. fs d2 r4
  g4 a b e,2. g fs fs4 g a
  g2. g~ g g4 a b e,2.
  g2. fs2 fs4 fs g a d,2.~ d~
  d2 r4 g4 a b c2. b a
  fs4 g a b2 c4 b2 a4 g2.
  e4 fs g c,2. e4e e d2. d4 e fs
  g2 r4 d'4 c b g2.~ g~ g2 r4
  b4 a g g2 r4 e d c b2.~ b~ b\fermata
  \bar "||"
}

tenor = \relative c' {
  \global
  R2.*8
  r4 r a a a a g2 ( a4 ) b2.
  a2. g R2. R2.
  r4 r a a a a b2. ( a2 ) a4
  g2. b4 a g c2. e
  %25
  a,2.  c4 b a d2 d4 d2 a4
  b2. R2. c4 b a a2.
  %33
  fs4 g a c b a b2. c4 b a b2.
  %38
  r2. r c4 d e a,2.
  r2. r4 r c b c d a2.
  %46
  g2. r2. c4 d e a,2.
  d2. d2 d4 c b a b2 r4
  %54
  b4 a g c2. e a, c4 b a
  d2 d4 d2 a4 b2. g4 a b e,2.
  a4 b c fs,2. c'4 b a g2.~ g~ g4 r4 r
  %70
  bf4 c d ef2. ef4 d c bf2. d4 c bf
  bf2. a4 bf c bf2. bf4 c d c2.
  %80
  a4 d c bf2. c4 bf af bf2.~ bf~
  bf2. g4 a bf4 a2. a g2 r4
  %90
  g4 g g g2. c a a4 a a
  c2. b a g c
  %100
  e2. a,2 a4 a d c b2. a4 ( b ) c
  b2 r4 r2. r4 e, fs g a b d2.
  %110
  r2. r4 g,a b ( c ) d e2.
  b4 a g c2. c4 d c a2. c4 b a
  %119
  g2 r4 d'4 c b g2.~ g~ g2 r4
  b4 a g g2 r4 g g g g2.~ g~ g\fermata
  \bar "||"
}

bass = \relative c {
  \global
  R2.*8
  r4 r d d e fs g2. g
  a2. g R2. R2.
  %17
  r4 r d d e fs g2.~ g4 r r
  r2. g4 fs e a2. g
  %25
  fs2. d4 e fs g2 g4 fs2 fs4
  e2. r2. a,4 e' a a2.
  d,4 e fs d e fs g2. a4 g fs g2.
  %38
  g4 a b e,2. g fs2 fs4
  fs4 g a e2. d~ d4 r4 r
  %46
  g4 a b e,2. g fs2 fs4
  fs4 g a d,2.~ d~ d4 r r
  %54
  g4 fs a a2. g fs d4 e fs
  g2 g4 fs2 fs4 e2. g4 a b e,2.
  %64
  a4 b c fs,2. fs4 g a g2.~ g~ g4 r r
  %70
  g4 g g c,2. d4 d d g2. g4 a g
  c,2. f4 f f bf2. ef,4 ef ef a2.
  %80
  d,4 e fs g2. c,4 c c d2. e
  d2. cs4 cs cs d2. c b2 r4
  %90
  f'4 e d c2. a d d4 e fs
  g2. g~ g g4 a b e,2.
  %100
  g2. fs2 d4 d e fs g2.~ g~
  g2 r4 g4 a b c2. b a
  %110
  fs4 g a b2 c4 b2 a4 g2.
  e4 e e a,2. a'4 e a, d2. d4 d d
  %119
  g2 r4 d'4 c b g2.~ g~ g2 r4
  b4 a g g2 r4 c,4 b a g2.~ g~ g\fermata
  \bar "||"
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

rightOne =  \relative c'' {
      \global
    s2. <a c,>2.  s2. <a c,>2. s2.  <b d>4 <a c> <g b> 
    < e c>4. s4. s2. s2. d'2. s2. s2.
    %13
    s2. <b d,>4 < a c> < g b> <e c>4. s4. s2.
    s2. d'2. b2 r8 b ( a2) r8 a ( g4. ) s4. 
    %22
    b8 d,a' d, g e c' c, e a c e r8 c, e b' c d
    \csd r8 b, d \csu a' d a' fs a, e' g, d' a b4. s4. s2.
    
    }
 
leftTwo = \relative c {
  \global
  g8 d' g \csu b d g \csd r2. g,,8 d' g \csu b d g \csd r2.
  

}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "voice oohs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verse
  \new Staff \with {
    midiInstrument = "voice oohs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
} <<
  \new Staff = "up" \with {
    midiInstrument = "acoustic grand"
  } \relative c'' {
      \global
    s2. <a c,>2.  s2. <a c,>2. s2.  <b d>4 <a c> <g b> 
    < e c>4. s4. s2. s2. d'2. s2. s2.
    %13
    s2. <b d,>4 < a c> < g b> <e c>4. s4. s2.
    s2. d'2. b2 r8 b ( a2) r8 a ( g4. ) s4. 
    %22
    b8 d,a' d, g e c' c, e a c e r8 c, e b' c d
    \csd r8 b, d \csu a' d a' fs a, e' g, d' a b4. s4. s2.
    
  }
  
  \new Staff = "down" \with {
    midiInstrument = "acoustic grand"
  }  \relative c {
    \clef bass
  \global
  g8 d' g \csu b d g \csd r2. g,,8 d' g \csu b d g \csd r2.
    g,,8 d' g \csu b d g \csd r2. c,,8 e g \csu c e g 
    \csd g,, e' g \csu c e c' \csd d,, fs a \csu d fs a \csd r2.
    
    
  }
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
  % soprano
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verse
    \midi { }
  }
}

\book {
  % alto
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verse
    \midi { }
  }
}

\book {
  %tenor
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
}

\book {
  % bass
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}

