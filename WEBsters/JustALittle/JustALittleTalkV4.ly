\version "2.21.0"
\language "english"

\header {
  title = "Just A Little Talk With Jesus"
  instrument = "Mens' Quartet"
  composer = "Cleavant Derricks"
  poet = "C.D."
  arranger = "arr. J. Peterson/C. Campbell"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
  line-width = 7.5\in
%  ragged-bottom = ##f
  ragged-right = ##f
  ragged-last-bottom = ##t
  % systems-per-page = #3
}

dropLyrics = {
  \override LyricText.extra-offset = #'(0 . -3.5)
  \override LyricHyphen.extra-offset = #'(0 . -3.5)
  \override LyricExtender.extra-offset = #'(0 . -3.5)
  \override StanzaNumber.extra-offset = #'(0 . -3.5)
}

raiseLyrics = {
  \revert LyricText.extra-offset
  \revert LyricHyphen.extra-offset
  \revert LyricExtender.extra-offset
  \revert StanzaNumber.extra-offset
}

global = {
  \key g \major
  \partial 8
  \time 4/4
  %  \autoBeamOff
  \tempo 4 = 100
}

%lead
lead = \relative c {
  \global
  \dynamicUp
  % Music follows here.

  \repeat volta 3 {
    d8 g g g g b4. b8 a g g e d4. d8 |
    g16 g g g  g8 a b b a g |
    a2~ a4. d,8 g g g g b4. b8 a g g e d4. d8 |
    g16 g g g g8 a b b a a g2~ g8 r8 r4 |
    % refrain
    g16 g g g  g8 g e d r4 |
    g16 g g g  g8 g e d r4 |
    a'8 a a a a r8 r4 b8 b b b b r8 r4 |
    g16 g g g g8 g g g r4 |
  }
  \alternative {
    { g16 g g g g8 g g g r4 |
    g16 g g g g8 a b b a a g2. r8 }
      { g16 g g g g8 g g g r4 |
    R1 g2. r8 }
  }
}
%tenor
tenor = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

  \repeat volta 3 {
    b8 b b b b d4. ds8 e e e c b4. b8 |
    b16 b b b d8 d d d d cs |
    d4 ( cs c4.) c8 b b b b d4. ds8 e e e c b4. b8 |
    b16 b b b b8 c d d c c b4 (c b8) \bar "||"  r8^\markup { \italic \tiny "Molto rit. 3rd time " } r4
    % refrain
    b16 b b b b8 b c b r4
    d16 d d d d8 d c b r4
    d8 d cs cs d r8 r4 d8 g fs e d r8 r4
  }
  \alternative {
   { e16 e e e e8 e e e r4 d16 d d d  d8 d e d r4
    e16 e e e e8 fs g g fs fs d4 ( e d ) r8 }
    { e16 e e e e8 e e e r4
    R1  e2 d4 r8 }
  }
}
%baritone
bari = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

  \repeat volta 3 {
    g8 d d d d g4. g8 c c c g g4. g8 |
    d16 d d d g8 fs g g a a fs4 (g fs4.) fs8 |
    d8 d d d g4. g8 c c c g g4. g8 |
    g16 g g g g8 g g g fs fs d4 (e d8) \bar "||" r8 r4
    %refrain
    d16 d d d d8 d g g r4 b16 b b b b8 b a g r4 |
    fs8 fs g g fs r8 r4 g8 g g g g r8 r4 |
  }
  \alternative {
    {c16 c c c c8 c c c r4 b16 b b b b8 b c b r4
    b16 b b b b8 c d d c c b4  ( c b ) r8 }
     {c16 c c c c8 c c c r4
    R1   c2 b4 r8 }
  }
  \bar "||"
}

bass = \relative c {
  \global
  \dynamicUp
  % Music follows here.

  \repeat volta 3 {
    g8 g g g g g g a b8 c c c c g4. g8 |
    g16 g g g b8 d g g fs e d4 ( e d4.) d8 |
    g, g g g g  g a b8 c c c c g4. d'8 |
    e16 e e e e8 ef d d d, d g2~ g8 g^\markup { \italic \tiny "Molto rit. 3rd time " } b d
    % refrain
    g,16 g g g g8 g g g b d |
    g,16 g g g g8 g g g b g
    d'8 d e e d d e fs g e d b g g a b |
    c16 c c c c8 c c c b a |
  }
  \alternative {
    {  g16 g g g g8 g g g b d |
       e16 e e e e8 ef d d d, d g2. r8}
    {g16 g g g g8 g g g g fs |
     e16 e e e e8 ef d d d d g2. r8 }
  }

}


verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  I once was lost in sin, but Je -- sus took me in;
  And then a lit -- tle light from Hea -- ven filled my soul
  It filled my soul with love, and wrote my name a -- bove,
  And just a lit -- tle talk with Je -- sus makes me whole.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Some times my path seems drear, with -- out a ray of cheer;
  And just a lit -- tle cloud of doubt creeps o’er the day.
  The mists of sin may rise, and hide the sun -- lit skies,
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
\dropLyrics
  have a lit -- tle talk with Je -- sus
  tell Him all a -- bout our trou -- bles
  hear our faint -- est cry
  an -- swer by and by.
  feel a lit -- tle pray'r wheel turn -- ing
  know a lit -- tle fire is burn -- ing
  find a lit -- tle talk with Je -- sus
  makes it right.

   know a lit -- tle fire is burn -- ing

  all right.
}

bassRefrain = \lyricmode {
  \repeat unfold 7 { \skip 1 }
\markup { \column { "in sin" "is drear" "and fears" } }
  \repeat unfold 25 { \skip 1 }
  \markup { \column { "with love" "may rise" "in pray’er" } }
             \repeat unfold 18 { \skip 1 }
  Now let us
  \repeat unfold 8 { \skip 1 }
  let us
  \repeat unfold 8 { \skip 1 }
  He will
  \repeat unfold 5 { \skip 1 }
  and He will
  \repeat unfold 5 { \skip 1 }
  Now when you
  \repeat unfold 8 { \skip 1 }
  and you
  \repeat unfold 8 { \skip 1 }
  You will
  \repeat unfold 8 { \skip 1 }
  makes it right.
   \repeat unfold 8 { \skip 1 }
    You will find a lit -- tle talk with Je -- sus
     makes it right.
}
rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "lead" \new Voice = "lead" { \lead }
     \new Staff = "bari" \new Voice = "bari" { \bari }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.midiPanPosition = #-1.0
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
       \set Staff.midiPanPosition = #1.0
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
    \new Staff = "upper" \with {
      midiInstrument = "tenor sax"
      instrumentName = \markup \center-column { "Tenor" "Lead" }
      %  shortInstrumentName = \markup \center-column { "Ten" "Ld" }
    } <<
      \clef "treble_8"
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
      \new Lyrics \with { alignAboveContext =  #"lower" }  \lyricsto "tenor"  { \verseOne  }
      \new Lyrics \with {  alignAboveContext =  #"lower" }  \lyricsto "tenor"  { \verseTwo \refrain }
      \new Lyrics \with {  alignAboveContext =  #"lower" }  \lyricsto "tenor"  { \verseThree  }

    >>

    \new Staff \with {
      midiInstrument = "baritone sax"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
      %     shortInstrumentName = \markup \center-column { "Bar" "Bss" }
    } <<
      \clef bass
      \new Voice = "bari" { \voiceOne \bari }
      \new Voice = "bass" { \voiceTwo \bass }
      \new Lyrics   \lyricsto bass  {  \bassRefrain  }
    >>


  >>
  \layout {
    #(layout-set-staff-size 18)
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
    \rehearsalMidi "bass" "trumpet" \verseOne
    \midi {
    }
  }
}






