\version "2.19.0"
\language "english"

\header {
  title = "Thou Shalt Know Him"
  instrument = "SATB Acapella"
  composer = "Mark Sirett"
}
\paper {
  #(set-paper-size "letter")
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
bln = \bar "|"

global = {
  \key e \major
  \time 4/4
  \tempo "Slowly"
  \dynamicUp
}

soprano = \relative c'' {
  \global
  \cadenzaOn
  \repeat volta 2 {
    e,8\p [b'] \bln b4. gs8 fs [gs] \bln e2 \bln e8\mp [cs'] cs [b] b8. [gs16] \bln
   \mark \markup { \box "5" } b2. cs8\mf [e] \bln e4. ds16 (cs) ds8 e \bln b2 \bln
    e,8\mp [b'] a [gs] \bln \mark \markup { \box "9" } fs2\> gs4 \bln gs2. <>\!
  }
  %9
  \break
  gs8\p gs \bln cs4. b8 gs8 fs \bln gs4 \tuplet 3/2 {gs8\mf gs gs} \bln
  \mark \markup { \box "14" }e'4. ds8\< b a \bln cs4\f ds\< cs \bln 
  <gs' e>4.\! <fs ds>8 e8 cs \bln cs4 a\> cs \bln
  %16
  \mark \markup { \box "18" }
  <e c>4 (<d b>) c \bln b8. g16 g4 g8\p g \bln a4 e2. \breathe e4 d e2. \fermata \bln
  %19b
  \mark \markup { \box "22" }
  e8\mp b' \bln b4. gs8 fs gs \bln e2. \breathe \bln e2\p e \breathe \bln e1\pp\> e <>\! \bar "|."
  \cadenzaOff
}

alto = \relative c' {
  \global
  \cadenzaOn
  \repeat volta 2 {
    e8 ds \bln cs4 e ds8 ds \bln e4 (ds) \bln
    cs8 (ds e fs) ds (e) 
    ds4 (gs fs) e gs fs e e8 (fs) ds4
    cs e e8 (cs ds4) ds \bln e2.
  }
  %9
  fs8 e fs4 fs fs8. fs16 e4 fs8 e 
  <a fs>2 fs8 <a fs>8 <gs es>4 q gs b b b8 gs a4 gs fs
  %16
  g2 a4 g8 fs e4 e8 e e4 cs2 \breathe b b4 b2. \fermata
  %19b
  e8 ds cs4 e ds8 ds ds4 (cs2) \breathe d2 d \breathe c1 b \bar "|."
  \cadenzaOff
}

tenor = \relative c' {
  \global
 \cadenzaOn
  \repeat volta 2 {
    gs8 gs \bln e4 b' a8 a \bln gs2 \bln e8 (fs a4) gs8 (a) \bln
    b4. (cs8 ds4) cs b a b8 (a) gs2
    e8 fs a b a2 b4 \bln b2.
  }
  %9
  gs8 gs a4 a b8. b16 cs4 cs8 cs
  cs4. (b8) cs8 ds ds4 ds es e e e8 e e4 cs cs
  %16
  
  <e c>2 q4 b8 b b4 d8 d cs4 a2 \breathe a a4 gs2. \fermata
  %19b
  gs8 gs e4 b' a8 a gs2. \breathe <a fs>2 q \breathe <g e>1 gs1 \bar "|."
  \cadenzaOff 
}

bass = \relative c {
  \global
    \cadenzaOn
  \repeat volta 2 {
    e8\p e \bln a,4 a b8 b \bln cs4 (b) \bln a\mp (fs) cs' \bln
    <fs b,>2. <e a,>4~\mf \bln <e a,>2 <e gs,>4 \bln cs b \bln
    a\mp fs \bln b2\> b4 \bln <e e,>2. <>\!
  }
  %9
   fs8\p e \bln d4 d d8. d16 \bln cs4 cs8\mf cs \bln
  e4 (fs) a8\< b \bln cs4\f cs\< cs \bln b b cs8 b \bln a4 a\> a \bln
  % 16
  g2 g4 \bln e8 e e4 e8\p e \bln  e4 e2 \breathe f2 f4 \bln e2. \fermata \bln
  %19b
  e8\mp e \bln a,4 a b8 b \bln cs2. \breathe \bln a2\p a \breathe \bln 
  g1\pp\> \bln <b e,>1 <>\! \bar "|."
  \cadenzaOff
}

sopranoVerse = \lyricmode {
  Thou shalt know Him when He comes
  Not by an -- y din of drums,
  Nor His man -- ners nor his airs,
  Nor by an -- y thing He wears.
  Thou shalt know Him when He comes,
  Not by His crown or by His gown,
  But His com -- ing known shall be,
  By the ho -- ly har -- mo -- ny which His com -- ing makes in thee.
  Thou shalt know Him when He comes.
  A -- men, a -- men.
}

altoVerse = \lyricmode {
 Thou shalt know Him when He comes
  Not by drums,
  Nor  man -- ners nor airs,
  nor an -- y thing He wears.
  Thou shalt know Him when He comes,
  Not by crown or by gown,
  But His com -- ing known shall be,
  By the ho -- ly har -- mo -- ny which His com -- ing makes in thee.
  Thou shalt know Him when He comes.
  A -- men, a -- men.
  
}

tenorVerse = \lyricmode {
 Thou shalt know Him when He comes
  Not by drums,
  Nor his airs,
  Nor by an -- y thing He wears.
  Thou shalt know Him when He comes,
  Not by crown or by gown,
  But His com -- ing known shall be,
  By the ho -- ly har -- mo -- ny which His com -- ing makes in thee.
  Thou shalt know Him when He comes.
  A -- men, a -- men.
}

bassVerse = \lyricmode {
 Thou shalt know Him when He comes
  Not by drums,
  Nor his airs,
  Nor an -- y thing He wears.
  Thou shalt know Him when He comes,
  Not by crown or by gown,
  But His com -- ing known shall be,
  By the ho -- ly har -- mo -- ny which His com -- ing makes in thee.
  Thou shalt know Him when He comes.
  A -- men, a -- men.
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
       \set Score.midiInstrument = "voice oohs"
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.midiPanPosition = #1
       \set Score.tempoWholesPerMinute = #(ly:make-moment 66 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiPanPosition = #-1
       \set Staff.midiInstrument =  "bright acoustic" %$midiInstrument
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
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
      midiInstrument = "viola"
      instrumentName = "Alto"
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      midiInstrument = "cello"
      instrumentName = "Tenor"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerse }
    \new Staff \with {
      midiInstrument = "tuba"
      instrumentName = "Bass"
    } { \clef bass \bass }
    \addlyrics { \bassVerse }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 66 4)
    }
  }
}
% Rehearsal MIDI files:
\book { % soprano
        \bookOutputSuffix "soprano"
        \score {
          \rehearsalMidi "soprano" "bright acoustic" \sopranoVerse
          \midi { }
        }
}
 
\book { % alto
        \bookOutputSuffix "alto"
        \score {
          \rehearsalMidi "alto" "clarinet" \altoVerse
          \midi { }
        }
}

\book { % tenor
        \bookOutputSuffix "tenor"
        \score {
          \rehearsalMidi "tenor" "cello" \tenorVerse
          \midi { }
        }
}

\book { % bass
        \bookOutputSuffix "bass"
        \score {
          \rehearsalMidi "bass" "contrabass" \bassVerse
          \midi { }
        }
}

