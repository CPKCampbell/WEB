\version "2.15.41"
\language "english"

\header {
  title = "Run, Run, Run"
  instrument = "Male Quartet"
  composer = "Chad Mitchell"
  arranger = "Happiness Emporium"
  copyright =\markup { \char ##x00A9 1961 Chad Mitchell }
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key gf \major
  \time 4/4
  \tempo 2=100
 % \accidentalStyle "voice"
 \set Score.markFormatter = #format-mark-box-alphabet
 
}
bm = { \bar "||" \mark \default }
\include "articulate.ly"
tenor =  {
 
  \relative c' {
  \global
  % Music follows here.
   r2 r4 f4 gf4 gf gf8 gf4 gf8 f4 f f2 |
   f4 f cf8 bf cf df cf bf4 bf8~ bf4 r4 gf'4 gf8 ff~ ff ff ff ff |
   ef8 ef ef4 ef eff8 eff df df df4 cf df4~ df8 cf bf bf~ bf bf cf cf \bm
   bf2 bf bf2. r4 df2 df8 (cf bf4) df2. r4 |
   gf4 gf8 gf ff ff ff4 ef4. ef8~ ef ef eff eff df2 df8 (cf4.) bf2 r4 cf8 cf |
   \bm
   df4 df df8 df bf bf df cf4 cf8~ cf4 cf f f f8 f f4 |
   df8 df4 df8~ df4 r4 gf8 gf gf gf ff4 ff8 ff ef ef ef ef~ ef ef eff eff |
   df df df df cf cf cf df~ df cf bf bf~ bf bf cf cf |
    \bm
   bf4 bf2 bf4~ bf bf bf r4 df2 df8 (cf8 bf4) df2. r4 |
   gf4 gf8 gf ff ff ff4 ef4. ef8~ ef ef eff eff df2 df8 (cf4.) bf4 (ff'2) r4 \bm
   \key cf \major
   gf1 (gf8 ff8 ff2. ff gf4 ff8 ef ef2) r4 bff'1~ (bff4 af aff2 gf2 ff4 gf ff8 ef4. ef8 ff4.) |
   \bm
   ef2 (ff ef ff4) r4 gf2 (gf8 ff ef4 gf2.) r4 bff1 (bff4. af8~ af2 gf gf8 ff) r4 |
   ef4 (af aff) bff8^\markup { \teeny melody } bff
   \bm \key d \major
   fs4 fs8 fs fs fs e d fs e4 e8~ e e e e e e e e e ds e fs  e8 d4. d4 r4 |
   a'8 a a a~ a a a a a g g g~ g d d e fs4 fs8 fs e e e fs e d4 d8 r8 a b a |
   \bm
   d2 d d (e4 es) fs2 fs8 (e d4) fs2. r4 a4 a8 a a a a4 |
   a4. g8~ g d e d fs2 fs8 (e) r4 d4 (fs2) fs4 |
   \bm \key g \major
   %H
   g4 g d8 d c b d4 c8 c~ c c c c fs fs fs4 fs fs d2 d4 r8 d8 |
   g4 g8 f~ f f f f e4 e8 e~ e4 ef8 ef |
   d8 d d d c4 c8 d c b4 b8 r8 b8 c c |
   \bm 
   b4 (c) d (c) b (c d c) d2 d8 (c b4) d2. r4  g1~ g~ g2 fs g2. r4 
   \bar "||" \mark \markup { \box "Tag" }
   g4 g8 g f f f4 e4. e8~ e e ef ef g4 r4 a8 (bf4 b8) b1\fermata
   
}
}
lead = {
 
  \relative c {
  \global
   % Music follows here.
 r2 r4 df'4 \bar "||"
 bf4 bf bf8 bf4 bf8 bf4 af af2 |
 ef'4 af, af8 g af bf af gf4 gf8~ gf4 r4 df'4 df8 df~ df df df df |
 df8 cf cf4 cf gf8 af bf bf bf4 af bf~ bf8 af gf gf~ gf df ef df |
 \bm %A
 gf2 gf gf2. r4 bf2 bf8 (af gf4) bf2. r4 df4 df8 df df df df4 |
 df4.cf8~ cf gf af gf bf2 bf8 (af4.) gf2 r4 df'8 ef |
 \bm %B
 bf4 bf bf8 bf af gf bf af4 af8~ af4 af af af af8 af bf4 af8 gf4 gf8~ gf4 r4 |
 df'8 df df df df4 df8 df df cf cf cf~ cf gf gf af |
 bf8 bf bf bf af af af bf~ bf af gf gf~ gf df ef df |
 \bm %C
 gf2 gf gf2. r4 bf2 bf8 (af gf4) bf2. r4 df4 df8 df df df df4 |
 df4. cf8~ cf gf af gf bf2 bf8 (af4.) gf4 (bf2) r4 |
 \bm \key cf \major % D
 cf1 ( bf~ bf~ bf8 cf cf2) r4 ef1~ ef4 (ff df2 cf bf bf8 cf4. cf8 bf4. ) |
 \bm %E
 cf2 ( df cf df4 ) r4 cf1~ cf2. r4 ef1~ ef4. (ff8~ ff2 cf~ cf8 bf ) r4 cf4 (eff df ) df8 df |
 \bm \key d \major % F
 d4 d8 d d d b a cs cs4 a8~ a a b b cs cs cs cs cs bs cs cs |
 b8 a4. a4 r4 c8 c c c~ c c c c b b b bf~ bf bf bf bf |
 d4 d8 d cs cs cs cs b a4 a8 r8 d cs cs |
 \bm %G
 a2 a a (b) d d8 (b a4) d2. r4 c4 c8 c c c c4 |
 b4. b8~ b b b b d2 cs4 r4 a (d2) d4 |
 \bm \key g \major % H
 d4 d g,8 g e d fs4 fs8 fs~ fs fs fs fs c' c c4 c d |
 c8 ( b4.) b4 r8 b8 b4 b8 b~ b b b b g4 g8 g~ g4 a8 g |
 g8 g g g fs4 fs8 fs e d4 d8 r8 g8 fs fs |
 \bm %I
 d4 (e) fs (e) d ( e fs e ) g2 g8 (e d4) g2. r4 |
 b4 b8 b b b b4 bf4. bf8~ bf bf bf bf b2 c16 (b c8~ c4) b2. r4 |
 \bar "||" \mark \markup { \box "Tag" }
 b4 b8 b b b b4 bf4. bf8~ bf bf a a b4 r4 c4. (d8) d1\fermata
 
}
}
bari = {
 
  \relative c' {
  \global
  % Music follows here.
 r2 r4 cf \bar "||"
 df4 df df8 df4 df8 df4 cf cf2 cf4 cf f,8 e f f ef df4 df8~ df4 r4 |
 bf'4 bf8 bf~ bf bf bf bf gf gf gf4 gf  af8 gf gf gf gf4 f f~ f8 ef df df~ df gf af gf |
 \bm %A
 df2 df df2. r4 gf2 gf8 (ef df4) gf2. r4 |
 bf4 bf8 bf bf bf  bf4 gf4. gf8~ gf af gf af gf2 f df r4 f8 f |
 \bm  %B
 gf4 gf gf8 gf df df f f4 f8~ f4 f cf' cf cf8 cf df4 bf8 bf4 bf8~ bf4 r4 |
 bf8 bf bf bf bf4 bf8 bf gf gf gf gf~ gf gf af gf |
 gf8 gf gf gf f f f f~ f ef df df~ df gf f f |
 \bm %C
 df4 df2 df4~ df df df r4 gf2 gf8 (ef df4) gf2. r4 |
 bf4 bf8 bf bf bf bf4 gf4. gf8~ gf af gf gf gf2 f df2. r4 |
 \bm \key cf \major %D
 gf1~ gf~ gf~ gf2. r4 cf1~ cf (gf1~ gf2~ gf8 df4. ) |
 \bm %E
 gf2 (af gf af4 ) r4 gf1~ gf2. r4 |
 cf1~ cf (gf2.) r4 gf4 (cf bff) aff8 aff |
 \bm \key d \major % F
 a4 a8 a a a g fs g g4 g8~ g g g g g g g g g fs g g |
 g8 fs4. fs4 r4 fs8 fs fs fs ~ fs fs fs fs  d d d d'~ d g, g g |
 a4 gs8 gs g g g g g fs4 fs8 r8 fs8 g g |
 \bm %G
 fs2 fs fs (g) a a8 (g fs4) a2. r4 fs4 fs8 fs fs fs fs4 |
 d4. d8~ d g g g gs2 g4 r4 fs4 (a c) c^"Melody" |
 \bm \key g \major % H
 b4 b b8 b a g b4 a8 a~ a a a a a a a4 a b |
 a8 (g4. ) g4 r8 g8 d'4 d8 d~ d d d d |
 d4 c8~ c c4 g8 a |
 b8 b b b a4 a8 b a g4 g8 r8 d8 e d |
 \bm %I
 g2 g g1 b2 b8 (a g4) b2. r4 d4 d8 d d d d4 |
 e4. e8~ e e e e d2 d  d2. r4 |
 \bar "||" \mark \markup { \box "Tag" }
 d4 d8 d d d d4 c4. c8~ c c c c d4 r4 e4. (g8) g1\fermata
 
  }
}
bass =   {
  
  \relative c {
  \global
  % Music follows here.
 r2 r4 af'4 gf4 gf gf8 gf4 gf8 |
 df4 df df2 
 af'4 df, df8 c df df gf,8 gf4 gf8~ gf4 r4
 gf'4 gf8 gf~ gf gf gf gf |
 cf,8 cf cf4 cf cf8 cf df df df4 df df~ df8 gf, gf gf~ gf gf af af |
 \bm
 gf2 gf gf2. r4 gf2 gf gf2. r4 gf'4 gf8 gf gf gf gf4 |
 cf,4. cf8~ cf cf cf cf df2 df gf, r4 af8 af |
 \bm
 gf4 gf gf8 gf gf gf df' df4 df8~ df4 df df df df8 df df4 gf,8 gf4 gf8~ gf4 r4 |
 gf'8 gf gf gf gf4 gf8 gf cf, cf cf cf~ cf cf cf cf |
 df8 df df df df df df df~ df gf, gf gf~ gf gf af af |
 \bm
 gf4 gf2 gf4~ gf gf gf r4 gf2 gf gf2. r4 |
 gf'4 gf8 gf gf gf gf4 cf,4. cf8~ cf cf cf cf df2 df gf,2. gf4_\markup { \teeny melody }
  \bm \key cf \major   
  ef'8 ef ef ef ef ef df cf ef df4 df8~ df4 gf8 af df,4 df df8 df ef4 |
  df8 cf4 cf8~ cf4 r8 cf8 gf'4 gf gf gf8 af gf4 ff ff cf8 df |
  ef8 ef4 ef8 df df ef4 df8 cf4 cf8~ cf gf af gf |
  \bm
  cf2 cf cf2. r4 ef2 ef8 (df  cf4) ef2. r4 gf4 gf8 gf gf gf gf4 |
  gf4. ff8~ ff cf df cf ef2 ef8 ( df) r4 cf4 ( ff2) ff8 ff |
  \bm \key  d \major  %F
  d4 d8 d d d d d a a4 cs8~ cs cs b b a a a a a gs a a |
  e' d4. d4 r4 d8 d d d~ d d d d g, g g e'~ e e e e |
  d4 b8 b a a a a e' d4 d8 r8 d8 e e 
  \bm %G
  d2 d d1 d2 d d2. r4 d4 d8 d d d d4 |
  g,4. g8~ g g g g b2 a4 r4 d2 (a'4) a |
  \bm \key g \major %H
  g4 d g,8 g g g d'4 d8 d~ d d d d d d d4 d d |
  g,2 g4 r8 g'8 g4 g8 g~ g g g g c,4 c8 c~ c4 c8 c |
  d8 d d d d4 d8 d g, g4 g8 r8 g8 a a |
  \bm %I
  g4 (a) b (a) g (a b a) g2 g g2. r4 |
  g'4 g8 g g g g4 c,4. c8~ c c c c g'2 a4 r4
  g1~
  \bar "||"  \mark \markup { \box "Tag" }
  g1~ g~ g~ g \fermata
    }
}
verse = \lyricmode {
  % Lyrics follow here.
  Now Mos- es stood on the Red Sea shore,
  smote that wa- ter with a two by four, __
  wa- ter part- ed an' his peo- ple go through,
  but the wa- ter won't part for __ me an' you.
  You bet- ter run, run, run. 
  run, run run.
  Run to the ci- ty of re- fuge, 
  you bet- ter run, run, run.
  Well, the gos- pel child- ren down in E -- gypt land
  were held right there in old Pha -- roah's hand.
  Fam -- ine hit the land an' the wa -- ter run low.
  Well, if you're hold -- in' an -- y pe -- ople
  bet -- ter let 'em go.
  You bet -- ter run, run run;
  run, run, run, run, run.
  Run to the ci -- ty of re -- fuge,
  you bet -- ter run, run run.
  
  %D
  (oo) __  (oo) __
  Run __ run __ run __ run __
  
  %F
  Now a long time be -- fore we had the cot -- ton gin,
  we thought we bet -- ter bring a lot of wor -- kin' peo -- ple in.
  Car -- ried 'em o -- ver in a sla -- ve -- ry boat.
  Well, if we bring peo -- ple here, we got -- ta let 'em vote.
  %G
  You bet -- ter run, run, run;
  run, run, run.
  Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
  %H
  Now, you an' me, we got -- ta lot to learn
  a -- bout the trou -- bles that make this world turn.
  We see our neigh -- bours an' we judge 'em hard.
  Well, we bet -- ter look a -- round in our own back yard.
  %I
  You bet -- ter run, run, run; 
  run, run, run.
  Run, run, run.
  %tag
    Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
}

verseLead = \lyricmode {
  % Lyrics follow here.
  Now Mos- es stood on the Red Sea shore,
  smote that wa- ter with a two by four, __
  wa- ter part- ed an' his peo- ple go through,
  but the wa- ter won't part for __ me an' you.
  You bet- ter run, run, run. 
  run, run run.
  Run to the ci- ty of re- fuge, 
  you bet- ter run, run, run.
  Well, the gos- pel child- ren down in E -- gypt land
  were held right there in old Pha -- roah's hand.
  Fam -- ine hit the land an' the wa -- ter run low.
  Well, if you're hold -- in' an -- y pe -- ople
  bet -- ter let 'em go.
  You bet -- ter run, run run;
  run, run, run.
  Run to the ci -- ty of re -- fuge,
  you bet -- ter run, run run.
  (oo) __ (oo) __
  Run, run, run, run
  
  %F
  Now a long time be -- fore we had the cot -- ton gin,
  we thought we bet -- ter bring a lot of wor -- kin' peo -- ple in.
  Car -- ried 'em o -- ver in a sla -- ve -- ry boat.
  Well, if we bring peo -- ple here, we got -- ta let 'em vote.
  %G
  You bet -- ter run, run, run;
  run, run, run.
  Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
  %H
  Now, you an' me, we got -- ta lot to learn
  a -- bout the trou -- bles that make this world turn.
  We see our neigh -- bours an' we judge 'em hard.
  Well, we bet -- ter look a -- round in our own back yard.
  %I
  You bet -- ter run, run, run; 
  run, run, run.
  Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
  %tag
    Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
}
verseBari = \lyricmode {
  % Lyrics follow here.
  Now Mos- es stood on the Red Sea shore,
  smote that wa- ter with a two by four, __
  wa- ter part- ed an' his peo- ple go through,
  but the wa- ter won't part for __ me an' you.
  You bet- ter run, run, run. 
  run, run run.
  Run to the ci- ty of re- fuge, 
  you bet- ter run, run, run.
  Well, the gos- pel child- ren down in E -- gypt land
  were held right there in old Pha -- roah's hand.
  Fam -- ine hit the land an' the wa -- ter run low.
  Well, if you're hold -- in' an -- y pe -- ople
  bet -- ter let 'em go.
  You bet -- ter run, run run;
  run, run, run, run, run.
  Run to the ci -- ty of re -- fuge,
  you bet -- ter run, run run.
  
  %D
  (oo) __  (oo) __
  Run __ run __ run __ run __
  
  %F
  Now a long time be -- fore we had the cot -- ton gin,
  we thought we bet -- ter bring a lot of wor -- kin' peo -- ple in.
  Car -- ried 'em o -- ver in a sla -- ve -- ry boat.
  Well, if we bring peo -- ple here, we got -- ta let 'em vote.
  %G
  You bet -- ter run, run, run;
  run, run, run.
  Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
  %H
  Now, you an' me, we got -- ta lot to learn
  a -- bout the trou -- bles that make this world turn.
  We see our neigh -- bours an' we judge 'em hard.
  Well, we bet -- ter look a -- round in our own back yard.
  %I
  You bet -- ter run, run, run; 
  run, run, run.
  Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
  %tag
    Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
}

verseBass = \lyricmode {
  % Lyrics follow here.
  Now Mos- es stood on the Red Sea shore,
  smote that wa- ter with a two by four, __
  wa- ter part- ed an' his peo- ple go through,
  but the wa- ter won't part for __ me an' you.
  You bet- ter run, run, run. 
  run, run run.
  Run to the ci- ty of re- fuge, 
  you bet- ter run, run, run.
  Well, the gos- pel child- ren down in E -- gypt land
  were held right there in old Pha -- roah's hand.
  Fam -- ine hit the land an' the wa -- ter run low.
  Well, if you're hold -- in' an -- y pe -- ople
  bet -- ter let 'em go.
  You bet -- ter run, run run, run, run;
  run, run, run.
  Run to the ci -- ty of re -- fuge,
  you bet -- ter run, run run.
  %D
  Well, Josh -- u -- a was sent to be a might -- y foe,
  'cause he marched right up to old Jer -- i -- cho.
  He blows his horn an' the walls fall down.
  Then he'll knock in the walls a -- round your home town.
  %E
  You bet -- ter run, run, run;
  Run, run, run.
  Run to the cit -- y of re -- fuge,
  you bet -- ter run, run, run
  
  %F
  Now a long time be -- fore we had the cot -- ton gin,
  we thought we bet -- ter bring a lot of wor -- kin' peo -- ple in.
  Car -- ried 'em o -- ver in a sla -- ve -- ry boat.
  Well, if we bring peo -- ple here, we got -- ta let 'em vote.
  %G
  You bet -- ter run, run, run;
  run, run, run.
  Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
  %H
  Now, you an' me, we got -- ta lot to learn
  a -- bout the trou -- bles that make this world turn.
  We see our neigh -- bours an' we judge 'em hard.
  Well, we bet -- ter look a -- round in our own back yard.
  %I
  You bet -- ter run, run, run; 
  run, run, run.
  Run to the ci -- ty of re -- fuge, 
  you bet -- ter run, run, run.
  %tag
   
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
       \set Score.midiMinimumVolume = #0.8
       \set Score.midiMaximumVolume = #1.0
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
\unfoldRepeats 
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

