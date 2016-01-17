\version "2.17.16"
\language "english"

\header {
  title = "Born Where The Shadows Lie"
  composer = "Keith & Kristyn Getty"
  arranger = "Larry Shackley"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  \time 4/4
  \tempo "With quiet intensity" 4=80
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

soprano = \relative c' {
  \global
  s1*8 r4 e4 g4. c,8 e4. d8 d2~ d4 d g4. b,8 |
  d4. c8 e4 g c r8 c8 c4. c8 b4. e,8 e2~ e4 a g4. c,8 d1 |
  r4 e g4. c,8 e4. d8 d2 |
  r4 d g4. b,8 d4. c8  e4 g c r8 c c4. c8 |
  b4. e,8 e2 r4 a a4. e8 g1 |
  % 25
  r4 g d' e e4. d8 d2 r4 b c d a4. g8 c4 r8 d |
  d4. e8 e4. c8 e4. (f8) f2 r2 c4. d8 d1 |
  %33
  r4 g, d' e e4. d8 d2 r4 d f4. e8 d4. e8 c2 |
  r4 c b a a4. g8 c,4. f8 d2.~ d8 c c1 |
  % 41 CD cue 4
  R1*10 r4 e4 g4. c,8 e4. d8 d2 r4 d g4. b,8 d4. c8 e4 g |
  c4. c8 c4. c8 b4. e,8 e2 r4 a a4. e8 g1 |
  r4 g d' e e4. d8 d2 r4 b c d a4. g8 c4 r8 d8 |
  d4. e8 e4. c8 e4. (f8) f2 r2 c4. d8 d1 |
  %67
  r4 g,4 d' e e4. d8 d2 r4 d f4. e8 |
  d4. e8 c2 r2 r4 b8 (c) b4. a8 a2 |
  R1*4 r4 e g e e4. d8 d2 r4 e g c |
  d2 d <e c>1~ q

}

lvoice = \relative c' {
  \global
  s1*8 r4 e4 g4. c,8 e4. d8 d2~ d4 d g4. b,8 |
  d4. c8 e4 g c r8 c8 c4. c8 b4. e,8 e2~ e4 a g4. c,8 d1 |
  r4 e g4. c,8 e4. d8 d2 |
  r4 d g4. b,8 d4. c8  e4 g c r8 c c4. c8 |
  b4. e,8 e2 r4 a a4. e8 g1 |
  % 25
  r4 g d' e e4. d8 d2 r4 b c d a4. g8 c4 r8 d |
  d4. e8 e4. c8 e4. (f8) f2 r2 c4. d8 d1 |
  %33
  r4 g, d' e e4. d8 d2 r4 d f4. e8 d4. e8 c2 |
  r4 c b a a4. g8 c,4. f8 d2.~ d8 c c1 |
  % 41 CD cue 4
  R1*10 r4 e4 g4. c,8 e4. d8 d2 r4 d g4. b,8 d4. c8 e4 g |
  c4. c8 c4. c8 b4. e,8 e2 r4 a a4. e8 g1 |
  r4 g d' e e4. d8 d2 r4 b c d a4. g8 c4 r8 d8 |
  d4. e8 e4. c8 e4. (f8) f2 r2 c4. d8 d1 |
  %67
  r4 g,4 d' e e4. d8 d2 r4 d f4. e8 |
  d4. e8 c2 r2 r4 b8 (c) b4. a8 a2 |
  R1*4 r4 e g e e4. d8 d2 r4 e g c |
  d2 d <e c>1~ q

}
alto = \relative c' {
  \global
  s1*16 r4 e g4. c,8 e4. d8 d2 |
  r4 d g4. b,8 d4. c8 c4 d e r8 e a4. e8 |
  g4. e8 e2 r4 c c4. c8 c2 (b) |
  r4 g'g g a4. a8 a2 r4 g f f f4. f8 g4 r8 g |
  g4. g8 g4. g8 g4. (a8) a2 r2 f4. f8 f1 |
  r4 g g g a4. a8 a2 r4 b b4. b8 b4. c8 a2 |
  r4 f f f d4. d8 c4. c8 c2 (b4.) c8 c1 |
  %41
  R1*10 r4 e4 g4. c,8 e4. d8 d2 r4 d g4. b,8 d4. c8 e4 d |
  e4. e8 e4. e8 e4. e8 e2 r4 f f4. c8 d1 |
  r4 g g g a4. a8 a2 r4 g f f f4. f8 g4 r8 g |
  g4. g8 g4. g8 g4. (a8) a2 r2 f4. f8 f1 |
  %67
  r4 g g g a4. a8 a2 r4 b b4. b8 b4. c8 a4 a |
  a4. g8 g2 r4 g f f e4. e8 e2 r4 c'b a a4. g8 c,4. f8 |
  d2.~ d8 c c1~ c2 r4 c c2. e4 <fs d>2 q <g e>1~ q

}

tenor = \relative c' {
  \global
  s1*24 r4 g d' c c4. d8 d2 r4 d a b c4. d8 e4 r8 d |
  d4. c8 c4. c8 c4. (d8) d2 r2 c4. c8 c2 (b) |
  r4 g d' c c4. d8 d2 r4 d d4. e8 e4. e8 e2 |
  r4 c c c b4. b8 a4. a8 g2.~ g8 c c1 |
  %41
  R1*2 r4 e, g4. c,8 e4. d8 d2 r4 d g4. b,8 d4. c8 e4 g |
  c4.  c8 c4. c8 b4. e,8 e2 r4 a4 g4. c,8 d1 |
  r4 e g4. c,8 e4. d8 d2 r4 d g4. b,8 d4. c8 e4 g |
  a4.  c8 c4. a8 b4. b8 b2 r4 c c4. a8 c2 (b) |
  r4 g d' c c4. d8 d2 r4 d a b c4. d8 e4 r8 d |
  d4. c8 c4. c8 c4. (d8) d2 r2 c4. c8 c2 (b) |
  %67
  r4 g d' c c4. d8 d2 r4 d d4. e8 e4. e8 e4 e e4. e8 e2 |
  r4 c c c d4. c8 c2 R1*3 r4 c e c a4. a8 a2 |
  r4 c g g a2 a <c g>1~ q

}

bass = \relative c {
  \global
  s1*24 r4 g' b c f,4. f8 f2 r4 g g g c4. c8 c4 r8 b |
  b4. a8 a4. a8 d,2 d r2 a'4. a8 g1 |
  r4 g b c f,4. f8 f2 r4 g gs4. gs8 a4. a8 a2 |
  r4 a d, d e4. e8 a4. d,8 g2.~ g8 c,8 c1 |
  %41
  R1*2 r4 e g4. c,8 e4. d8 d2 r4 d g4. b,8 d4. c8 e4 g |
  e4. e8 a4. e8 g4. e8 e2 r4 a g4. c,8 d1 |
  r4 e g4. c,8 e4. d8 d2 r4 d g4. b,8 d4. c8 e4 b |
  a4. a'8 a4. a8 g4. g8 g2 r4 f d4. f8 g1 |
  r4 g b c f,4.  f8 f2 r4 g g g c4. c8 c4 r8 b |
  b4. a8 a4. a8 d,2 d r2 a'4. a8 g1 |
  r4 g b c f,4. f8 f2 r4 g gs4. gs8 a4. a8 a4 c b4. b8 b2 |
  r4 a a a g4. g8 g2 R1*3 r4 g c g fs4.  fs8 fs2 |
  r4 g e c c2 c c1~ c

}

words = \lyricmode {
  Born where the sha -- dows lie __
  to an -- swer ev -- 'ry cry of man,
  this Child who formed all life __ now breathes our breath.
  Born where the Fa -- ther loved,
  born help -- less to a moth -- er's arms;
  she smoothed the tears up -- on the face of God __
  Born now with man to dwell,
  our Lord Im -- man -- u -- el;
  come see the King, the Christ Child,
  born to us __
  Born now with man to dwell,
  our Lord Im -- man -- u -- el;
  My soul can fi -- n'lly know the God __ of heav'n.
  %{  Born with a road a -- head,
      a -- lone these blame -- less feet would tread
      the path God chose to walk be -- fore all time.
  %}
  Born hold -- ing life and death,
  born bear -- ing heav -- en's wealth of peace
  that fills where none can fill,
  our Liv -- ing Stream.
  Born now with man to dwell,
  our Lord Im -- man -- u -- el;
  come see the King, the Christ Child,
  born to us __
  Born now with man to dwell,
  our Lord Im -- man -- u -- el, Im -- man -- u -- el;
  %  My soul can fi -- n'lly know the god __ of heav'n.
  Born where the sha -- dows lie
  our Lord Im -- man -- u -- el __
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
        \set Score.midiInstrument = "choir aahs"
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 80 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument =  "bright acoustic" %$midiInstrument
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

choirPart = \new ChoirStaff <<
  \new Staff

  \with {
    printPartCombineTexts = ##f
    midiInstrument = "violin"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  }

  <<
    \new Voice \partcombine \soprano \alto
    \new NullVoice = "lvoice" \lvoice
    \new Lyrics \lyricsto "lvoice" \words
  >>

  \new Staff  \with {
    printPartCombineTexts = ##f
    midiInstrument = "cello"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \partcombine \tenor \bass
  >>

>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
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
  \layout {
    \context {
      % Frenched staves
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi { }
}

% Rehearsal MIDI files:
\book { % soprano
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "bright acoustic" \words
    \midi { }
  }
}

\book { % alto
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "clarinet" \words
    \midi { }
  }
}

\book { % tenor
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "cello" \words
    \midi { }
  }
}

\book { % bass
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "contrabass" \words
    \midi { }
  }
}



%{
  convert-ly (GNU LilyPond) 2.17.27  convert-ly: Processing `'...
  Applying conversion:     The document has not been changed.
%}
