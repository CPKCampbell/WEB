\version "2.15.40"
\language "english"

\header {
  title = "Ain't -a That Good News"
  instrument = "Male Quartet"
  composer = "Traditional"
  arranger = "Bev Sellers"
  copyright =\markup { \char ##x00A9 Unknown }
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
 left-margin = 2.0\cm
}

global = {
  \key c \major
  \time 2/2
  \tempo 2=84
  \autoBeamOff
  
}
\include "articulate.ly"
tenor = \relative c' {
  \global
  % Music follows here.
  \partial 2 c8 c4 c8
  \repeat volta 2 {
    c4 c8 c~ c c b4 a a c8 c a4 c2 c |
    c2 r2 g1 ( b) b2 bf |
    b2 b8 b b b e4 e2 c4 bf4~ bf2 bf8 bf a4 a8 gs~ gs gs gs4 |
    a2. r4 c4 c c8 c b4 a a c8 c a4 | }
  \alternative {
   { c2 c  \bar "||" \key f \major 
    c r2 a1 bf a2 bf a r2 c1 c r4 r2 a4 bf r4 r2 |
    a1 c4 (a2.) bf1 bf2. r4 a1 bf a2 as \bar "||"  \key c \major b2 c8 c4 c8 | }
   { r4 r2 c4 |
     c2 c8 c4 c8 c2 ( b c ) c8 c4 c8 c1~ c2 c8 c4 c8 c2 ( b c ) c8 c c4 |
     % 41
     r4 b2 b4 b2 b8 b b b e4 e2 c4  bf4~ bf2  bf8 bf |
     %45
     a4 a8 gs~ gs gs gs4  a c ef \fermata r4 |
     %47
     c4 c c8 c b4 a a c8 c a4 |
     r4 c2 b4 c2 c8 c c4 r4 c2 c4 c2 d e1 | }
}
}
lead = \relative c {
  \global
  \partial 2   c8 c4 c8 
  \repeat volta 2 {
    e4 g8 e~ e e d4 c c a8 a c4 e2 f |
    e2 g8 g4 g8 b4 g8 b~ b b a4 g g e8 e g4 g2 e |
    f2 g8 g a g c4 c2 a4 g ( e2 ) c8 c e4  e8 e~ e  e d4 |
    %12
    c2~ c8 r8 c8 c e4 g e8 e d4 c c a8 a c4 | }
  \alternative{
    {g'2 a \bar "||"  \key f \major bf2 r2 f1 f f2 f f r2 |
     %21
     a1 a r4 r2 fs4 g r4 r2 f1 f f f2. r4 f1 f f2 fs \bar "||"  \key c \major g2 c,8 c4 c8 }
    %33
    { r4 r2 a'4 g2 c,8 c4 c8 e4 ( g2.~ ) g2 c,8 c4 c8 |
      f2 ( g a ) c,8 c4 c8 |
      %39
      e4 ( g2.~ ) g2 g8 g g4 r4 a2 af4 g2 g8 g a g |
      %43
      c4 c2 a4 g ( e2 ) c8 c e4 e8 e~ e e d4 c a' a \fermata c,8 c |
      %47
      e4 g e8 e d4 c c a8 a c4 r4 e2 f4 g2 g8 g g4 r4 f2 g4 a2 c c1 | }
  }
}

bari = \relative c {
  \global
  \partial 2 c8 c4 c8 
  \repeat volta 2 {
    g'4 e8 g~ g g f4 e e ef8 ef ef4 |
    g2 a g r2 b,2 (cs d cs ) e cs d f8 f f f |
    %9
    g4 g2 e4 e (c2) e8 e c4 c8 d~ d d b4 |
    %12
    e4 (ef2) r4 g4 e g8 g f4 e e ef8 ef ef4 |
  }
  \alternative {
   { e2 e \bar "||"  \key f \major e2 r2 |
    c1 d c2 d c r2 e1 e r4 r2 ef4 e4 r4 r2 |
    %25
    c1 ef d df2. r4 c1 d c2 e \bar "||" \key c \major f2 c8 c4 c8 | }
  %33
  {r4 r2 f4 e2 c8 c4 c8 g'4 ( e f2 e ) c8 c4 c8 |
   %37
   ef1~ ef2 c8 c4 c8 g'4 ( e f2 e ) e8 e e4 |
   %41
   r4 f2 f4 f2 f8 f f f g4 g2 e4 |
   %44
   e4 ( c2 ) e8 e c4 c8 d~ d d b4 e e c \fermata r4 |
   g'4 e g8 g f4 e e ef8 ef ef4 |
   r4 g2 g4 e2 e8 e e4 r4 ef2 ef4 ef2 af g1 }
}
}

 bass = \relative c {
  \global
 \partial 2 c8 c4 c8 |
 \repeat volta 2 {
   c4 c8 c8~ c c g4 a a f8 f f4 c'4 c2.~ c2 r2 |
   %5
   e,1~ e e2 g g d'8 d d d c4 c2 c4 c4 ( g2 ) g8 g a4  a8 b~ b b e,4 |
   a4 ( f2) r4 c'4 c c8 c g4 a a f8 f f4 | }
 \alternative {
   { c'2 a \bar "||" \key f \major g2 f8 f4 f8 |
     %17
     a4 c a8 a g4 f4 f d8 d f4 f f2.~ f2 c'8 c4 c8 |
     %21
     e4 c e8 e d4 c c a8 a c4 c c2.~ c4 r4 c8 d4 c8 |
     %25
     f,4 f2 g4 a ( c2) c8 c bf4 bf8 bf~ bf bf bf4 g2. f8 f a4 c a8 a g4 |
     f4 f d8 d f4 f ( c' ) cs2 \bar "||" \key c \major d2 c8 c4 c8 | }
   %33
   { c4 c2.~ c2 c8 c4 c8 c2 ( d c) c8 c4 c8 a2 ( g f ) c'8 c4 c8 |
     %39
     c2 ( d c ) c8 c c4 r4 d2 df4 d2 d8 d d d c4 c2 c4 c ( g2 ) g8 g |
     %45
     a4 a8 b~ b b e,4 a g f \fermata r4 |
     %47
     c'4 c c8 c g4 a a f8 f f4 r4 c'2 d4 c2 c8 c c4 r4 a2 g4 f2 f' c1 | }
 }
}

 verse = \lyricmode {  % Tenor 
  \set stanza = #"1. "
  I got a home up in -- a that king -- dom,   Ain't -- a that good good news!
   Home __  good, good news!
    I'm -- a gon -- na lay down this world, gon -- na shoul -- der up -- a my cross,
    take it home -- a my Je -- sus, Ain't -- a that good, good, news!
  
   Doo __ Doo __ good, good news!
    Doo __ Doo __ good news!
   Doo __  Doo  __ Doo __ cross
   Doo __ Doo __ good, good news!
  %vs3
  \set stanza = #"2. "
  I got a 
good news! 
  I got a home! __ I got a crown! __  I got a robe! __  Ain't -- a that good good news!
 I'm -- a gon -- na lay down this world, gon -- na shoul -- der up -- a my cross, My Cross!
    take it home -- a my Je -- sus, Ain't -- a that good, good, news!
Ain't -- a that good, good, news! Good news!
}

verseLead = \lyricmode {
  \set stanza = #"1. "
  I got a home up in -- a that king -- dom,   Ain't -- a that good good news!
   I got a home up in -- a that king -- dom,   Ain't -- a that good good news!
    I'm -- a gon -- na lay down this world, gon -- na shoul -- der up -- a my cross,
   gon -- na take it home -- a my Je -- sus, Ain't -- a that good, good, news!
  
   Doo __ Doo __ good, good news!
    Doo __ Doo __ good news!
   Doo __  Doo  __ Doo __ cross
   Doo __ Doo __ good, good news!
  %vs3
  \set stanza = #"2. "
  I got a 
good news! 
  I got a home! __ I got a crown! __  I got a robe! __  Ain't -- a that good good news!
 I'm -- a gon -- na lay down this world, gon -- na shoul -- der up -- a my cross, My Cross!
    gon -- na take it home -- a my Je -- sus, Ain't -- a that good, good, news!
Ain't -- a that good, good, news! Good news!
}

verseBari = \lyricmode {
  \set stanza = #"1. "
  I got a home up in -- a that king -- dom,   Ain't -- a that good good news!
   Home __  good, good news!
    I'm -- a gon -- na lay down this world, gon -- na shoul -- der up -- a my cross,
    take it home -- a my Je -- sus, Ain't -- a that good, good, news!
  
   Doo __ Doo __ good, good news!
    Doo __ Doo __ good news!
   Doo __  Doo  __ Doo __ cross
   Doo __ Doo __ good, good news!
  %vs3
  \set stanza = #"2. "
  I got a 
good news! 
  I got a home! __ I got a crown! __  I got a robe! __  Ain't -- a that good good news!
 I'm -- a gon -- na lay down this world, gon -- na shoul -- der up -- a my cross, My Cross!
    take it home -- a my Je -- sus, Ain't -- a that good, good, news!
Ain't -- a that good, good, news! Good news!
}

verseBass = \lyricmode {
  \set stanza = #"1. "
  I got a home up in -- a that king -- dom,   Ain't -- a that good news!
   Home __  good, good news!
    I'm -- a gon -- na lay down this world, gon -- na shoul -- der up -- a my cross,
    take it home -- a my Je -- sus, Ain't -- a that good, good, news!
  
   I got a crown up in -- a that king -- dom,   Ain't -- a that good news!
   I got a crown up in -- a that king -- dom,   Ain't -- a that good news!
    I'm gon -- na lay down this world, gon -- na shoul -- der up -- a my cross,
   gon -- na take it home -- a my Je -- sus, Ain't -- a that good, good, news!
  %vs3
  \set stanza = #"2. "
  I got a 
good news! 
  I got a home! __ I got a crown! __  I got a robe! __  Ain't -- a that good good news!
 I'm -- a gon -- na lay down this world, gon -- na shoul -- der up -- a my cross, My Cross!
    take it home -- a my Je -- sus, Ain't -- a that good, good, news!
Ain't -- a that good, good, news! Good news!
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats \articulate <<
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "lead" \new Voice = "lead" { s1*0\f \lead }
     \new Staff = "bari" \new Voice = "bari" { s1*0\f \bari }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 76 2)
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
% \unfoldRepeats 
  \new ChoirStaff <<
    \new Lyrics = "tenor" \with {
      \override VerticalAxisGroup #'staff-affinity = #DOWN
      }
    \accidentalStyle #'StaffGroup "voice"
    \new Staff \with {
      midiInstrument = "tenor sax"
      instrumentName = \markup \center-column { "Tenor" "Lead" }
      shortInstrumentName = \markup \center-column { "Ten" "Ld" }
    } <<
      \clef "treble_8"
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
    >>
    \new Lyrics = "lead" 
   \new Lyrics = "bari" \with {
      \override VerticalAxisGroup #'staff-affinity = #DOWN
      } 
    \new Staff \with {
      midiInstrument = "baritone sax"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
      shortInstrumentName = \markup \center-column { "Bar" "Bss" }
    } <<
      \clef bass
      \new Voice = "bari" { \voiceOne \bari }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics = "bass"
    \context Lyrics = "tenor" \lyricsto "tenor" \verse
    \context Lyrics = "lead" \lyricsto "lead" \verseLead
    \context Lyrics = "bari" \lyricsto "bari" \verseBari
    \context Lyrics = "bass" \lyricsto "bass" \verseBass
  >>


  \layout {
    \context {
      \Voice
      \override Glissando #'thickness = #3
      \override Glissando #'gap = #0.1
    }
  }
  \midi {
 
  }
}
% Tenor score
\bookpart {
 \header {
   instrument = "Tenor"
 }
  
\score {
  \new GrandStaff <<
    \new Staff \with { 
     instrumentName = \markup \center-column { "Tenor" }
     shortInstrumentName = \markup \center-column { "Ten" }
    }
     { \tenor }
   \addlyrics \verse
    
    \new ChoirStaff <<
      \new Staff \with { 
        \clef "treble_8"
       instrumentName = \markup \center-column { "Lead" }
     shortInstrumentName = \markup \center-column { "Ld" }
      }
                       {  \lead }
      \new Staff \with {
      instrumentName = \markup \center-column { "Baritone" "Bass" }
      shortInstrumentName = \markup \center-column { "Bar" "Bss" }
    } <<
      \clef bass
      \new Voice = "bari" { \voiceOne \bari }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    >>
  >>
     \layout {
    \context {
      \Voice
      \override Glissando #'thickness = #3
      \override Glissando #'gap = #0.1
    }  
     }
}
}
% Lead score
\bookpart {
  \header {
    instrument = "Lead"
  }
\score {
  \new GrandStaff <<
    \new Staff \with { 
     instrumentName = \markup \center-column { "Lead" }
     shortInstrumentName = \markup \center-column { "Ld" }
    }
     { \clef "treble_8"  \lead }
   \addlyrics \verseLead
    
    \new ChoirStaff <<
      \new Staff \with { 
     
       instrumentName = \markup \center-column { "Tenor" }
     shortInstrumentName = \markup \center-column { "Ten" }
      }
                       {    \clef "treble_8"  \tenor }
      \new Staff \with {
      instrumentName = \markup \center-column { "Baritone" "Bass" }
      shortInstrumentName = \markup \center-column { "Bar" "Bss" }
    } <<
      \clef bass
      \new Voice = "bari" { \voiceOne \bari }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    >>
  >>
     \layout {
    \context {
      \Voice
      \override Glissando #'thickness = #3
      \override Glissando #'gap = #0.1
    }  
     }
}
}
% Baritone score
\bookpart {
  \header {
    instrument = "Baritone"
  }
  
\score {
  \new GrandStaff <<
    \new Staff \with { 
     instrumentName = \markup \center-column { "Baritone" }
     shortInstrumentName = \markup \center-column { "Bar" }
    }
     { \clef bass \bari }
   \addlyrics \verseBari
    
    \new ChoirStaff <<
      \new Staff \with { 
        \clef "treble_8"
       instrumentName = \markup \center-column { "Tenor" "Lead" }
     shortInstrumentName = \markup \center-column { "Ten" "Ld" }
      }<<
          \clef "treble_8"
         \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
      >>
      \new Staff \with {
      instrumentName = \markup \center-column { "Bass" }
      shortInstrumentName = \markup \center-column { "Bss" }
    } <<
      \clef bass
           \new Voice = "bass" { \voiceOne \bass }
    >>
    >>
  >>
     \layout {
    \context {
      \Voice
      \override Glissando #'thickness = #3
      \override Glissando #'gap = #0.1
    }  
     }
}
}

% Bass
%
\bookpart {
  \header {
    instrument = "Bass"
  }
\score {
  \new GrandStaff <<
    \new Staff \with { 
     instrumentName = \markup \center-column { "Bass" }
     shortInstrumentName = \markup \center-column { "Bss" }
    }
     { \clef bass \bass }
   \addlyrics \verseBass
    
    \new ChoirStaff <<
      \new Staff \with { 
        \clef "treble_8"
       instrumentName = \markup \center-column { "Tenor" "Lead" }
     shortInstrumentName = \markup \center-column { "Ten" "Ld" }
      }<<
          \clef "treble_8"
         \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
      >>
      \new Staff \with {
      instrumentName = \markup \center-column { "Bari" }
      shortInstrumentName = \markup \center-column { "Bar" }
    } <<
      \clef bass
           \new Voice = "bari" { \voiceOne \bari }
    >>
    >>
  >>
     \layout {
    \context {
      \Voice
      \override Glissando #'thickness = #3
      \override Glissando #'gap = #0.1
    }  
     }
}
}
% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor"
  \score {
    \unfoldRepeats
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { 
    \tempo  2=84
    }
  }
  
}

\book {
  \bookOutputSuffix "lead"
  \score {
        \unfoldRepeats
    \rehearsalMidi "lead" "tenor sax" \verse
    \midi { \tempo  2=84  }
  }
}

\book {
  \bookOutputSuffix "bari"
  \score {
        \unfoldRepeats
    \rehearsalMidi "bari" "tenor sax" \verse
    \midi { \tempo 2=84 }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
        \unfoldRepeats
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi {  \tempo  2=84 }
  }
}

