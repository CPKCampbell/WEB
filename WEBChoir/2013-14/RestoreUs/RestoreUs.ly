\version "2.17.16"
\language "english"

\header {
  title = "Restore Us, O God"
  composer = "Darryl Dewalt"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \time 4/4
  \partial 8
  \tempo "Moderately" 4=84
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}


rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "solo" \new Voice = "solo" { s1*0\f \soloVoice }
     \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \sopranoVoice }
     \new Staff = "alto" \new Voice = "alto" { s1*0\f \altoVoice }
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenorVoice }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bassVoice }
     \context Staff = $name {
       \set Score.midiInstrument = "choir aahs"
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 84 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = "bright acoustic"
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})


soloVoice = \relative c'' {
  \global
  \dynamicUp
  s8 s1*23
  r4 r8 a8\f c4. bf8 a4 a8 c f4 c d8 (c4.) r8 a8 c f |
  e4. (d8 c4.) r8 |
  r4 r8 f8 d (c) a c~ c4. r8 r f8 f d |
  f4. (d8 c ) a c d c4. d8 <f a,>4 <e bf> <f a,>1

}

verseSolo = \lyricmode {
  \set stanza = "4."
  The Lord will come and will not be slow
  The Lord will come
  The Lord will come, will come to us
  The Lord will come,  will come to us.
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  f8\mf a a4 g8 f4 f8 a
  c c4 c8 bf a4 f8 e e4 f8 g4 g8 g
  f8 f4 f8 d c4 f8  a a4 g8 f4 f8 a
  c c4 c8 bf a4 f8 a2 a4 g f1
  %v2
  a8 a4 g8 f4. f8 c'4. c8 bf a4.
  e8 e4 f8 g4. g8 f4. f8 d c4.
  a'8 a4 g8 f4. f8 c'4. c8 bf a4 f8
  a8^"molto rit." a4 f8 a g4 f8 f1
  % vs3
  \tempo "Slower and more marked" 4=64
  a8\f a4 g8 f2 c'8 c4 c8 bf (a4.)
  e8 e4 f8 g2 f8 f4 f8 d (c4.)
  a'8 a4 g8 f2 c'8 c4 c8 bf8 a a f
  a a4 f8 a4 g f2. r8 f8
  %vs 4
  \tempo "Allegro moderato" 4=100
  a4.\mf g8 f4. a8 c c4 c8 bf (a4) f8
  e4. f8 g4. g8 f f4 f8 d (c4) f8\<
  a4. g8 f4. a8 c c4 c8 bf (a4)\! f8
  a8^"rit." a4 f8 a4 g f1


}

verseSopranoVoice = \lyricmode {
  \set stanza = "1."
  Re -- store us, O God make Your face shine up -- on us,
  Re -- store us, O God make Your face shine up -- on us,
  Re -- store us, O God make Your face shine up -- on us,
  that we may be saved.
  \set stanza = "2."
  We are the clay and You our pot -- ter,
  We are the clay and You our pot -- ter,
  We are the clay and You our pot -- ter,
  We all are the work of Your hand.
  \set stanza = "3."
  Be on your guard: Watch for the Lord!
  Be on your guard: Watch for the Lord!
  Be on your guard: Watch for the Lord!
  We do not know when the time will come.
  \set stanza = "4."
  The Lord will come and will not be slow
  The Lord will come and will not be slow
  The Lord will come and will not be slow
  Our Sa -- viour will come to us.
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  f8\mf f f4 d8 c4 f8 f a a4 a8 g f4 f8 |
  c8 c4 d8 e4 e8 e c8 c4 c8 bf a4 c8 |
  f8 f4 d8 c4 f8 f a a4 a8 g f4 d8 |
  f2 d4 e c1 |
  % vs 2
  f8 f4 d8 c4. f8 a4. a8 g f4. |
  c8 c4 d8 e4. e8 c4. c8 bf a4. |
  f'8 f4 d8 c4. c8 a'4. a8 g f4 d8 |
  f8 f4 d8 f e4 c8 c1 |
  % vs 3
  f8\f f4 d8 c c f g a4. (g8 f2) |
  c8 c4 d8 e e e c c4. (bf8 a2) |
  f'8 f4 d8 c c f g a4. (g8 f) f f d |
  f8 f4 d8 f4 e c2. r8 f8\mf |
  % vs 4
  f4. d8 c4. f8 a a4 a8 g (f4) f8 |
  c4. d8 e4. e8 c c4 d8 bf (a4) c8\<
  f4. d8 c4. f8 a a4 a8 g (f4)\! d8 |
  f8 f4 d8 f4 e c1
}

verseAltoVoice = \lyricmode {
  \set stanza = "1."
  Re -- store us, O God make Your face shine up -- on us,
  Re -- store us, O God make Your face shine up -- on us,
  Re -- store us, O God make Your face shine up -- on us,
  that we may be saved.
  \set stanza = "2."
  We are the clay and You our pot -- ter,
  We are the clay and You our pot -- ter,
  We are the clay and You our pot -- ter,
  We all are the work of Your hand.
  \set stanza = "3."
  Be on your guard: Watch for the Lord!
  Be on your guard: Watch for the Lord!
  Be on your guard: Watch for the Lord!
  We do not know when the time will come.
  \set stanza = "4."
  The Lord will come and will not be slow
  The Lord will come and will not be slow
  The Lord will come and will not be slow
  Our Sa -- viour will come to us.

}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  \clef "treble_8"
  a8\mf c c4 bf8 a4 a8 c f f4 f8 d c4 c8 |
  g8 g4 a8 bf4 bf8 bf a8 a4 a8 g f4 a8 |
  c8 c4 bf8 a4 a8 c f f4 f8 d c4 a8 |
  c2 c4 bf a2 c8 c4 bf8 |
  %vs 2
  a2~ a4. a8 f'4. f8 d c4. |
  g8 g4 a8 bf4. bf8 a4. a8 g f4. |
  c'8 c4 bf8 a4. a8 f'4.  f8 d c4 a8 |
  c8 c4 a8 c bf4 a8 a1 |
  % vs 3
  c8\f c4 bf8 a2 f'8 f4 e8 d (c4.) |
  g8 g4 a8 bf2 a8 a4 f8 g (f4.) |
  c'8 c4 bf8 a2 f'8 f4 e8 d c c a |
  c8 c4 a8 c4 bf a2. r8 a8\mf |
  % vs 4
  c4. bf8 a4. c8 f f4 f8 d (c4) c8 |
  g4. a8 bf4. bf8 a a4 g8 g (f4) a8\< |
  c4. bf8 a4. c8 f f4 f8 d (c4)\! a8 |
  c8 c4 a8 c4 bf a1
}

verseTenorVoice = \lyricmode {
  \set stanza = "1."
  Re -- store us, O God make Your face shine up -- on us,
  Re -- store us, O God make Your face shine up -- on us,
  Re -- store us, O God make Your face shine up -- on us,
  that we may be saved.
  \set stanza = "2."
  We are the clay and You our pot -- ter,
  We are the clay and You our pot -- ter,
  We are the clay and You our pot -- ter,
  We all are the work of Your hand.
  \set stanza = "3."
  Be on your guard: Watch for the Lord!
  Be on your guard: Watch for the Lord!
  Be on your guard: Watch for the Lord!
  We do not know when the time will come.
  \set stanza = "4."
  The Lord will come and will not be slow
  The Lord will come and will not be slow
  The Lord will come and will not be slow
  Our Sa -- viour will come to us.

}

bassVoice = \relative c {
  \global
  \dynamicUp
  f8 f f4 d8 f4 f8 c f f4 c8 f f a c c,2. c8 c
  f8 f4 f8 c c a c f2. f8 c
  f8 f4 f8 f f4 f8 c2 c4 c f1
  %vs 2
  f8 f4 d8 f4. f8 f4. c8 f f a c c,2~ c4. c8 |
  f4. f8 c c a c f2~ f4. f8 f4. f8 f f4 f8 |
  c8 c4 c8 c c4 c8 f1 |
  % vs 3
  f8 f4 d8 f2  f8 f4 c8 f f a c c,1 |
  f8 f4 d8 c c a c f1 |
  f8 f4 c8 d f f f c c4 c8 c4 c f2. r8 f8 |
  %vs 4
  f4. d8 f4. c8 f f4 c8 f4 (a8) f |
  c4. c8 c4. c8 f f4 bf,8 c4. c8\< |
  f4. d8 f4. c8 f f4 f8 f4.\! f8 |
  c8 c4 d8 c4 c <f f,>1
}

verseBassVoice = \lyricmode {
  \set stanza = "1."
  Re -- store us, O God make Your face shine on us,
  Re -- store us, God make Your face shine on us,
  Re -- store us, God make Your face shine up -- on us,
  that we may be saved.
  \set stanza = "2."
  We are the clay and You our pot -- ter,
  We are clay and You our pot -- ter,
  We are clay and You our pot -- ter,
  We all are the work of Your hand.
  \set stanza = "3."
  Be on your guard: Watch for the Lord!
  Be on your guard: Watch for the Lord!
  Be on your guard: Watch for the Lord!
  We do not know when the time will come.
  \set stanza = "4."
  The Lord will come and will not be slow
  The Lord will come and will not be slow
  The Lord will come and will not be slow
  Our Sa -- viour will come to us.
}

soloVoicePart = \new Staff \with {
  instrumentName = "Solo"
  midiInstrument = "choir aahs"
} { \soloVoice }
\addlyrics { \verseSolo }

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

\score {
  <<
    \soloVoicePart
    \sopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout {
    \context {
      % Frenched staves
      \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \consists "Measure_grouping_engraver"
    }

  }


  \midi { }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "solo"
  \score {
    \rehearsalMidi "solo" "flute" \verseSolo
    \midi { }
  }
}

\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "violin" \verseSopranoVoice
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "viola" \verseAltoVoice
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "cello" \verseTenorVoice
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "contrabass" \verseBassVoice
    \midi { }
  }
}

