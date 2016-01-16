\version "2.15.34"
\language "english"

\header {
  title = "This Little Light of Mine/Do Lord Medley"
  instrument = "Male Quartet"
  composer = "Traditional"
  arranger = "Val Hicks"
  copyright =\markup { \char ##x00A9 2008 Val J. Hicks }
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key af \major
  \time 2/2
  \tempo 2=92
 % \accidentalStyle "voice"
}

tenor =  {
  \transpose af f {
  \relative c' {
  \global
  % Music follows here.
 
  c4 c8 b c df4 ef8~ ef1 ef4 ef8d ef df4 c8~ c1 |
  df4 df8 df df ef4 f8~ f2\glissando  df \glissando f4  df8 df cf cf4 c8~ c2. r4 |
  \mark \default
  c4 c8 b c df4 ef8~ ef2 c8 df4 c8
  ef4 ef8 d ef e4 f8~ f2 ef8 ef4 d8~ d2 d8 d4 df8~ df2 ef8 df4 c8~ c2 (cf c2. ) r4 |
  \mark \default
  c4 c8 c c4 df ef ef8 ef~ ef4 df  ef ef2 df4 c1 |
  df4 df8 df df4 e f f8 f~ f4 df f f2 cf4 c2. r4
  \mark \default
  c4 c8 c c4 df ef ef8 ef~ ef4 df ef ef2 e4 f2 (ef) |
  d2. d4 ef (df2) cf4 c2 ( ef d2. ) r4
  \mark \default
  %D
  \key a \major
  cs4 cs2 d4 e e2 e4 e4. e8 e4 d cs cs d e d d2 es4 |
  fs4 fs2 d4 fs4. fs8 d4 bs cs2. r4 |
  \mark \default
  %E
  cs4 cs2 d4 e e2 e4 e4. e8 es4 es fs2 ( e )
  ds2. ds4 d (e2) d4 d2 cs8 cs4. cs2. \fermata r4

  \mark "Tag"
  d4 d d es fs8 fs4 fs8~ fs \fermata r8 fs8 fs |
  e4 e8 e fs4 e e4. e8 e \fermata r8 e8 e |
  ds2  ds e4 fs gs2  a1~ a2 fs8 fs4. a1
  r4 a8 a b c4 (cs8) cs1~ cs \fermata
  }
}
}
lead = {
  \transpose af f {
  \relative c {
  \global
 
  % Music follows here.
  ef4 ef8 d ef f4 af8~ af1 c4 c8 b c bf4 af8~ af1 |
  f4 f8 e f g4 af8~ af2 \glissando f \glissando af4 af8 g af f4 ef8~ ef2. r4
  %A
  \mark \default
  ef4 ef8 d ef f4 af8~ af1 c4 c8 b c bf4 af8~ af2 af8 af4 c8~ c2
  c8 c4 bf8~ bf2 c8 bf4 af8~ af1~ af2. r4
  % B
  \mark \default
  ef4 ef8 ef ef4 f af af8 af~ af4 bf c c2 bf4  af1 |
  f4 f8 f f4 g af af8 af~ af4 f af af2 f4 ef2. r4
  % C
  \mark \default
  ef4 ef8 ef ef4 f af af8 af~ af4 bf c c2 bf4  af1 |
  c2. af4 c4 (bf2) af4 af1 ( gs2.) r4 |
  %D
  \mark \default \key a \major
  e4 e8 ds e4 fs a1 cs4 cs8 bs cs b4. a1 |
  fs4 fs8 es fs4 gs a2 \glissando fs a4 a8 gs a fs4. e2. r4 |
  % E
  \mark \default
  e4 e8 ds e fs4. a1 cs4 cs8 bs cs b4. a2 a8 a4. |
  cs2 cs8 cs4. b2 cs8 b4. a1~ a2 \fermata r4 a8 a |

  \mark "Tag"
  fs4 es fs gs a8 a4 a8~ a\fermata r8 b8 bs |
  cs4 cs8 cs bs4 cs gs4. g8 fs\fermata r8 cs'8 cs |
  cs2 a d4 d d2 e1~ e2 d8 d4. e1
  r4 e8 e d d4 (e8) e1~ e
}
  }
}
bari = {
  \transpose af f {
  \relative c' {
  \global
  % Music follows here.
 
  af4 af8 f af bf4 c8~ c1 af4 af8 af af g4 gf8~ gf1 |
  af4 af8 g af bf4  df8~ df2 \glissando af \glissando df4 f,8 ff f af4 af8~ af2. r4
  \mark \default
  %A
  af4 af8 f af bf4  c8~ c2 ef,8 f4 ef8
  af4 af8 f af g4 c8~ c2 f,8 f4 af8 (af2) af8 af4 g8~ g2 g8 g4 ef8~ ef2 (f ef2.) r4 |
  % B
  \mark \default
  af4 af8 af af4 bf c c8 c~ c4 g af af2 g4 gf1 |
  af4 af8 af af4 bf df df8 df~ df4 af cf cf2 af4 af2. r4 |
  % C
  \mark \default
  af4 af8 af af4 bf c c8 c~ c4 g af af2 g4 c1 |
  af2. f4 g2. f4 ef1 ( e2.) r4 |
  % D
  \mark \default \key a \major
  a4 a2 b4 cs cs2 cs4 a4. fs8 gs4 gs g1 |
  a4 a2 b4 d d2 a4 d4. d8 fs,4 a a2. r4 |
  % E
  \mark \default
  a4 a2 b4 cs cs2 e,4 a4. a8 gs4 gs cs1 |
  a2. a4 gs2. gs4 fs2 e8 e4. g2. r4 |
  
  \mark "Tag"
  a4 gss a b c8 c4 c8~ c \fermata r8 a8 a
  a4 a8 a gs4 a b4. b8 as\fermata r8 as as |
  a2 fs b4 b b2 cs1~ cs2 b8 b4. cs1 r4 cs8 cs fs8 fs4 (a8 ) a1~ a \fermata
}
  }
}
bass =   {
  \transpose af f {
  \relative c {
  \global
  % Music follows here.
 
  af4 af8 g af af4 af8~ af1 af4 ef'8 f ef ef4 ef8~ ef4 af,bf c |
  df4 df8 df df df4 df8~ df1 df4 df8 df df df4 af8~ af2. r4
  %A
  \mark \default
  af4 af8 g af af4 af8~ af2 af8 af4 af8 |
  af4 af8 g af c4 f8~ f2 c8 c4 f8~ f2 f8 f4 ef8~ ef2 ef8 ef4 af,8~ af2 (df af2. ) r4
  %B
  \mark \default
  af4 af8 af af4 af af af8 af~ af4 ef' af, af2 ef'4 ef af, bf c |
  df4 df8 df df4 c df df8 df ~ df4 df df df2 df4 af2. r4 |
  %C
  af4 af8 af af4 af af af8 af~ af4 ef' af, af2 c4 f1 |
  f2. bf,4 ef2. df4 af2 (c b2. ) r4
  %d Do Lord
  \key  a \major   \mark \default
  a4 a2 a4 a a2 e'4 a,4. a8 e'4 e e a, b cs |
  d4 d2 cs4 d d2 d4 d4. d8 d4 d a2. r4 |
  %E
  \mark \default
  a4 a2 a4 a a2 e'4 a,4. a8 e'4 e  fs1 |
  fs2. fs4 e2. e4 a,2 a8 a4. e'2.\fermata r4
 
  \mark "Tag"
  d4 d d cs d8 d4 ds8~ ds\fermata r8 ds ds |
  a4 a8 a ds4 e cs4. cs8 cs\fermata  r8 fs8 fs |
  fs2 b,2 gs'4 fs e2 a,4 cs e8 e fs4 a1~ a~ a \glissando ( a,)~ a\fermata
}
  }
}
verse = \lyricmode {
  % Lyrics follow here.
  This lit -- tle light of mine, 
  I'm gon -- na let it shine.
  This lit -- tle light of mine, _ 
  I'm gon -- na let it shine.
  This lit -- tle light of mine, 
  I'm gon -- na
  I'm gon -- na let it shine. 
  Let it shine 
  Let it shine 
  Let it shine
  %B
  I've got a home in Glo -- ry Land that out -- shines the sun.
  I've got a home in Glo -- ry Land that out -- shines the sun.
  I've got a home in Glo -- ry Land that out -- shines the sun.
  'way be -- yond the blue.
  %C
  Do Lord oh do Lord, oh do re -- mem -- ber me, Re -- mem -- ber
  Do Lord oh do Lord, oh do re -- mem -- ber me
  Do Lord oh do Lord, oh do re -- mem -- ber me
   'way be -- yond the blue. Let it shine.
   % Tag
   shine on me an' shine on you.
   Gon -- na tell what the pow'r of Love can do.
   Gon -- na let my lit -- tle light shine.
   Let it shine,
   Gon -- na let it shine!
}

verseLead = \lyricmode {
  % Lyrics follow here.
  This lit -- tle light of mine, 
  I'm gon -- na let it shine.
  This lit -- tle light of mine, _ 
  I'm gon -- na let it shine.
  This lit -- tle light of mine, 
 %  I'm gon -- na
  I'm gon -- na let it shine. 
  Let it shine 
  Let it shine 
  Let it shine
  %B
  I've got a home in Glo -- ry Land that out -- shines the sun.
  I've got a home in Glo -- ry Land that out -- shines the sun.
  I've got a home in Glo -- ry Land that out -- shines the sun.
  'way be -- yond the blue.
  %C
  This lit -- tle light of mine, 
  I'm gon -- na let it shine.
  This lit -- tle light of mine, _ 
  I'm gon -- na let it shine.
  This lit -- tle light of mine, 
 %  I'm gon -- na
  I'm gon -- na let it shine. 
  Let it shine 
  Let it shine 
  Let it shine
   % Tag
   Let it shine on me an' shine on you.
   Gon -- na tell what the pow'r of Love can do.
   Gon -- na let my lit -- tle light shine.
   Let it shine,
   Gon -- na let it shine!
}
verseBari = \lyricmode {
  % Lyrics follow here.
  This lit -- tle light of mine, 
  I'm gon -- na let it shine.
  This lit -- tle light of mine, _ 
  I'm gon -- na let it shine.
  This lit -- tle light of mine, 
  I'm gon -- na
  I'm gon -- na let it shine. 
  Let it shine 
  Let it shine 
  Let it shine
  %B
  I've got a home in Glo -- ry Land that out -- shines the sun.
  I've got a home in Glo -- ry Land that out -- shines the sun.
  I've got a home in Glo -- ry Land that out -- shines the sun.
  'way be -- yond the blue.
  %C
  Do Lord oh do Lord, oh do re -- mem -- ber me,
  Do Lord oh do Lord, oh do re -- mem -- ber me
  Do Lord oh do Lord, oh do re -- mem -- ber me
   'way be -- yond the blue. Let it shine.
   % Tag
   shine on me an' shine on you.
   Gon -- na tell what the pow'r of Love can do.
   Gon -- na let my lit -- tle light shine.
   Let it shine,
   Gon -- na let it shine!
}

verseBass = \lyricmode {
  % Lyrics follow here.
  This lit -- tle light of mine, 
  I'm gon -- na let it shine, Oh, bro -- ther
  This lit -- tle light of mine,
  I'm gon -- na let it shine.
  This lit -- tle light of mine, 
  I'm gon -- na
  I'm gon -- na let it shine. 
  Let it shine 
  Let it shine 
  Let it shine
  %B
  I've got a home in Glo -- ry Land that out -- shines the sun. Oh, bro -- ther
  I've got a home in Glo -- ry Land that out -- shines the sun.
  I've got a home in Glo -- ry Land that out -- shines the sun.
  'way be -- yond the blue.
  %C
  Do Lord oh do Lord, oh do re -- mem -- ber me,  Re -- mem -- ber
  Do Lord oh do Lord, oh do re -- mem -- ber me
  Do Lord oh do Lord, oh do re -- mem -- ber me
   'way be -- yond the blue. Let it shine.
   % Tag
   shine on me an' shine on you.
   Gon -- na tell what the pow'r of Love can do.
   Gon -- na let my lit -- tle light, 
   let my lit -- tle light shine.
  
}
rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "lead" \new Voice = "lead" { s1*0\f \lead }
     \new Staff = "bari" \new Voice = "bari" { s1*0\f \bari }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 92 2)
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
  \new ChoirStaff <<
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
    \new Lyrics \with {
 %     \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \verse
    \new Staff \with {
      midiInstrument = "baritone sax"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
      shortInstrumentName = \markup \center-column { "Bar" "Bss" }
    } <<
      \clef bass
      \new Voice = "bari" { \voiceOne \bari }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override Glissando #'thickness = #3
      \override Glissando #'gap = #0.1
    }
  }
  \midi { }
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
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
  
}

\book {
  \bookOutputSuffix "lead"
  \score {
    \rehearsalMidi "lead" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bari"
  \score {
    \rehearsalMidi "bari" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}

