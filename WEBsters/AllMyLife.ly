\version "2.17.15"
\language "english"

\header {
  title = "All My Life (Psalm 73)"
  instrument = "Male Quartet"
  composer = "Ken Medema"
  arranger = "Berg/Campbell"
  copyright =\markup { \char ##x00A9 2010 Ken Medema Music/Brier Patch Music }
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

dropLyrics =
{
  \override LyricText #'extra-offset = #'(0 . -4)
  \override LyricHyphen #'extra-offset = #'(0 . -4)
  \override LyricExtender #'extra-offset = #'(0 . -4)
}

raiseLyrics =
{
  \revert LyricText #'extra-offset
  \revert LyricHyphen #'extra-offset
  \revert LyricExtender #'extra-offset
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
       \set Score.midiMinimumVolume = #0.6
       \set Score.midiMaximumVolume = #0.8
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


global = {
  \key f \major
  \time 4/4
  \tempo 4=92
  \accidentalStyle voice
  %  set to beaming in eigths for vocal style
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}
%{ Notes
   
   Add piano
   transpose f -> aflat
   add bass
%}

tenor =  
\relative c' {
  \global
  \partial 2 r2
  \repeat volta 4 {
    c4 bf c4. c8 f8. [f16] f16 [d8 c16] ~c2 d4 c d4. d8 |
    d d d16 d8 c16 ~c2 c4 bf c4. c8 f f e16 e8 d16 ~d4. df8 |
    f8 [f] f f e16 e ~e8 ~e8 d16 d e8 d e16 d8. c2 |
  }
  r8 d d [d] d [c] c c bf bf bf bf ~bf2  |
  r8 d d d d c c c bf bf bf bf ~bf2 |
  r8 g' g g g f f f f e f e ~e2 |
  r8 g g g g f g f f e d e ~e2 |
  r8 a a a a g f e d d d d ~d2 |
  r8 a' a a a g f e d d d d ~d2 |
  r8 bf' bf bf bf a bf a f e e e ~e2 |
  r8 bf' bf bf bf a bf a f e e e ~e2 |
  r2 r4 c4 f2. e4 f2. f4 f4. e8 e2 r2 r4 c d2. c4 |
  d2. e4 c1 r2 r4 c f2. e4 f2. f4 f4. e8 e2 r2 r4 c d2. c4 d2. e4 |
  c1 R1 c4 bf c4. c8 f f f16 d8 c16 ~c2 |
  d4 c d4. d8 d d d16 d8 c16 ~c2 |
  c4 bf c4. c8 |
  f8 f e16 e8 d16 ~d4. df8 f f f f e16 e ~e8 ~e d16 ~d e4 d e4. d8 c1~ c 
}
lead =  
\relative c {
  \global
  \partial 2 r2
  \repeat volta 4 {
    c4 d f4. f8 a8. [a16] a16 [g8 f16] ~f2 |
    d4 e f4. d8 f f f16 d8 c16 ~c2 |
    c4 d f4. f8 a a a16 g8 f16 ~f4. f8 |
    a8 [a] bf [a] a16 g16 ~g8 ~g8 f16 f g8 f a16 g8. f2 |
  }
  r8 f8 f [f] f e e e e d d d ~d2  |
  r8 f8 f f f e e e e d d d ~d2 |
  r8 bf' bf bf bf a a a a g g g ~g2 |
  r8 bf bf bf bf a a a a g g g ~g2 |
  r8 c c c c bf a g g f f f ~f2 |
  r8 c' c c c bf a g g f f f ~f2 |
  r8 d' d d d c c a a g g g ~g2 |
  r8 d' d d d c c a a g g g ~g2 |
  %27
  r2 r4 c, a'2. g4 bf2. a4 a4. g8 g2 r2 r4 f4 g2. f4 |
  a2. g4 f1 r2 r4 c4 a'2. g4 bf2. a4 a4. g8 g2 r2 r4 f g2. f4 a2. g4 |
  f1 R1 c4 d f4. f8 a a a16 g8 f16 ~f2 d4 e f4. d8 f f f16 d8 c16 ~c2 |
  c4 d f4. f8 a a a16 g8 f16 ~f4. f8 |
  a8 a bf a a16 g ~g8 ~g f16 ~f g4 f a4. g8 f1~ f 
  
  
}
bari = 
\relative c' {
  \global
  % Music follows here.
  \partial 2 r2
  \repeat volta 4 {
    c4 bf a4. a8 c8. [c16] c16 [bf8 a16] ~a2 d4 c bf4. d8 |
    bf bf bf16 bf8 c16 ~c2 c4 bf a4. a8 c c cs16 cs8 a16 ~a4. bf8 |
    c8c d c c16 c ~c8 ~c8 bf16 bf c8 bf c16 bf8. a2 |
  }
  r8 a a a a a a a f f f f ~f2  |
  r8 a a a a a a a f f f f ~f2 |
  r8 d' d d d d d d c c c c ~c2 |
  r8 d d d d d d d c c c c ~c2 |
  r8 e e e e d c bf a a a a ~a2 |
  r8 e' e e e d c bf a a a a ~a2 |
  r8 f' f f f f f f c c c c ~c2 |
  r8 f f f f f f f c c c c ~c2 |
  r2 r4 c c2. c4 d2. c4 c4. c8 c2 |
  r2 r4 a bf2. a4 bf2. c4 a1 |
  r2 r4 c c2. c4 d2. c4 c4. c8 c2 |
  r2 r4 a bf2. a4 bf2. c4 a1 R1 |
  c4 bf a4. a8 c c c16 bf8 a16 ~a2 d4 c bf4. d8 bf bf bf16 bf8 c16 ~c2 |
  c4 bf a4. a8 c c cs16 cs8 a16 ~a4. bf8 |
  c c d c c16 c ~c8 ~c bf16 ~bf c4 bf c4. bf8 a1~ a |
  \bar "|."
}

bass =   
\relative c {
  \global
  \partial 2 r2
  \repeat volta 4 {
    f4 f f f c c r8 f, g a
    d4 g, bf d d2 r8 f8 d8 c  |
    c4 bf a2 c4 cs d df c2 c e4 d a r4
  }
}
verseOne = \lyricmode {
  % Lyrics follow here.
  \set stanza = #"1."
  All my life I've sung a jeal -- ous song.
  All my life I've sung a jeal -- ous song.
  All my life I've sung a jeal -- ous song.
  The ev -- il peo -- ple flour -- ish and the good folks suf -- fer wrong.
}
verseTwo = \lyricmode {
  \set stanza = #"2."
  All my life I've walked the way of God.
  All my life I've walked the way of God.
  All my life I've walked the way of God,
  But walk -- ing got me no -- where and I thought it nev -- er would.
}
verseThree = \lyricmode {
  \set stanza = #"3."
  All my life I've watched the wick -- ed rule.
  All my life I've watched the wick -- ed rule.
  All my life I've watched the wick -- ed rule.
  They look down on the god -- ly and they call us sil -- ly fools.
}
verseFour = \lyricmode {
  \set stanza = #"4."
  All my life I've tried to rea -- son why.
  All my life I've tried to rea -- son why.
  All my life I've tried to rea -- son why.
  I could not find the ans -- wers and I lost the will to try.
}
finale = \lyricmode {
  \dropLyrics
  Un -- til I came in -- to your  \raiseLyrics pres -- ence, O God,
  My eyes were o -- pened and my vis -- ion was clear.
  The life I en -- vied is a cas -- tle of sand,
  Fall -- ing to noth -- ing when a strong wind comes near.
  A dream that on -- ly keeps its pow'r in the night,
  That fades and leaves us at the first light of day.
  My life turned up -- side down and now I can see,
  There is a treas -- ure that will not fade a -- way.
  You draw me near to you, O God.
  You hold me in your hand.
  You treat me as an hon -- oured one.
  With your be -- loved I stand.
  Now my song is al -- to -- geth -- er new.
  Now my song is al -- to -- geth -- er new.
  Now my song is al -- to -- geth -- er new.
  For God has changed my vi -- sion as on -- ly God could do.
}

harmonies = \chordmode {
  \repeat volta 4 {
  f1 f f2 bf bf2 f f1 f2 f4 a4:7 d:m bf:m/df f2/c c2 c4 bf f2 }
d2:m f/c bf1 d2:m f/c bf1 
g1:m f2/c c g1:m f2/c c 
a1:m d:m a:m d2:m f/c 
bf1 f8/c c2.. bf2 f2/a f8/c c2.. c2:4 c
f2. c4/f bf2./f f4 f4./c c2.. r2. f4/a
bf2.:6 f4/a bf2.:maj7 c4 f1 bf2./f a4
f2. c4/f bf2./f f4 f4./c c2.. r2. f4/a
bf2.:6 f4/a bf2.:maj7 c4 f1 bf2./f a4
f4 bf/f f bf/f f bf/f f2
bf4 

}
right = 
\relative c' {
  \global
  \autoBeamOn
  \partial 2 r2
  \repeat volta 4 {
    <c a f>4 <d bf g> <f c a>4. r8 |
    <f c>2 r2 <d bf f>4 <e c g> <f d bf>4. r8 |
    <d bf>2 r2 <c a f>4 <d bf g> <f c a>4.r8 |
    <a f c>4 <a e cs> <f d a> <f df bf> |
    <f c>2 <e c> <g e c>4 <f d bf>  <f c a> r4
  }
  <d a f>4 <f d a> <f c a> <e c a> |
  <bf f> q q q <d a f> <d a> <c a> q |
  <bf f> q q q <g'd bf> <g d>q <d bf> |
  
  <f c> q <e c> q <g d bf> <g d> q q |
  <a f c>8 <g e c> <f d c> <g e~ c~> <e c>4 q |
  e2 e <d a>4. q8~ q2 |
  e2 e <d a>4. q8~ q4 <f c a> |
  <bf f d>2 <bf f>4 q <a f c>8 <g e c> q q~ q c, e g |
  <bf f d>4 <bf f>4 <a f> <c a f>8 <a f c> q <g e> <f d> <g e c>~ q2 |
  %25
  \bar "||"
  <g f c>2~ <g e c>4 r4 c,2 c8 f <g e c>4 |
  d2 d8 f <a f c>4 q4. <g e c>8 q4 c,8 e |
  f c e c d bf a c |
  bf2 bf8 d <f c a>4 bf,2 bf8 d <g e c>4 |
  a,4. a8 c a f' c <f d bf>4. bf,8 d bf <c a f>4 |
  %34
  c2 c8 f <g e c>4 d2 d8 f <a f c>4 q4. <g e c>8 q4 c,8 e |
  f8 c e c d bf a c bf2 bf8 d <f c a>4 |
  bf,2 bf8 d <g e c>4 a4. a8 c a <f c a>4 |
  <f d bf>4. bf,8 d bf <f' d bf>4 |
  <c a f>4 <d bf f> <c a> <d bf> <f c> <d bf> <c a> q |
  <d bf>4 <e c> <f d> <e c> <d bf> q <c a f> q8 <d bf f> |
  <c a f>4 <d bf f> <f c a> <d bf> |
  <f c> <e cs> <d a>2 <f c> <e c> |
  <e c>2 <f c>4 <e c> |
  r8 a,8 c f bf, d f d <c a>4 <d bf> <c a>2
  
}

left = 
\relative c {
  \global
  \autoBeamOn
  \clef "bass"
  \partial 2 d8 c a g 
  \repeat volta 4 {
    f4. f8 f~ f16 c' f f8. f,2 r8 f g a |
    bf4. bf8 bf~ bf16 f bf,16 bf8. |
    bf'4~ bf8. f16~ f8 f' d c |
    f,4. f8 f~ f16 c' f16 f8. |
    f,4 e d df c4. c8 c4 c c' bf f8 \acciaccatura d'8 d c16 a g8
  }
  d'4 d c c bf bf bf bf d d c c bf bf bf bf g g g g |
  c c c c g g g g c c c c |
  a8 e' a4 a,8 e' a4 |
  d,,8 a' d4 d,8 a' d f |
  a,8 e' a4 a,8 e' a4  d,,8 a' d4 d,8 a' c, a' |
  bf,4. bf8 bf2 c4. c8 c2 <bf' bf,>2 <a a,> <c c,>1 q |
  f,8 c' f a~ a4 f  f,8 c' f a~ a4 f |
  <a c,>4. <g c,>8 q g4. a4 g g f |
  bf,8 d f g~ g4 <f a,> bf,8 d f a~ a4 <g c,> |
  f,8 c' f2. f,8 d' f2. 
  f,8 c' f a~ a4 f  f,8 c' f a~ a4 f |
  <a c,>4. <g c,>8 q g4. a4 g g f |
  bf,8 d f g~ g4 <f a,> bf,8 d f a~ a4 <g c,> |
  f,8 c' f2. f,8 d' f2. |
  <c f,>4 <d f,> <c f,> <d f,> <c f,> <d f,> <c f,> <f a,> |
  <f bf,> <g bf,> <f bf,> <g bf,> <f bf,>2 <c f,> |
  <c f,>4 <d f,> <c f,> <d f,> f, a d2 |
  <a' c,>2 <g c,> q <a c,>4 <g c,> <f f,>1~ q
}

\score {
  % \unfoldRepeats 
  <<
    \new ChoirStaff <<
      \new Lyrics = "tenor" \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }
      \accidentalStyle StaffGroup.voice
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = \markup \center-column { "Tenor" "Lead" }
        shortInstrumentName = \markup \center-column { "Ten" "Ld" }
      } 
      <<
        \clef "bass"
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "lead" { \voiceTwo \lead }
      >>
      \new Lyrics = "lead" 
      \new Lyrics = "bari" \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
      } 
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Baritone" "Bass" }
        shortInstrumentName = \markup \center-column { "Bar" "Bss" }
      } <<
        \clef bass
        \new Voice = "bari" { \voiceOne \bari }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
      %{  \new Lyrics = "bass"
          \context Lyrics = "tenor" \lyricsto "tenor" \verse
          \context Lyrics = "lead" \lyricsto "lead" \verseLead
          \context Lyrics = "bari" \lyricsto "bari" \verseBari
          \context Lyrics = "bass" \lyricsto "bass" \verseBass
      %}
    >>
    
    
    \new PianoStaff \with { 
      midiInstrument = "acoustic grand"
    }
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \harmonies
      }
      \new Staff = "right" { \right }
      \new Staff = "left" { \left }
    >>
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


%{
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
  %     \addlyrics \verse
  
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
  instrumentName = \markup \center-column { "Lead" }
  shortInstrumentName = \markup \center-column { "Ld" }
  }
  { \clef "treble_8"  \lead }
  %     \addlyrics \verseLead
  
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
  %     \addlyrics \verseBari
  
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
  %      \addlyrics \verseBass
  
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
  
  
  
  %{
  convert-ly (GNU LilyPond) 2.17.10  convert-ly: Processing `'...
  Applying conversion: 2.15.39, 2.15.40, 2.15.42, 2.15.43, 2.16.0,
  2.17.0, 2.17.4, 2.17.5, 2.17.6
%}
%}

%{
convert-ly (GNU LilyPond) 2.17.17  convert-ly: Processing `'...
Applying conversion: 2.17.15
%}
