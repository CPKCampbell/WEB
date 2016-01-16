\version "2.17.15"
\language "english"

\header {
  title = "Just A Little Talk With Jesus"
  instrument = "Mens' Quartet"
  composer = "Cleavant Derricks"
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
  line-width = 7.5\in
  ragged-bottom = ##f
  ragged-right = ##f
  ragged-last-bottom = ##t
  systems-per-page = #3
}

global = {
  \key af \major
  
  \time 4/4
  %  \autoBeamOff
  \tempo 4 = 100
}

%lead
lead = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  r2..
  \repeat volta 3 {
    ef8 af af af af c4. c8 bf af af f ef4. ef8 |
    af16 af af af  af8 bf c c bf af |
    bf2~ bf4. ef,8 af af af af c4. c8 bf af af f ef4. ef8 |
    af16 af af af af8 bf c c bf bf af2~ af8 r8 r4 |
    % refrain
    af16 af af af  af8 af f ef r4 |
    af16 af af af  af8 af f ef r4 |
    bf'8 bf bf bf bf r8 r4 c8 c c c c r8 r4 |
    af16 af af af af8 af af af r4 |
    af16 af af af af8 af af af r4 |
    af16 af af af af8 bf c c bf bf af2. r8
  }
}
%tenor
tenor = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  r2..
  \repeat volta 3 {
    c8 c c c c ef4. e8 f f f df c4. c8 |
    c16 c c c ef8 ef ef ef ef d |
    ef4 ( d df4.) df8 c c c c ef4. e8 f f f df c4. c8 |
    c16 c c c c8 df ef ef df df c4 (df c8) r8 r4
    % refrain
    c16 c c c c8 c df c r4
    ef16 ef ef ef ef8 ef df c r4
    ef8 ef d d ef r8 r4 ef8 af g f ef r8 r4
    f16 f f f f8 f f f r4 ef16 ef ef ef  ef8 ef f ef r4
    f16 f f f f8 g af af g g ef4 ( f ef ) r8
  }
}
%baritone
bari = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  r2..
  \repeat volta 3 {
    af8 ef ef ef ef af4. af8 df df df af af4. af8 |
    ef16 ef ef ef af8 g af af bf bf g4 (af g4.) g8 |
    ef8 ef ef ef af4. af8 df df df af af4. af8 |
    af16 af af af af8 af af af g g ef4 (f ef8) r8 r4
    %refrain
    ef16 ef ef ef ef8 ef af af r4 c16 c c c c8 c bf af r4 |
    g8 g af af g r8 r4 af8 af af af af r8 r4 |
    df16 df df df df8 df df df r4 c16 c c c c8 c df c r4 
    c16 c c c c8 df ef ef df df c4  ( df c ) r8
  } 
}

bass = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  r2..
  \repeat volta 3 {
    af8 af af af af af4. c8 df df df df af4. af8 |
    af16 af af af c8 ef af af g f ef4 ( f ef4.) ef8 |
    af, af af af af4. c8 df df df df af4. ef'8 |
    f16 f f f f8 ff ef ef ef, ef af2~ af8 af c ef 
    % refrain
    af,16 af af af af8 af af af c ef |
    af,16 af af af af8 af af af c af
    ef'8 ef f f ef ef f g af f ef c af af bf c |
    df16 df df df df8 df df df c bf |
    af16 af af af af8 af af af c ef |
    f16 f f f f8 ff ef ef ef, ef af2. r8
  }
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  I once was lost in sin, but Je -- sus took me in;
  And then a lit -- tle light from Hea -- ven filled my soul
  It bathed my heart in love, and wrote my name a -- bove,
  And just a lit -- tle talk with Je -- sus makes me whole.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Some times my path seems drear, with -- out a ray of cheer;
  And then a cloud of doubt may hide the light of day.
  The mists of sin may rise, and hide the star -- ry skies,
  But just a lit -- tle talk with Je -- sus clears the way.
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  I may have doubts and fears, my eyes be filled with tears,
  But Je -- sus is a friend who watch -- es day and night.
  I go to Him in prayer; He knows my ev -- ery care;
  And just a lit -- tle talk with Je -- sus makes it right.
}

refrain = \lyricmode {
  have a lit -- tle talk with Je -- sus
  tell Him all a -- bout our trou -- bles
  hear our faint -- est cry
  an -- swer by and by.
  feel a lit -- tle pray'r wheel turn -- ing
  know a lit -- tle fire is burn -- ing
  find a lit -- tle talk with Je -- sus 
  makes it right.
}

bassRefrain = \lyricmode {
  Now let us
  have a lit -- tle talk with Je -- sus
  let us
  tell Him all a -- bout our trou -- bles
  He will
  hear our faint -- est cry
  and He will
  an -- swer by and by.
  Now when you
  feel a lit -- tle pray'r wheel turn -- ing
  and you
  know a lit -- tle fire is burn --ing
  You will
  find a lit -- tle talk with Je -- sus 
  makes it right.
}
rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats
   <<
     
     \new Staff = "Tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "Lead" \new Voice = "lead" { s1*0\f \lead }
     \new Staff = "Bari" \new Voice = "bari" { s1*0\f \bari }
     \new Staff = "Bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.4
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



\score {
 % \unfoldRepeats 
  \new ChoirStaff <<
    
    \accidentalStyle  voice
    \new Staff \with {
      midiInstrument = "tenor sax"
      instrumentName = \markup \center-column { "Tenor" "Lead" }
      shortInstrumentName = \markup \center-column { "Ten" "Ld" }
    } <<
      \clef "treble_8"
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
      \new Lyrics   \lyricsto "lead"  { \verseOne  }
      \new Lyrics   \lyricsto "lead"  { \verseTwo \refrain }
      \new Lyrics   \lyricsto "lead"  { \verseThree  }
  
    >>
    
    \new Staff \with {
      midiInstrument = "baritone sax"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
      shortInstrumentName = \markup \center-column { "Bar" "Bss" }
    } <<
      \clef bass
      \new Voice = "bari" { \voiceOne \bari }
      \new Voice = "bass" { \voiceTwo \bass }
      \new Lyrics   \lyricsto bass  { \verseOne \bassRefrain \verseTwo \bassRefrain \verseThree \bassRefrain }
    >>
    
    
  >>
  \layout {
    \context {
      \Voice
      \override Glissando.thickness = #3
      \override Glissando.gap = #0.1
    }
    \set Score.markFormatter = #format-mark-box-barnumbers
    \context {
      \ChoirStaff
      \override StaffGrouper.staff-staff-spacing.padding = #12
    } 
    \context {
      \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "lead"
  \score {
    \rehearsalMidi "lead" "soprano sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "bari" "baritone sax" \verseOne
    \midi { }
  }
}


\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "bassoon" \verseOne
    \midi { }
  }
}




%{
  convert-ly (GNU LilyPond) 2.15.36  convert-ly: Processing `'...
  Applying conversion: 2.15.32
%}


%{
  convert-ly (GNU LilyPond) 2.15.41  convert-ly: Processing `'...
  Applying conversion: 2.15.39, 2.15.40
%}


%{
  convert-ly (GNU LilyPond) 2.17.13  convert-ly: Processing `'...
  Applying conversion: 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5,
  2.17.6, 2.17.11
%}


%{
convert-ly (GNU LilyPond) 2.17.14  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}


%{
convert-ly (GNU LilyPond) 2.17.17  convert-ly: Processing `'...
Applying conversion: 2.17.15
%}
