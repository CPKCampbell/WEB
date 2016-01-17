\version "2.17.16"
\language "english"
\header {
  title = "Thou Shalt Know Him"
  instrument = "SSATB Acapella"
  composer = "Mark Sirett"
}
\paper {
  #(set-paper-size "letter")
}

global = {
  \key e \major
  \time 4/4
}
bln = \bar "|"


rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \sopranoVoice }
     \new Staff = "mezzo" \new Voice = "mezzoSoprano" { s1*0\f \mezzoSopranoVoice }
     \new Staff = "alto" \new Voice = "alto" { s1*0\f \altoVoice }
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenorVoice }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bassVoice }
     \context Staff = $name {
       \set Score.midiInstrument = "voice oohs"
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

sopranoVoice = \relative c'' {
  \global
  
  \cadenzaOn
  \repeat volta 2 {
    e,8 b' \bln b4. gs8 fs gs \bln e2 \bln e8 cs' cs b b8. gs16
    b2. cs8 e \bln e4. ds16 (cs) ds8 e \bln b2 \bln
    e,8 b' a gs \bln fs2 gs4 gs2. \bln
  }
  %9
  gs8 gs \bln cs4. b8 gs8 fs \bln gs4 \tuplet 3/2 {gs8 gs gs} \bln
  e'4. ds8 b a \bln cs4 ds cs \bln gs'4. fs8 e8 cs \bln cs4 a cs \bln
  %16
  e4 (d) c \bln b8. g16 g4 g8 g \bln a4 e2. \breathe e4 d e2. \fermata \bln
  %19b
  e8 b' \bln b4. gs8 fs gs \bln e2. \breathe \bln e2 e \breathe \bln e1 e \bar "||"
  
  \cadenzaOff
  
  
}

verseSopranoVoice = \lyricmode {
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

mezzoSopranoVoice = \relative c'' {
  
  \global
  \cadenzaOn
  \repeat volta 2 {
    e,8 ds \bln cs4 e ds8 ds \bln e4 (ds) \bln 
    cs8 (ds e fs) ds (e)
    ds4 (gs fs)  e4 gs4 fs e \bln e8 (fs) ds4 \bln
    cs4 e e8 (cs ds4) ds4 e2.  \bln
    % fs4 fs fs8. fs16 e4 fs8 e 
  }
  %9
  fs8 e fs4 fs4 fs8. fs16 e4 fs8 e a2 fs8 a gs4 gs gs e'4.ds8 b gs a4 gs fs 
  c'4 (b) a \bln b8. g16 g4 g8 g a4 e2. \breathe e4 d e2. \fermata
  e8 ds cs4 e ds8 ds ds4 (cs2) \breathe d2 d \breathe c1 b
  %16
  
  
  
  \cadenzaOff
  
  
}

verseMezzoSopranoVoice = \lyricmode {
  Thou shalt know Him when He comes
  Not by drums,
  Nor man -- ners nor airs,
  Nor an -- y thing He wears.
  Thou shalt know Him when He comes,
  Not by crown or by gown,
  But His com -- ing known shall be,
  By the ho -- ly har -- mo -- ny which His com -- ing makes in thee.
  Thou shalt know Him when He comes.
  A -- men, a -- men.
  
}

altoVoice = \relative c' {
  \global
  \cadenzaOn
  \repeat volta 2 {
    e8 ds \bln cs4 e ds8 ds \bln e4 (ds) \bln
    cs8 (ds e fs) ds (e) 
    b4. (cs8 ds4) cs4 b a b8 (a) gs2 cs4 e e8 (cs ds4)
    ds4 b2. 
  }
  %9
  fs'8 e fs4 fs fs8. fs16 e4 fs8 e 
  fs2 fs8 fs8 es4 es es b' b b8  gs a4 gs fs
  %16
  g2 a4 g8 fs e4 e8 e e4 cs2 \breathe b b4 b2. \fermata
  %19b
  e8 ds cs4 e ds8 ds ds4 (cs2) \breathe a2 a \breathe g1 gs
  \cadenzaOff
  
  
}

verseAltoVoice = \lyricmode {
  Thou shalt know Him when He comes
  Not by drums,
  Nor  man -- ners nor airs,
  an -- y thing He wears.
  Thou shalt know Him when He comes,
  Not by crown or by gown,
  But His com -- ing known shall be,
  By the ho -- ly har -- mo -- ny which His com -- ing makes in thee.
  Thou shalt know Him when He comes.
  A -- men, a -- men.
  
}

tenorVoice = \relative c' {
  \global
  \cadenzaOn
  \repeat volta 2 {
    gs8 gs \bln e4 b' a8 a \bln gs2 \bln e8 (fs a4) gs8 (a) \bln
    fs2.e4~e2  e4 cs2 
    e8 fs a b a2 b4 e,2.
  }
  %9
  gs8 gs a4 a b8. b16 cs4 cs8 cs
  cs4. (b8) cs8 ds ds4 ds cs e e e8 e e4 cs cs
  %16
  
  e2 e4 b8 b b4 d8 d cs4 a2 \breathe a a4 gs2. \fermata
  %19b
  gs8 gs e4 b' a8 a gs2. \breathe fs2 fs \breathe e1 b1
  \cadenzaOff  
  
}

verseTenorVoice = \lyricmode {
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

bassVoice = \relative c {
  \global
  \cadenzaOn
  \repeat volta 2 {
    e8 e \bln a,4 a b8 b \bln cs4 (b) \bln a (fs) cs' \bln
    b2. a4~ \bln  a2  gs4 \bln cs b \bln
    a gs \bln b2 b4 \bln e,2.
  }
  %9
  fs'8 e \bln d4 d d8. d16 \bln cs4 cs8 cs \bln
  e4 (fs) a8 b \bln cs4 cs cs \bln b b cs8 b \bln a4 a a \bln
  % 16
  g2 g4 \bln e8 e e4 e8 e \bln  e4 e2 \breathe f2 f4 \bln e2. \fermata \bln
  %19b
  e8 e \bln a,4 a b8 b \bln cs2. \breathe \bln 
  a2 a \breathe \bln g1 \bln e1 \bar "||"
  \cadenzaOff
  
}

verseBassVoice = \lyricmode {
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

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "voice oohs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

mezzoSopranoVoicePart = \new Staff \with {
  instrumentName = "Mezzo-soprano"
  midiInstrument = "voice oohs"
} { \mezzoSopranoVoice }
\addlyrics { \verseMezzoSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "voice oohs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "voice oohs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "voice oohs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

\score {
  <<
    \sopranoVoicePart
    \mezzoSopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
    
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
          \rehearsalMidi "soprano" "bright acoustic" \verseSopranoVoice 
          \midi { }
        }
}

\book { % mezzoSoprano
        \bookOutputSuffix "mezzoSoprano"
        \score {
          \rehearsalMidi "mezzoSoprano" "bright acoustic" \verseMezzoSopranoVoice 
          \midi { }
        }
}
\book { % alto
        \bookOutputSuffix "alto"
        \score {
          \rehearsalMidi "alto" "clarinet" \verseAltoVoice
          \midi { }
        }
}

\book { % tenor
        \bookOutputSuffix "tenor"
        \score {
          \rehearsalMidi "tenor" "cello" \verseTenorVoice
          \midi { }
        }
}

\book { % bass
        \bookOutputSuffix "bass"
        \score {
          \rehearsalMidi "bass" "contrabass" \verseBassVoice
          \midi { }
        }
}
