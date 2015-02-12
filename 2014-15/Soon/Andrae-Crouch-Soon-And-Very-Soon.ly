\version "2.19.16"
\language "english"

\header {
  title = "Soon And Very Soon"
  composer = "Andrae Crouch"
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
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  \override Score.BarNumber.font-size = #2
  \override Score.BarNumber.stencil = #(make-stencil-circler 0.1 0.25 ly:text-interface::print)
}
dyn = {
  s1*5 s1 \mp s1*10
  %17
  s2. s8\< s8 s1\mf  s2\> s4 s4\mp
  %20
  s1*4 s4\mf s2. s1*10
  %35
  s2. s4\< s4.\! s8\> s4\!  s4 s4.\< s8\> s4\!
  s1 s4 s4\mp s4 s2 s1 s4 s4\mf s2 s1*4
  %46
  s4\f s2. s1*13
  %60
  s4. s8\> s4 s8\! s8\mf s1
  s1\mf s1*10 s2. s4\f
  s1*3 s4 s4\p s2 s1 s4 s2.\f s1*3 s1 s4\mp s4 s8^> s4. s1
}

global = {
  \key f \major
  \time 4/4
  \tempo "Steady tempo"
 }


soprano = \relative c' {
  \global
  R1*4 R1  c4  c4  c4 bf8 a8~ a2 d4 d4  c4. c8 c4 bf8 a8~ a2. r4
  %10
  bf4 bf4 bf4 a8 g~ g2 d'4 d4 c4. c8 c4 bf8 a8~ a2. r4
  %14
  c4 c4  c4  bf8 a8~ a2 d4 d4  c4.  c8 c4  bf8 a8~ a2 r4 c8 c
  ef4.  d8~ d4 d8 d c4. bf8~  bf r8 df4  c4.  c8 c4 bf8 a~ a1
  R1*2
  %24
  a'4  a a g8 f~ f2 bf4 bf  a4.  a8 a4 g8 f f2. r4 g4 g g f8 e~ e2 bf'4 bf
  %30
  a4. a8 a4 g8 f~ f2. r4 a4 a a g8 f~ f2 bf4 bf
  %34
  a4. a8 a4 g8 f~ f2 r4 a8 a c4. bf8~ bf4 \breathe bf8 bf a4. g8~ g4 \breathe bf4
  %38
  a4. a8 a4 g8 f~ f4 \breathe c'4 ( a) f4 f2 ( g) f4 \breathe c'4 ( a) f
  %42
  f1 ( g ) f2. r4
  R1  \key g \major
  %46
  b4 b b a8 g~ g2 c4 c b4. b8 b4 a8 g~ g2. r4
  %50
  a4 a a g8 fs~ fs2 c'4 c b4. b8 b4 a8 g~ g2. r4
  %54
  b4 b b a8 g~ g2 c4 c b4. b8 b4 a8 g~ g2 r4 b8 b
  %58
  d4. c8~ c4 \breathe c8 c b4. a8~ a4 \breathe c4 b4. b8 b4 a8 g~ g2. r4
  %62
  b4 b b a8 g~ g2 c4 c b4. b8 b4 a8 g~ g2. r4
  %66
  a4 a a g8 fs~ fs2 c'4 c b4. b8 b4 a8 g~ g2. r4
  %70
  b4 b b a8 g~ g2 c4 c b4. b8 b4 a8 g~ g2 r4 b8 b
  %74
  d4. c8~ c4 \breathe c8 c b4. a8~ a4 \breathe c4
  b4. b8 b4 a8 g~ g4 \breathe d'4 ( b) g g2 ( a) g4 \breathe d'4 (b) g
  %80
  g1 ( a ) g R1 g4 d d8 c4. \breathe b1\fermata
  \bar "||"
}

alto = \relative c' {
  \global
  R1*4 R1  c4  c4  c4 bf8 a8~ a2 d4 d4  c4. c8 c4 bf8 a8~ a2. r4
  %10
  bf4 bf4 bf4 a8 g~ g2 d'4 d4 c4. c8 c4 bf8 a8~ a2. r4
  %14
  c4 c4  c4  bf8 a8~ a2 d4 d4  c4.  c8 c4  bf8 a8~ a2 r4 c8 c
  ef4.  d8~ d4 d8 d c4. bf8~  bf r8 df4  c4.  c8 c4 bf8 a~ a1
  R1*2
  %24
  f'4  f   f  d8 c~ c2 f4 f  f4. f8 f4 d8 c~ c2. r4 e4 e d d8 c~ c2 e4 e
  %30
  f4.  f8 f4 d8 c~ c2. r4 f4 f f d8 c~ c2 f4 f f4. f8 f4 e8 d~ d2 r4 f8 f
  f4. f8~ f4 \breathe f8 f f4. f8~ f4 \breathe f4 f4. f8 e4 d8 c~ c4  <a'  f >4  <f c > <c a>
  <d b>2 ( <e bf>) <c a>4 \breathe a'4 ( f ) c d1 ( e) c2. r4 R1
  %46
  \key g \major
  g'4 g g e8 d~ d2 g4 g g4. g8 g4 e8 d~ d2. r4
  %50
  fs4 fs e e8 d~ d2 fs4 fs g4. g8 g4 e8 d~ d2. r4
  g4 g g e8 d~ d2 g4 g g4. g8 g4 fs8 e~ e2 r4 g8 g
  %58?
  g4. g8~ g4 \breathe g8 g g4. g8~ g4 \breathe g4
  %60
  g4. g8 fs4 e8 d~ d2. r4 g g g e8 d~ d2 g4 g g4. g8 g4 e8 d~ d2. r4
  %66
  fs4 fs e e8 d~ d2 fs4 fs g4. g8 g4 e8 d~ d2. r4
  %70
  g4 g g e8 d~ d2 g4 g g4. g8 fs4 fs8 e~ e2 r4 b'8 b
  %74
  d4. c8~ c4 \breathe c8 c b4.  a8~ a4 \breathe g4
  g4. g8 fs4  e8 d~ d4 \breathe <b' g>4 ( < g d> ) <d b>
  %78
  <e cs>2 ( <fs c> ) <d b>4 \breathe b' ( g) d e1 ( fs )
  %82
  d1 R1 b4 b bf8 a4. \breathe g1 \fermata
  \bar "||"
}

tenor = \relative c' {
  \global
  R1*5
  %6
  a4 a a g8 f~ f2 bf4 bf a4. a8 a4 g8 f~ f2. r4
  %10
  g4 g g f8 e~ e2 bf'4 bf a4. a8 a4 g8 f~ f2. r4
  %14
  a4 a a g8 f~ f2 bf4 bf a4. a8 a4 g8 f~ f2 r4 a8 a
  %18
  c4.  bf8~ bf4 bf8 bf a4. g8~ g r8 bf4 a4.  a8 a4 g8 f~ f1
  R1*2
  %24
  c'4 c c bf8 a~ a2 d4 d
  %26
  c4. c8 c4 bf8 a~ a2. r4 bf4 bf bf a8 g~ g2 c4 c
  %30
  c4. c8 c4 bf8 a~ a2. r4 c4 c c bf8 a~ a2 d4 d
  %34
  c4. c8 c4 bf8 a~ a2 r4 c8 c ef4. d8~ d4 \breathe d8 d c4. bf8~ bf4 \breathe df4
  %38
  c4. c8 c4 bf8 a~ a4 \breathe r4 r2
  R1 r4 c2 a4
  %42
  b1 ( bf ) a2. r4 R1
  \key g \major
  %46
  d4 d d c8 b~ b2 e4 e d4. d8 d4 c8 b~ b2. r4
  %50
  c4 c c b8 a~ a2 d4 d d4. d8 d4 c8 b~ b2. r4
  %54
  d4 d d c8 b~ b2 e4 e d4. d8 d4 c8 b~ b2 r4 d8 d
  %58
  f4. e8~ e4 \breathe e8 e d4. c8~ c4 \breathe ef4 d4. d8 d4 c8 b~ b2. r4
  %62
d4 d d c8 b~ b2 e4 e d4. d8 d4 c8 b~ b2. r4
%66
c4 c c b8 a~ a2 d4 d d4. d8 d4 c8 b~ b2. r4
%70
d4 d d c8 b~ b2 e4 e d4. d8 ds4 b8 b~ b2 r4 b8 b
%74
d4. c8~ c4 \breathe c8 c b4. a8~ a4 \breathe ef'4
d4. d8 d4 c8 b~ b4 \breathe r4 r2
%78
R1 r4 d2 b4 cs1 ( c ) b R1
g4 f e8 ef4. \breathe d1 \fermata
\bar "||"
}

bass = \relative c {
  \global
R1*5
  %6
  a'4 a a g8 f~ f2 bf4 bf a4. a8 a4 g8 f~ f2. r4
  %10
  g4 g g f8 e~ e2 bf'4 bf a4. a8 a4 g8 f~ f2. r4
  %14
  a4 a a g8 f~ f2 bf4 bf a4. a8 a4 g8 f~ f2 r4 a8 a
  %18
  c4.  bf8~ bf4 bf8 bf a4. g8~ g r8 bf4 a4.  a8 a4 g8 f~ f1
  R1*2
%24
f4 f c c8 f~ f2 bf,4 bf
%26
f'4. f8 c4 c8 f~ f2. r4 c4 c g g8 c~ c2 c4 c
%30
f4. f8 c4 c8 f~ f2. r4 f4 f c c8 f~ f2 bf,4 bf
%34
f'4. f8 c4 cs8 d~ d2 r4 c8 c a4. bf8~ bf4 \breathe bf8 bf c4. df8~ df4 \breathe bf4
%38
c4. c8 c4 c8 f~ f4 \breathe r4 r2 R1 r4 f2 f4
%42
g1 ( c, ) f2. r4 R1
\key g \major
%46
g4 g d d8 g~ g2 c,4 c g'4. g8 d4 d8 g~ g2. r4
%50
d4 d a a8 d~ d2 d4 d g4. g8 d4 d8 g~ g2. r4
%54
g4 g d d8 g~ g2 c,4 c g'4. g8 d4 ds8 e~ e2 r4 d8 d
%58
b4. c8~ c4 \breathe c8 c d4. ef8~ ef4 \breathe c4
d4. d8 d4 d8 g,~ g2. r4
%62
R1 r4 g'2.~ g4 f8 e d ( b ) d g,~ g4\breathe b4 c cs8 d~
d2 \breathe a4 a8 d~ d a b d~ d2
r4 f8 e d ( b ) d g,~ g4 \breathe b8 b c4 d8 d
%70
g2. r4 r4 g2 g4 r4 g,8 a b ( cs ) ds e~ e2 r4 b'8 b
%74
d4. c8~ c4 \breathe c8 c b4. a8~ a4 \breathe a4
d,4. d8 d4 d8 g~ g4 \breathe r4 r2
%78
R1 r4 g2 g4 a1 ( d, ) g R1
d4 g, c8 c4. \breathe g1 \fermata
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
       \set Score.midiMaximumVolume = #0.5
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

rightOne = \relative c'' {
  \global
  % Music follows here.

}

rightTwo = \relative c'' {
  \global
  % Music follows here.

}

leftOne = \relative c' {
  \global
  % Music follows here.

}

leftTwo = \relative c' {
  \global
  % Music follows here.

}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
    \new Dynamics { \dyn }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
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
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } << \rightOne \\ \rightTwo >>
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass << \leftOne \\ \leftTwo >> }
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
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
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

