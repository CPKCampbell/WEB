\version "2.19.65"
\language "english"

\header {
  title = "Givin’ My Life To Jesus"
  subtitle = "He’s My Lord"
  composer = "C. Campbell/Folk Melody"
  arranger = ""
  poet = "Campbell"
  tagline = "Engraved by CPKC.Music"
}

\paper {
  #(set-paper-size "letter")
  %  annotate-spacing = ##t
  system-system-spacing.basic-distance = #15
}

#(set-global-staff-size 18)

\layout {
  \context {
    \Score
    %  \remove "Bar_number_engraver"
  }
}

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
}

soprano = \relative c'' {
  \global
  \repeat volta 3 {
    \tuplet 3/2 { g4 g4. g8 } g4.  b8 a4 g  d8 (e ) fs4   g1~ g
    \tuplet 3/2 { b4 b4. b8 } b4. d8 c4 b g4 b b1~ b
    b4 b b c d b g d4 e8 g4. g4 a bf8 a4. g2
    \tuplet 3/2 { b4 b4. b8 } b4.  c8 b4  a g4 fs
  }
  \alternative {
    { g1~ g }
    {g1~ g }
  }
  %
  \tuplet 3/2 { g4 g4. g8 } g4.  b8 a4 g \tuplet 3/2 { d4 (e )fs }  g1
  \tuplet 3/2 { b4 b4. b8 } b4. d8 c4 b g4 b b1
  b8 b4 g8 fs2
  d'4 b c b b d c8 (b4.) b4 b b2
  \tuplet 3/2 { b4 b b } a4.  r8^\markup{ \smaller \italic "Molto rit. e dim." } b4  a g4 fs g1
}

alto = \relative c' {
  \global
  \repeat volta 3 {
    R1*2 r4 d2 e4  d1
    R1*2 r4 d2 e4 d1
    b'4 g g  r g g g r4
    g4 g g fs bf bf bf2
    R1 r2  g4. fs8
  }
  \alternative {
    { g1~ g}
    { g1 r4 r8 d d4 e }
  }
  %vs 4
  g4 8 8 8 8 4 2 a8 8 8 b a4 g b a g e d b d4. e8 g4 e g b a2 g8 4 e8 d2
  %
  a'2 a4 g b d g,2 b4 a g2 g8 g~ g4 d4. r8
  g4 g g g g1
}

verseOne = \lyricmode {
  \set stanza = "1."
  Giv -- in' my life to Je -- sus,
  He's my Lord.
  Giv -- in' my life to Je -- sus,
  He's my Lord.
  Giv -- in' up my sin -- ful ways,
  and liv -- in' as the Bi -- ble says
  Giv -- in' my life to Je -- sus,
  He's my Lord.
  %
  Lord.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Go -- _  in’ up that glo -- ry road with Him.
  Go -- _  in’ up that glo -- ry road with Him.
  And we're walk -- in’ hand in hand,
  He’ll lead me to that pro -- mised land.
  Go -- _  in’ up that glo -- ry road with Him.
  Him.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Gon -- na tell all my friends the Gos -- pel news:
  Gon -- na tell all my friends the Gos -- pel news:
  Let them know that they can choose,
  And that will chase a -- way the blues.
  Gon -- na tell all my friends the Gos -- pel news.
  news.
  %
  \set stanza = "4."
  Gon -- _  na cross that Riv -- er Jor -- dan soon;
  Gon -- _  na cross that Riv -- er Jor -- dan soon;
  show me the way!
  Sis -- ters, broth -- ers come on down!
  Come on down, come _ on down,
  come on down to pray.
}

verseFour = \lyricmode {


}


verseAltoOne = \lyricmode {
  He's my Lord.
  He's my Lord.
  Giv -- in' up sin -- ful ways
  liv -- in' as the Bi -- ble says
  He's my Lord
}

verseAltoTwo = \lyricmode {
  side by side
  side by side
  and we'll walk hand in hand
  lead me to that Pro -- mised Land
  road with Him
}

verseAltoThree = \lyricmode {
  Gos -- pel news
  Gos -- pel news
  Let them know
  they can choose
  that will chase a -- way the blues.
  Gos -- pel news.
  news.
  % vs 4
  As I went down in the riv -- er to pray,
  stud -- y -- in’ a -- bout that good old way,
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.
  O, Moth -- ers, let’s go down,  let’s go down,
  come on down.
  come on down to pray.
}

verseAltoFour = \lyricmode {

}
rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 120 4)
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
%  \unfoldRepeats{
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "I"
      shortInstrumentName = "I"
    } \new Voice = "soprano" \soprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "II"
      shortInstrumentName = "II"
    } \new Voice = "alto" \alto
    \new Lyrics \with {
      %    \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \verseAltoOne
    \new Lyrics \with {
      %    \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \verseAltoTwo
    \new Lyrics \with {
      %    \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \verseAltoThree
    \new Lyrics \with {
      %    \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \verseAltoFour
  >>
%  }
  \layout { }
  \midi {
    \tempo 4=120

  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verseOne
    \midi { }
  }
}

