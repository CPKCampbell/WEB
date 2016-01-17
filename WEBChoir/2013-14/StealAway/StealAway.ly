\version "2.19.0"

\language  "english"

\header {
  title = "Steal Away to Jesus"
}

global = {
  \time 4/4
  \key f \major
  \tempo 4=88
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     %      \new Staff = "solo" \new Voice = "solo" { s1*0\f \soloVoice }
     \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \soprano }
     \new Staff = "alto" \new Voice = "alto" { s1*0\f \alto }
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiInstrument = "voice oohs"
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 88 4)
       \set Score.midiPanPosition = #1
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = "bright acoustic"
       \set Staff.midiPanPosition = #-1
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})


bb = {\bar "" \break }
fd = \markup { \dynamic f \italic "declamatory" }
soprano = \relative c' {
  \global
  R1*8
  %9  refrain
  f4. f8 f2 a4. a8 a2 c4. c8 c4 d g, a2 g4 |
  %13
  f4. f8 f2 d'8 c a4 c4.\fermata f,8 f4 f a4. a8 g4 f2.
  % stanza 1
  \set stanza = \markup { \bold "Stanza 1. " } \bb
  \time 3/4
  d'8^\fd (c4) d4 (c8) d4 c r8 a8 |
  \time 4/4
  c4. c8 c4. a8 c4-> a2 \breathe f4 |
  a8 c4 c8--~ c4. c8 d (c) a4 c4. f,8 f4 f a4. a8 g4 f2.
  % refrain
  f4. f8 f2 a4. a8 a2 c4. c8 c4 d g, a2 g4 |
  %13
  f4. f8 f2 d'8 c a4 c4.\fermata f,8 f4 f a4. a8 g4 f2.
  % stanza 2
  \set stanza = \markup { \bold "Stanza 2. " } \bb
  \time 3/4
  r2. r4 r r8 a8 |
  \time 4/4
  c4. c8 c4. a8 c4-> a2 \breathe f4 |
  a8 c4 c8--~ c4. c8 d (c) a4 c4. f,8 f4 f a4. a8 g4 f2.
  % refrain
  f4. f8 f2 a4. a8 a2 c4. c8 c4 d g, a2 g4 |
  %13
  f4. f8 f2 d'8 c a4 c4.\fermata f,8 f4 f a4. a8 g4 f2.
  % stanza 3
  \set stanza = \markup { \bold "Stanza 3. " } \bb
  \time 3/4
  d'8^\fd (c4) d4 (c8) d4 c r8 a8 |
  \time 4/4
  c4. c8 c4. a8 c4-> a2 \breathe f4 |
  a8 c4 c8--~ c4. c8 d (c) a4 c4. f,8 f4 f a4. a8 g4 f2.
  % 41 final refrain
  \bb
  f4.^\markup { \bold "Final Refrain" }  f8 f2
  a4. a8 a2
  c4. c8 c4 d g, a2 g4
  f4. f8 f2 d'8 c a4 c4\fermata f,4 |
  \time 2/4 f4 f \time 4/4 a4. a8 g4 f~ \time 2/4 f2
  \time 4/4 c'2 f4~\fermata f \breathe
  f8 (e) d4 a c~ c a d2~ (d4 c) c2 \bar "|."
}


alto = \relative c' {
  \global
  R1*8
  %9 refrain
  c4. c8 d2 d4. c8 bf2 f'4. e8 f4 f e c~ c8 c (d e) |
  %13
  f4. e8 d2 d8 f f4 e4.\fermata f8 e4 d d4. d8 e4 c2.
  %stanza 1
  \time 3/4  r2. r4 r r8 f8 |
  \time 4/4 f4 e f4. f8 f4-> f2 r4 |
  r2 r4 r8 f8 f4 f e4.\fermata e8 d4 e d4.  d8 e4 c2.
  %refrain
  c4. c8 d2 d4. c8 bf2 f'4. e8 f4 f e c~ c8 c (d e) |
  %13
  f4. e8 d2 d8 f f4 e4.\fermata f8 e4 d d4. d8 e4 c2.
  %stanza 2
  \time 3/4  r2. r4 r r8 f8 |
  \time 4/4 f4 e f4. f8 f4-> f2 r4 |
  r2 r4 r8 f8 f4 f e4.\fermata e8 d4 e d4.  d8 e4 c2.
  %refrain
  c4. c8 d2 d4. c8 bf2 f'4. e8 f4 f e c~ c8 c (d e) |
  %13
  f4. e8 d2 d8 f f4 e4.\fermata f8 e4 d d4. d8 e4 c2.
  %stanza 3
  \time 3/4   r4 bf' a bf8 (a) g4 r8 f8 |
  \time 4/4 f4 e f4. f8 f4-> f2 r4 |
  r2 r4 r8 f8 f4 f e4.\fermata e8 d4 e d4.  d8 e4 c2.
  % 41 final refrain
  c4. c8 d2 d4. c8 bf2
  f'4. e8 f4 f e c~ c8 c (d e)
  f4. e8 f2 d8 f f4 e4\fermata f8 (e8) |
  \time 2/4 d4 e8 (c ) \time 4/4 d2 r4 d8 (c) |
  \time 2/4 bf4 d \time 4/4 c2 r4\fermata <<
    \mergeDifferentlyHeadedOn
    {f4 f2. f4 f f a4. a8 g2 f2 }
    \\
    {f8 (e) d2 (c4) c d d d4. d8 e2 c }
  >>
  \bar "|."
}

tenor = \relative c' {
  \global
  f,4. f8 f2 a4.a8 a2 c4. c8 c4 d g, a2. |
  f4. f8 f2 d'8 c a4 c4. f,8 f4 f a4. a8 g4 f2 r4 |
  %9 refrain
  a4. a8 a2 a4. g8 f (g) a (bf) a4. a8 d (c) bf (a) g4 a2 a4 |
  %13
  a4. a8 g2 bf8 bf c4 c4.\fermata f,8 a4 4 bf4. g8 g4 a2.
  % stanza 1
  \set stanza = \markup { \bold "Stanza 1. " } \bb
  \time 3/4
  R2. r4 r4 r8 c\mf \time 4/4 d4 c c4. c8 bf4-> c2 \breathe f,4 |
  a8 c4 c8~\< c4. c8\f bf4^"poco rit." c\> c4.\fermata a8^"a tempo" |
  a4 a bf4. g8 g4 a2.
  % refrain
  a4. a8 a2 a4. g8 f (g) a (bf) a4. a8 d (c) bf (a) g4 a2 a4 |
  %13
  a4. a8 g2 bf8 bf c4 c4.\fermata f,8 a4 4 bf4. g8 g4 a2.
  %stanza 2
  \set stanza = \markup { \bold "Stanza 2. " } \bb
  \time 3/4
  d8\f^\fd (c4) d c8 d4-- c\> r8 c8\mf
  \time 4/4 d4 c c4. c8 bf4-> c2 \breathe f,4 |
  a8 c4 c8--~\< c4. c8\f bf4^"poco rit" c c4.\fermata a8^"a tempo" |
  a4 a bf4. g8 g4 a2.
  % refrain
  a4. a8 a2 a4. g8 f (g) a (bf) a4. a8 d (c) bf (a) g4 a2 a4 |
  %13
  a4. a8 g2 bf8 bf c4 c4.\fermata f,8 a4 4 bf4. g8 g4 a2.
  % stanza 3
  \set stanza = \markup { \bold "Stanza 3. " } \bb
  \time 3/4
  r4 d4\< e f\f-- e\> r8 c8\mf |
  \time 4/4 d4 c c4. c8 bf4-- c2 \breathe f,4 |
  a8 c4 c8--~\< c4. c8\f bf4^"poco rit" c c4.\fermata a8^"a tempo" |
  a4 a bf4. g8 g4 a2.
  % final refrain
  \bb
  a4. a8 a2 a4. g8 f (g) a (bf) a4. a8 d (c) bf (a) g4 a2 a4 |
  a4. a8 g2 bf8 bf c4 c4\fermata  a4 \time 2/4 bf4 a
  \time 4/4 bf2 r4 a|
  \time 2/4 f4 g \time 4/4 a2 r4\fermata r4 d8 (c) bf (g) a4 a |
  f4 g8 (a) bf4. g8 g4 (bf) a2 \bar "|."
}
bass = \relative c {
  \global
  R1*8
  %9 Refrain
  f4. f8 d4 (c) bf4. a8 g2 f4. c'8 bf4 bf c f2 e4 |
  d4. c8 bf2 f8 g a4 c4.\fermata f8 d4 c g4. bf8 c4 f2.
  \set stanza = \markup { \bold "Stanza 1. " } \bb
  \time 3/4
  R2. r4 r r8 c'8\mf
  \time 4/4 g4 a bf4. a8 g4-- f2 r4 |
  r2 r4 r8 a,8\f bf^"poco rit" (d) f4\> c4.\fermata c8^"a tempo" |
  d4 c g4. bf8 c4 f2.
  %9 Refrain
  f4. f8 d4 (c) bf4. a8 g2 f4. c'8 bf4 bf c f2 e4 |
  d4. c8 bf2 f8 g a4 c4.\fermata f8 d4 c g4. bf8 c4 f2.
  % stanza 2
  \set stanza = \markup { \bold "Stanza 2. " } \bb
  \time 3/4
  R2. r4 r r8 c'8\mf
  \time 4/4 g4 a bf4. a8 g4-- f2 r4 |
  r2 r4 r8 a,8\f bf^"poco rit" (d) f4\> c4.\fermata c8^"a tempo" |
  d4 c g4. bf8 c4 f2.
  %9 Refrain
  f4. f8 d4 (c) bf4. a8 g2 f4. c'8 bf4 bf c f2 e4 |
  d4. c8 bf2 f8 g a4 c4.\fermata f8 d4 c g4. bf8 c4 f2.
  % stanza 3
  \set stanza = \markup { \bold "Stanza 3. " } \bb
  \time 3/4
  r4 f4\mf\<  c' bf--\f c\> r8 c8\mf
  \time 4/4 g4 a bf4. a8 g4->f2 r4 |
  r2 r4 r8 a,8\f bf^"poco rit" (d) f4\> c4.\fermata c8^"a tempo" |
  d4 c g4. bf8 c4 f2.
  % final refrain
  f4.\mp\< f8 d4 (c) bf4. a8 g2 f4.\! c'8 bf4 bf c\> f2 e4\! |
  d4. c8 bf2\< f8\mf g a4 c4\mp\fermata a'8 (g)
  \time 2/4 f4 c \time 4/4 g'2 r4 d |
  \time 2/4 g,8 (a) bf4\< \time 4/4 a2\! r4\fermata r4 r2 a'8 (g) f (e) |
  d8 (c) bf4 g4. bf8 c2 f \bar "|."

}
verseSop = \lyricmode {

}

verseAlt = \lyricmode {

}
verseTen = \lyricmode {

}
verseBass = \lyricmode {

}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "S"
    }
    \new Voice = "soprano" {  \soprano }
    \lyricsto "soprano" \new Lyrics \verseSop

    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "A"
    }
    \new Voice = "alto" {  \alto }
    \lyricsto "alto" \new Lyrics \verseAlt

    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "T"
    } <<
      \clef "treble_8"
      \new Voice = "tenor" { \tenor }
    >>
    \lyricsto "tenor" \new Lyrics \verseTen

    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "B"
    } <<
      \clef bass
      \new Voice = "bass" {  \bass }
      \lyricsto "bass" \new Lyrics \verseBass

    >>
  >>
  \layout {
    \context {
      \Score
      \RemoveEmptyStaves \override VerticalAxisGroup.remove-first = ##t
    }
  }
  %  \midi { }
}
\score {
  \unfoldRepeats {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = \markup \center-column { S A }
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \verseSop

      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = \markup \center-column { T B }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #DOWN
      } \lyricsto "bass" \verseBass

    >>
  }
  \midi {}
}


% Rehearsal MIDI files:
%{
  \book {
  \bookOutputSuffix "solo"
  \score {
  \rehearsalMidi "solo" "flute" \verseSolo
  \midi { }
  }
  }
%}
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "violin" \verseSop
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "viola"  \verseSop
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "cello"  \verseBass
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "contrabass"  \verseBass
    \midi { }
  }
}



%{
  convert-ly (GNU LilyPond) 2.19.0  convert-ly: Processing `'...
  Applying conversion: 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
  2.17.29
%}


%{
  convert-ly (GNU LilyPond) 2.19.0  convert-ly: Processing `'...
  Applying conversion:     The document has not been changed.
%}
