\version "2.17.6"
\language "english"

\header {
  title = "Guide Me, O Thou Great Jehovah"
  instrument = "TTBB"
  
   
  tagline = "Engraved with Lilypond"
}
%{
#(set! paper-alist (cons '("my size" . (cons (* 75 in) (* 5 in))) paper-alist))

\paper {
  #(set-paper-size "my size")
}
%}

\paper {
  #(set-paper-size "letter")
}

global = {
  \tempo  "Steady, dignified walking tempo" 4 = 92
  \key g \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

tenor =  \relative c {
  \global
  \dynamicUp
  % Music follows here.
  R1 R1 d4\mf e d4. g8
  g ([fs]) g (a) b4 a b g e c'b a g2|
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  d c g g8 (a) b4 c b2 |
  %11
  d4. d8 d4 d d4. d8 d4 d |
  d4. d8 g, [g] a [a] fs\< ([g]) a [b] c2 \breathe
  b4\f\! a4 g g8 ([c]) |
  b4\> c b2\mf\!
  %17
  d,4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b g e c' b a g2 d4 e d4. g8 |
  g8 ([fs]) g ([a]) b4 a d c g g8 ([a]) b4 c b2 |
  d4. d8 d4 d d4. d8 d4 d |
  d4. d8 g, [g] a [a] fs\< ([g]) a [b] c2 \breathe
  b4\f\! a g g8 ([c]) b4\> c b2\mf\!
  R1*2 \key af \major R1 R1
  %35
  ef,4\f^"broader" f ef4. af8 af ([g]) af ([bf]) c4 bf |
  c af f df' c bf af ~af8 r8 ef4 f ef4. af8 |
  af8 ([g])af ([bf]) c4 bf c df ef df8 ([bf])af4^"slight accel." g af2 |
  %43
  g4.^"a tempo" af8 bf4 g ef'4. df8 c4 af af4. af8 af [af] bf [bf] |
  g8 ([af])bf [c] df2 c4 bf af af8 ([df])c4 df c2 |
  ef4.\ff^"Broadly" df8 c ([ef]) df ([bf])
  <c ef>2 \breathe <df ef>  ef1\fermata |
  \bar "|."
  
  
}
lead = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  R1 R1 d4\mf e d4. g8
  g ([fs]) g (a) b4 a b g e c'b a g2|
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b c d c8 (a) g4 fs g2 |
  %11
  a4. b8 c4 a b4. c8 d4 b |
  d4. d8 c [b] a [g] d'1\< \breathe
  d4.\f\! c8 b ([d]) c ([a]) |
  g4\> fs g2\mf\!
  %17
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b g e c' b a g2 d4 e d4. g8 |
  g8 ([fs]) g ([a]) b4 a b c d c8 ([a]) g4 fs g2 |
  %25
  a4. b8 c4 a b4. c8 d4 b d4. d8 c [b] a [g] d'1\< \breathe
  d4.\f\! c8 b ([d])c ([a])g4\> fs g2\mf\!|
  R1*2 \key af \major R1 R1
  ef4\f^"broader" f ef4. af8 af ([g]) af ([bf]) c4 bf |
  c af f df' c bf af ~af8 r8 ef4 f ef4. af8 |
  af8 ([g])af ([bf]) c4 bf c df ef df8 ([bf])af4^"slight accel." g af2 |
  %43
  bf4.^"a tempo" c8 df4 bf c4. df8 ef4 c ef4. ef8 df [c] bf [af] |
  ef'1 ef4. df8 c([ef]) df ([bf])af4 g af2 |
  ef'4.\ff^"Broadly" df8 c ([ef]) df ([bf]) af2 \breathe bf c1 \fermata
  
}
bari =  \relative c {
  \global
  \dynamicUp
  % Music follows here.
  R1*2 d4\mf  e d4. g8
  g ([fs]) g (a) b4 a b g e c'b a g2|
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  g g d e d d d2
  %11
  fs4. g8 a4 fs g4. a8 b4 g |
  g4. g8 e [e] e [e]  d4\< d8 [e] fs2 \breathe |
  g4\f\! fs f e d\> d d2\mf\! |
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b g e c' b a g2 d4 e d4. g8 |
  g8 ([fs]) g ([a]) b4 a g g d e d d d2 |
  fs4. g8 a4 fs g4. a8 b4 g g4. g8 e [e] e [e] |
  d4\< d8 [e] fs2 \breathe
  g4\f\! fs f e d\> d d2\mf\!
  R1*2 \key af \major R1 R1
  ef4\f^"broader" f ef4. af8 af ([g]) af ([bf]) c4 bf |
  c af f df' c bf af ~af8 r8 ef4 f ef4. af8 |
  af8 ([g])af ([bf]) c4 bf c df ef df8 ([bf])af4^"slight accel." g af2 |
  ef4.^"a tempo" ef8 ef4 ef af4. g8 af4 ef ef4. ef8 f [f] f [f] |
  ef4 ef8 [f] g2 af4 g gf f ef ef ef2 |
  ef4.^"Broadly"\ff df8 c ([ef]) df ([bf])ef2 \breathe ef af1 \fermata
}
bass =   \relative c {
  \global
  \dynamicUp
  % Music follows here.
  R1*2 d4\mf  e d4. g8
  g ([fs]) g (a) b4 a b g e c'b a g2|
  d4 e d4. g8 g ([fs]) g ([a]) b4 a |
  g e b c d d g,2 |
  %11
  d'4 d d8 [d] d [d] d4 d d8 [d] d [d] |
  b4. b8 c [c] cs [cs] d ([e])\< fs g a2 \breathe |
  g4\f\! d d8 ([b]) c4 d\> d g,2\mf\! |
  d'4 e d4. g8 g ([fs]) g ([a]) b4 a |
  b g e c' b a g2 d4 e d4. g8 |
  g8 ([fs]) g ([a]) b4 a g e b c d d g,2
  %25
  d'4 d d d d d d d b4. b8 c [c] cs [cs] |
  d8\< ([e]) fs g a2 \breathe
  g4\f\! d d8 ([b])c4 d\> d g,2\mf\!
  R1*2 \key af \major R1 R1
  %35
  ef'4\f^"broader" f ef4. af8 af ([g]) af ([bf]) c4 bf |
  c af f df' c bf af ~af8 r8 ef4 f ef4. af8 |
  af8 ([g])af ([bf]) c4 bf c df ef df8 ([bf])af4^"slight accel." g af2 |
  ef4.^"a tempo" ef8 ef4 ef ef4. ef8 ef4 ef c4. c8 df [df] d [d] |
  ef ([f]) g [af] bf2 af4 ef ef8 ([c]) df4 ef ef af,2 |
  ef'4.\ff^"Broadly" df8 c ([ef]) df ([bf]) ef,2 \breathe g af1 \fermata |
}
verse = \lyricmode {
  % Lyrics follow here.
  Guide me, O Thou great Je -- ho -- vah,
  Pil -- grim through this bar -- ren land;
  I am weak, but Thou  art  might -- y;
  Hold me with Thy pow'r -- ful hand;
  Bread of heav -- en, Bread of heav -- en,
  Feed me till I want no more, want no more,
  Feed me till  I  want no more.
  %17
  O -- pen now the crys -- tal foun -- tain,
  Whence the heal -- ing stream doth flow.
  Let the fire and cloud -- y  pil -- lar
  lead me all my jour -- ney through.
  %25
  Strong De -- liv -- 'rer, Strong De -- liv -- 'rer,
  Be Thou still my Strength and Shield, Strength and Shield,
  Be Thou still  my Strength and Shield.
  %35
  When I tread the verge of  Jor -- dan,
  Bid my anx -- ious fears sub -- side; 
  Death of death, and hell's  de -- struc -- tion,
  Land me safe on Can -- naan's side;
  %43
  Songs of prais -- es, songs of prais -- es,
  I will ev -- er give to Thee, give to Thee,
  I will ev -- er give to Thee;
  I will ev -- er give to Thee!
}

verseLead = \lyricmode {
  % Lyrics follow here.
  Guide me, O Thou great Je -- ho -- vah,
  Pil -- grim through this bar -- ren land;
  I am weak, but Thou  art  might -- y;
  Hold me with Thy  pow'r -- ful hand;
  Bread of heav -- en, Bread of heav -- en,
  Feed me till I want no more,
  Feed me till  I want no more.
  %17
  O -- pen now the crys -- tal foun -- tain,
  Whence the heal -- ing stream doth flow.
  Let the fire and cloud -- y pil -- lar
  lead me all my jour -- ney through.
  %25
  Strong De -- liv -- 'rer, Strong De -- liv -- 'rer,
  Be Thou still my Strength and Shield, 
  Be Thou still  my Strength and Shield.
  %35
  When I tread the verge of  Jor -- dan,
  Bid my anx -- ious fears sub -- side; 
  Death of death, and hell's  de -- struc -- tion,
  Land me safe on  Can -- naan's side;
  %43
  Songs of prais -- es, songs of prais -- es,
  I will ev -- er give to Thee,
  I will ev -- er  give to Thee;
  I will ev -- er give to Thee!
}
verseBari = \lyricmode {
  % Lyrics follow here.
  Guide me, O Thou great Je -- ho -- vah,
  Pil -- grim through this bar -- ren land;
  I am weak, but Thou  art  might -- y;
  Hold me with Thy  pow'r -- ful hand;
  Bread of heav -- en, Bread of heav -- en,
  Feed me till I want no more, want no more,
  Feed me till I want no more.
  %17
  O -- pen now the crys -- tal  foun -- tain,
  Whence the heal -- ing stream doth flow.
  Let the fire and cloud -- y pil -- lar
  lead me all my jour -- ney through.
  %25
  Strong De -- liv -- 'rer, Strong De -- liv -- 'rer,
  Be Thou still my Strength and Shield,  Strength and Shield,
  Be Thou still  my Strength and Shield.
  %35
  When I tread the verge  of  Jor -- dan,
  Bid my anx -- ious fears sub -- side;
  Death of death, and hell's de -- struc -- tion,
  Land me safe on Can -- naan's side;
  %43
  Songs of prais -- es, songs of prais -- es,
  I will ev -- er give to Thee, give to Thee,
  I will ev -- er give to Thee;
  I will ev -- er give to Thee!
}

verseBass = \lyricmode {
  % Lyrics follow here.
   Guide me, O Thou great Je -- ho -- vah,
  Pil -- grim through this bar -- ren land;
  I am weak, but Thou  art  might -- y;
  Hold me with Thy  pow'r -- ful hand;
  Bread of, Bread of heav -- en, Bread of, Bread of heav -- en,
  Feed me till I want no more,  want no more,
  Feed me till  I want no more.
  %17
  O -- pen now the crys -- tal  foun -- tain,
  Whence the heal -- ing stream doth flow.
  Let the fire and cloud -- y  pil -- lar
  lead me all my jour -- ney through.
  %25
  Strong De -- liv -- 'rer, Strong De -- liv -- 'rer,
  Be Thou still my Strength and Shield,  Strength and Shield,
  Be Thou still  my Strength and Shield.
  %35
  When I tread the verge of  Jor -- dan,
  Bid my anx -- ious fears sub -- side; 
  Death of death, and hell's  de -- struc -- tion,
  Land me safe on  Can -- naan's side;
  %43
  Songs of prais -- es, songs of prais -- es,
  I will ev -- er give to Thee, give to Thee,
  I will ev -- er give to Thee;
  I will ev -- er give to Thee!
  
}
rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats
   <<
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "lead" \new Voice = "lead" { s1*0\f \lead }
     \new Staff = "bari" \new Voice = "bari" { s1*0\f \bari }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.7
       \set Score.tempoWholesPerMinute = #(ly:make-moment 92 4)
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
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \accidentalStyle StaffGroup.voice
    \new Staff \with {
      midiInstrument = "cello"
      instrumentName = \markup \center-column { "Tenor" "Lead" }
      shortInstrumentName = \markup \center-column { "Ten" "Ld" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
    >>
    \new Lyrics = "lead" 
    \new Lyrics = "bari" \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
    } 
    \new Staff \with {
      midiInstrument = "cello"
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
      \override Glissando.thickness = #3
      \override Glissando.gap = #0.1
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
        \clef bass
        instrumentName = \markup \center-column { "Tenor" }
        shortInstrumentName = \markup \center-column { "Ten" }
      }
      { \tenor }
      \addlyrics \verse
      
      \new ChoirStaff <<
        \new Staff \with { 
          \clef bass
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
        \override Glissando.thickness = #3
        \override Glissando.gap = #0.1
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
        \clef bass
        instrumentName = \markup \center-column { "Lead" }
        shortInstrumentName = \markup \center-column { "Ld" }
      }
      { \clef bass  \lead }
      \addlyrics \verseLead
      
      \new ChoirStaff <<
        \new Staff \with { 
          
          instrumentName = \markup \center-column { "Tenor" }
          shortInstrumentName = \markup \center-column { "Ten" }
        }
        {    \clef bass  \tenor }
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
        \override Glissando.thickness = #3
        \override Glissando.gap = #0.1
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
          \clef bass
          instrumentName = \markup \center-column { "Tenor" "Lead" }
          shortInstrumentName = \markup \center-column { "Ten" "Ld" }
        }<<
          \clef bass
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
        \override Glissando.thickness = #3
        \override Glissando.gap = #0.1
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
        \override Glissando.thickness = #3
        \override Glissando.gap = #0.1
      }  
    }
  }
}
% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "cello" \verse
    \midi { }
  }
  
}

\book {
  \bookOutputSuffix "lead"
  \score {
    \rehearsalMidi "lead" "cello" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bari"
  \score {
    \rehearsalMidi "bari" "cello" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "cello" \verse
    \midi { }
  }
}



%{
  convert-ly (GNU LilyPond) 2.17.10  convert-ly: Processing `'...
  Applying conversion: 2.15.39, 2.15.40, 2.15.42, 2.15.43, 2.16.0,
  2.17.0, 2.17.4, 2.17.5, 2.17.6
%}
