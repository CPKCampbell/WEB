\version "2.19.35"
\language "english"

\header {
  title = "Shadows of the Night"
  composer = "Lloyd Larson"
  poet = "Margaret R. Seebach (alt.) and L.L."
  instrument = "SATB"
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
}

global = {
  \key af \major
  \time 4/4
  \tempo 4=72
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

soprano = \relative c' {
  \global
 R1 r2 r4 r8 c16 c c8 f f ef f4 f8 g |
 %4
 af8 g f ef c4 r8 c c f f ef f g4 af16 bf |
 %6
 c8 bf af g f4 r c8 f f ef f4. f16 g |
 %8
 af8 g f ef c4 r8 c c f16 f f8 g af (g) f4 |
 %10
 r4 r8 c16 c c8 f f ef f1 r2 r4 r8 c |
 %13
 c4 f8 ef f4. g8 af g f ef c4 r8 c |
 %15
 c4 f8 ef f4. af16 bf c8 bf af g f4 r8 c |
 %17
 c8 f f ef f4. f16 f af8 g f ef c2 |
 %19
 r1 r1 r4 r8 c16 c c8 f f ef |
 %22
 f1 R1 f4 g8 af bf4. ef,8 |
 %25
 df'4 c8 bf c4 r f, g8 af g4. bf8 |
 %27
 af8 g af bf c4 r c df8 c bf4. ef,8 |
 %29
 ef'8 df c bf af4. r8 df,4 ef8 f ef4 af |
 %31
 af8 c bf af bf4. r8 df,4 ef8 f ef4 af af c bf g |
 %34
 f1 r2 r4 r8 c c f f ef f4. f16 g |
 %37
 af8 g f ef c4 r R1 |
 %39
 r2 r4 r8  c c f f g af g f4 |
 %41
 r4 r8 c16 c c8 f f ef f1~ f |
 \bar "|"

}

alto = \relative c' {
  \global
  R1 r2 r4 r8 c16 c c8 f f ef f4 f8 g |
 %4
 af8 g f ef c4 r8 c c f f ef f g4 af16 bf |
 %6
 c8 bf af g f4 r c8 f f ef f4. f16 g |
 %8
 af8 g f ef c4 r8 c c f16 f f8 g af (g) f4 |
 %10
 r4 r8 c16 c c8 f f ef f1 r2 r4 r8 c |
 %13
 c4 f8 ef f4. g8 af g f ef c4 r8 c |
 %15
 c4 f8 ef f4. af16 bf c8 bf af g f4 r8 c |
 %17
 c8 f f ef f4. f16 f af8 g f ef c2 |
 %19
R1*2 r4 r8 c16 c c8 f f ef |
 %22
 f1 R1 df4 df 8 df df4. df8 |
 %25
 f4 ef8 ef ef4 r df4 ef8 f f4 e |
 %27
 f8 f f f f4 r f f8 f f4. ef8 |
 %29
 ef8 ef ef ef ef4 (df8) r df4 ef8 df c4 ef |
 %31
 f8 f f f af4 (g8) r df4 df8 df c4 ef df df f e |
 %34
 f1 r2 r4 r8  c c f f ef f4. f16 g |
 %37
 af8 g f ef c4 r R1 |
 %39
 r2 r4 r8 c af c c ef f ef c4 |
 %41
  r4 r8 c16 c c8 f f ef f1~ f |
 \bar "|"
 }

tenor = \relative c' {
  \global
  R1 r2 r4 r8 c16 c c8 f f ef f4 f8 g |
 %4
 af8 g f ef c4 r8 c c f f ef f g4 af16 bf |
 %6
 c8 bf af g f4 r c8 f f ef f4. f16 g |
%8
f8 g af bf c4 r R1 |
%10
r4 r8 c16 c c8 bf af g f1 r2 r4 r8 g |
%13
af4 af8 g af4. bf8 c bf af g f4 r8 g |
%15
af4 af8 g af4. f16 g af8 g f g bf4 r |
%17
r4 r8 c,8 c f f f16 g f8 g af bf c2 |
%19
r2 r4 r8 c,8 c f f g af g f4 r4 r8 c'16 c c8 bf af g |
%22
f1 R1 af4 g8 f af4. g8 |
%25
af4 af8 g af4 r af bf8 af bf4 bf |
%27
c8 bf c g af4 r af bf8 af g4. g8 |
%29
af8 af af g g4 ( f8 ) r f4 g8 af g4 af|
%31
af8 af g af d4. r8 bf4 bf8 bf bf4 af f af g8 (af) bf4 |
%34
c1 R1*2 |
%37
r2 r4 r8 c,8 c f f ef f4 r8 f16 g |
%39
af8 g f ef d4 r8 c f af af bf c bf af |
%41
r4 r8 c16 c c8 bf af g f1~ f\fermata
\bar "|"


}

bass = \relative c {
  \global
R1 r2 r4 r8 c16 c c8 f f ef f4 f8 g |
 %4
 af8 g f ef c4 r8 c c f f ef f g4 af16 bf |
 %6
 c8 bf af g f4 r c8 f f ef f4. f16 g |
%8
f8 g af bf c4 r R1 |
%10
r4 r8 c16 c c8 bf af g f1 r2 r4 r8 g |
%13
af4 af8 g af4. bf8 c bf af g f4 r8 g |
%15
af4 af8 g af4. f16 g af8 g f g bf4 r |
%17
r4 r8 c,8 c f f f16 g f8 g af bf c2 |
%19
r2 r4 r8 c,8 c f f g af g f4 r4 r8 c'16 c c8 bf af g |
%22
f1 R1 df4 df8 df ef4. ef8 |
%25
af,4 af8 ef' af4 r df, df8 df c4 c |
%27
f8 f f f ef4 r df df8 df df4. df8 |
%29
c8 c c c df4. r8 bf4 bf8 bf c4 c |
%31
df8 df df df ef4. r8 bf' (af) f f ef4 c bf bf c c |
%34
f1 R1*2 |
%37
r2 r4 r8 c,8 c f f ef f4 r8 f16 g |
%39
af8 g f ef d4 r8 c f af af bf c bf af |
%41
r4 r8 c16 c c8 bf af g f1~ f\fermata
\bar "|"


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

right = \relative c'' {
  \global
  % Music follows here.

}

left = \relative c' {
  \global
  % Music follows here.

}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Soprano"
  } \new Voice = "soprano" \soprano
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Alto"
  } \new Voice = "alto" \alto
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "alto" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } {
    \clef "treble_8"
    \new Voice = "tenor" \tenor
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
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
    \rehearsalMidi "alto" "alto sax" \verse
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
    \rehearsalMidi "bass" "baritone sax" \verse
    \midi { }
  }
}