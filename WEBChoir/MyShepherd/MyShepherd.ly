\version "2.19.35"
\language "english"

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key bf \major
  \numericTimeSignature
  \time 3/4
  \tempo "Tenderly"
  \partial 4
}

soprano = \relative c' {
  \global
  r4 R2.*7
  %8
  r4 r bf8\p (d) f2 d8 (c) d2 f4 bf2 g8 (f)
  %12
  d4 r bf8 (d) f2 bf,4 d2 c4 bf2.~
  %16
  bf4 r bf8\< (d) f2\mp d8 (c) d2 f4 bf2 g8 (f)
  %20
  d2 bf8 (d) f2 bf,4 d2\> c4 bf2.\p~
  %24
  bf4 r f'\< bf2\mp d8 (bf) g2 bf4 c2 bf8 (g) |
  %28
  f2 d8 (f) g2 f8 (g) bf2 c4 |
  %31
  bf2.~ bf4 r r R2.*2 |
  %35
  R2. r4 r bf,8 (d) f2 bf,4 d2 c4 |
  %39
  bf2. r4 r bf8 (d) f2 d8 (c) d2 f4 |
  %43
  bf2 g8 (f) d2 bf8 (d) f2 bf,4 d2 c4 |
  %47
  bf2.~ bf4 r bf8\< (d) f2\mp d8 (c) d2 f4 |
  %51
  bf2 g8 (f) d2 bf8 (d) f2 bf,4 d2 c4 |
  %55
  bf2.~ bf4 r4 f'\< bf2\mf d8 (bf) |
  %58
  g2  bf4 c2 bf8 (g) f2 d8 (f) |
  %61
  g2 f8 (g) bf2 c4 bf2.~
  %64
  bf4 r bf,8\> (d) f2\mp d8 (c) d2 f4 bf2 g8 (f) |
  %68
  d4. r8 bf (d) f2 bf,4 d2\> c4 bf2.\p |
  %72
  R2.*4 |
  %76
  R2.*2 r4 r c8\mf (e) \key c \major g2 e8 (d) |
  %80
  e2 g4 c2 a8 (g) e2 c8 (e) g2 c,4 |
  %84
  e2 d4 c2.~\< c4 r c8\f (e) g2 e8 (d) |
  %88
  e2 c'4 c2 a8 (g) e4 r c8 (e) g2 c4 |
  %92
  e2 d4 c2.~ c4 r g c2 e8 (c) |
  %96
  a2 c4 d2 c8 (a) g2 e8 (g) a2 g8 (a) |
  %100
  c2 d4 c2. (bf4) r ef8\ff (c) |
  %103
  \key ef \major
  bf2 g8 (f) g2 bf4 ef2 c8 (bf) |
  %106
  g4 r ef8 (g) bf2 ef,4  g2 f4 |
  %109
  ef2. R2.*2 |
  %112
  r4 r ef8\mp (g) bf2 g8 (f) g2 bf4 |
  %115
  ef2 c8 (bf) g4 r ef8 (g) bf2 ef,4 |
  %118
  g2 f4 ef2.\pp~ ef\fermata
  \bar "|."

}

alto = \relative c' {
  \global
   r4 R2.*7
  %8
  r4 r bf8\p (d) f2 d8 (c) d2 f4 bf2 g8 (f) |
  %12
  d4 r bf8 (d) f2 bf,4 d2 c4 bf2.~ |
  %16
  bf4 r bf8\< (d) f2\mp d8 (c) d2 f4 bf2 g8 (f) |
  %20
  d2 bf8 (d) f2 bf,4 d2\> c4 bf2.\p~ |
  %24
  bf4 r f'\< d2\mp f4 f (ef) f ef2 ef4 |
  %28
  c4 (d) d f (ef8 d ) c4 d (ef) f |
  %31
  g8 g f4 d ef r r R2.*2 |
  %35
  R2. r4 r bf8 (d) bf2 bf4 bf2 a4 |
  %39
  bf2. r4 r bf8 (d) f2 d8 (c) d2 f4 |
  %43
  bf2 g8 (f) d2 bf8 (d) f2 bf,4 d2 c4 |
  %47
  bf2.~ bf4 r bf8\< (a) g2\mp g8 (a) bf2 c4 |
  %51
  d2 c4 bf2 bf8 (a) g2 f4 g2 a4 |
  %55
  bf2.~ bf4 r4 f'\< g2\mf f4 |
  %58
  ef2 ef4 ef2 ef4 ef (d) d |
  %61
  d2 d4 f (ef8 d) c4 ef8 ef d4 c |
  %64
  d4 r bf8 (d) bf2 d8 (c) d2 f4 bf2 g8 (f) |
  %68
  d4. r8 bf4  bf2 bf4 bf2\> a4 bf2.\p |
  %72
  R2.*4 |
  %76
  R2.*2 r4 r c8\mf (e) \key c \major g2 e8 (d) |
  %80
  e2 g4 c2 a8 (g) e2 c8 (e) g2 c,4 |
  %84
  e2 d4 c2.~\< c4 r c8\f (e) g2 e8 (d) |
  %88
  e2 c'4 c2 a8 (g) e4 r c8 (e) g2 g4 |
  %92
  a2 f4 f2. (e4) r d e2 e4 |
  %96
  g4 (f) g f2 f4 g2 e4 f2 g4 |
  %100
  f4 (a) g af af g f r ef8 (g) |
  %103
  \key ef \major
  bf2 g8 (f) g2 bf4 ef,2 ef8 (f) |
  %106
  g4 r ef8 (d) c2 bf4 af (bf) c8 (d) |
  %109
  ef2. R2.*2 |
  %112
  r4 r ef8\mp (g) bf2 g8 (f) g2 bf4 |
  %115
  f4 (ef) ef8 (f) g4  r4 ef8 (d) c2 bf4 |
  %118
  c4 (ef) d bf2.~ bf\fermata
  \bar "|."


}

tenor = \relative c' {
  \global
  r4 R2.*15
  %16
  r4*2 bf4\p a2\mp bf8 (a) g2 f4 g2 bf8 (a) |
  bf2 bf8 (a) g2 f4 g2 a4 bf2.~ |
  bf4 r f g2 a4 bf2 bf4 g2 g8 (bf ) |
  a4 (bf) bf8 (a) bf2 bf4 g2 bf4 |
  d8 d c4 bf g r bf8\p (g) f2 d8 (c) d2 f4 |
  bf2 g8 (f) d2 bf'8 (a) g2 f4 ef2 f4 |
  %39
  g2. r4 r bf a2 bf8 (a) g2 f4 |
  %43
  g2 bf8 (a) g2 bf8 (a) g2 f4 g2 a4 |
  %47
  bf2.~ bf4 r r R2.*2 |
  %51
  R2.*4 |
  %55
  R2. r4 r f\mp\< bf2\mf bf4 |
  %58
  bf4 (a) g g2 g8 (bf) bf2 bf4 |
  %61
  c4 (bf) a g2 a4 g8 g f4 ef |
  %64
  f4 r bf8 (g) f2 bf8 (a) g2 f4 ef2 f8 (g) |
  a4 (bf8) r bf (a) g2 f4 ef2 f4 bf2. |
  %72
  R2.*4 |
  %76
  R2.*2 r4 r c8 (a) \bar "||" \key c \major g2 e8 (d) |
  %80
  e2 g4 c2 a8 (g) e2 c'8 (b) a2 g4 |
  %84
  a2 f4 c'2.~ c4 r r r r e,8\f (g) |
  %88
  gs2 e4 a2 a4 c2 c8 (b) a r a4 c |
  %92
  c2 b4 g2.~ g4 r b c2 b4 |
  %96
  c2 c4 a (b) c  c2 c4 c2 c4 |
  %100
  a4 (c) b ef f ef d r ef8\ff (c) |
  \bar "||" \key ef \major
  %103
  bf2 g8 (f) g2 bf4 ef2 c8 (bf) |
  %106
  g4 r g4 ef2 ef4 ef8 (f g4) af |
  %109
  g2. R2.*2 |
  %112
  R2.*3 |
  %115
  R2. r4 r c8\mp (bf) af2 af4 |
  %118
  af4 (c) bf8 (af) g2.~ g2. |
  \bar "|."

}

bass = \relative c' {
  \global
  r4 R2.*15 |
  %16
  r4*2 bf4\p a2\mp bf8 (a) g2 f4 g2 bf8 (a) |
  %20
  bf2 bf8 (a) g2 f4 g2 a4 bf2.~ |
  %24
  bf4 r f g2 f4 ef2 d4 c2 c4 |
  %28
  g2 g'8 (f) ef2 d4 c2 d4 |
  %31
  ef2 g4 c, r bf8\p (d) f2 d8 (c) d2 f4 |
  %35
  bf2 g8 (f) d2 g8 (f) ef2 d4 c2 d4 |
  %39
  ef2. r4 r bf'4 a2 bf8 (a) g2 f4 |
  %43
  g2 bf8 (a) g2 bf8 (a) g2 f4 g2 a4 |
  %47
  bf2.~ bf4 r4 r R2. R2. |
  %51
  R2.*4 |
  %55
  R2. r4 r f4\mp\< ef2\! d4 |
  %58
  c2 c4 f2 f,4 bf2 bf'8 a |
  %61
  a4 (g) f ef2 f4 bf,2.~ |
  %64
  bf4 r bf'8 (g) f2 bf8 (a) g2 f4 ef2 f8 (g) |
  %68
  a4 (bf8) r8 g (f) ef2 d4 c2 d8 (f) bf2. |
  %72
  R2.*4 |
  %76
  R2.*2 r4 r c8 (a) \bar "||" \key c \major g2 e8 (d) |
  %80
  e2 g4 c2 a8 (g) e2 c'8 (b) a2 g4 |
  %84
  a2 f4 c'2.~ c4 r r r r e,8\f (g) |
  %88
  gs2 e4 a2 a4 c2 c8 (b) a r f4 e |
  %92
  f2 g4 c,2.~ c4 r b'4 a2 g4 |
  %96
  f2 e4 d2 d4 e2 g4 f2 e4 |
  %100
  d2 e4 f f f bf r ef,8 (g) |
  \key ef \major
  %103
  bf2 g8 (f) g2 bf4 ef,2 ef8 (f) |
  %106
  g4 r c,8 (bf) af2 g4 f2 bf4 |
  %109
  c2. R2.*2 |
  %112
  R2.*3 |
  %115
  R2. r4 r af'8 (g) f2 c4 |
  %118
  bf2 bf4 <bf ef,>2.~ q
  \bar "|."

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
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 88 4)
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
    \new Staff \with {
      midiInstrument = "violin"
      instrumentName = "Soprano"
    } \new Voice = "soprano" \soprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "viola"
      instrumentName = "Alto"
    } \new Voice = "alto" \alto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \verse
    \new Staff \with {
      midiInstrument = "cello"
      instrumentName = "Tenor"
    } {
      \clef "bass"
      \new Voice = "tenor" \tenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \verse
    \new Staff \with {
      midiInstrument = "bassoon"
      instrumentName = "Bass"
    } {
      \clef bass
      \new Voice = "bass" \bass
    }
  >>
  \layout { }
  \midi {
    \tempo 4=88
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

