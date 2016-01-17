\version "2.19.14"

\language  "english"

\header {
  title = "Sing An Old Song To The Lord"
  instrument = "SATB, accompanied"
  composer = "Pepper Choplin (ASCAP)"
  copyright = "Copyright 2005, Glory Sound"
  tagline = "engraved with LilyPond by CPKCMusic"
}

global = {
  \key d \major
  \numericTimeSignature
  \time 3/4
  \tempo "Feeling of one beat per measure" 2.=46
  \set Score.markFormatter = #format-mark-box-barnumbers
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "descant" \new Voice = "descant" { s1*0\f \descant }
     \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \soprano }
     \new Staff = "alto" \new Voice = "alto" { s1*0\f \alto }
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiInstrument = "voice oohs"
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 138 4)
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

rm = { \mark \default }
soprano = \relative c' {
  \global
  \dynamicUp
  R2.*4 \rm
  %5
  d2-> d4 a'2 a4 g2 e4 d2.~ d~ d |
  %11
  R2. r4 r a' \rm
  a2 a4 d2 d4 c2.~\> c~\p c r4 r d4\mp |
  %19
  \rm d2 a4 a2 d4 c2 a4 |
  a2 a4 a2 a4 g2 e4 d2.~ d |
  R2. R2. \rm %29
  d2->\mf d4 a'2 a4 g2 e4 |
  d2 a'4 a2 a8 (d) d2 d4 c2.~ c2 d4 |
  d2 a4 a2 d4 c2 a4 a2 a4 a2 a4 |
  g2 e4 d2.~\< d R2.\! r4 r d4\f |
  % \rm %47 need a segno here
  % \repeat volta 2 {
  d'2-> cs4 a-> b2-> d4-> ( cs ) a b-> r b c2-> b4 |
  a2 g4  a2.~ a2 d,4 d'2-> cs4 a b2 |
  d4-> cs-> a b2 b4 c2 b4\mark \markup { \tiny \italic "2nd time to coda"  \musicglyph #"scripts.coda"   }
  a2 g4

  a2.~\> a2 r4\! R2. R \rm |
  %65
  d,2\mf d4 a'2 a4 g2 e4 d2 a'4 a2 a4 d2 d4 |
  c2.~ c4 r r \rm
  %73
  R2. R R R R R R   \mark  \markup { \tiny \italic " D.S. al coda"  \musicglyph #"scripts.coda" }
  r4 r d,4
  d'2-> cs4 a-> b2-> d4-> ( cs ) a b-> r b c2-> b4 |
  a2 g4  a2.~ a2 d,4 d'2-> cs4 a b2 |
  d4-> cs-> a b2 b4 c2 b4\mark \markup { \tiny \italic "2nd time to coda"  \musicglyph #"scripts.coda"   }
  a2 g4
  %81
  a2.~\> a2 r4\!

  R2.^\markup { \tiny \italic "rit." }
  \tempo 4 = 78
  r4 r fs8\f e \rm
  % 85
  d4 d fs8 a e4 e fs8 a b4 a fs8 e d2 fs8 e d4 d fs8 a |
  e4 e fs8 a b4 a fs8 e d2 a'8 b16 ( cs ) d4 cs b8 a |
  b8 (a) fs4 a8 b16 ( cs ) d4 cs b8 a d2 fs,8 e d4 d fs8 a |
  e4 e fs8 a b4 a b8 d d2.~ d R2. R2. |
  %104
  \rm \tempo 2.=46 d2\f-> d4 c2 c4 c2 e4 d2 a4 |
  a2 a4 d2 d4 c2.~ c4 r d4 d2 a4 a2 d4 |
  c2 a4 a2 a4 a2 a4 g2 e4 d2.~ |
  d4 r4 d'4 d2-> a4 a2-> d4 |
  c2-> a4 a2 a4 a2 a4 g2 e4 d2.-> R2. |
  a'2 a4 g2 c4 d2.->\ff r4 c e->
  d2.~^\markup { \tiny \italic "no rit. " } d2.~ d2. R2. \bar "|."

}

alto = \relative c' {
  \global
  \dynamicDown
  R2.*4
  %5
  d2-> d4 a'2 a4 g2 e4 d2.~ d~ d |
  %11
  R2. r4 r a'
  a2 a4 d2 d4 c2.~\> c~\p c r4 r d4\mp |
  %19
  d2 a4 a2 d4 c2 a4 |
  a2 a4 a2 a4 g2 e4 d2.~ d |
  R2. R2.
  %29
  d2->\mf d4 f2 d4 e2 e4 |
  d2 e4 fs2 g4 a2 fs4 e2.~ e2 e4 |
  %37
  fs2 e4 d2 fs4 e2 d4 e2 c4 f2 c4 |
  e2 c4 d2.~\< d2. R2.\! r4 r4 d4\f |
  %47
  b'2 a4 fs g2 b4 ( a) fs g r g a2 g4 |
  f2 e4 f2.~ f2 d4 b'2 a4 fs g2 |
  b4 a fs g2 g4 f2 g4 f2 e4 \break  |
  e2.~\> e2 r4\! R2. R2. |
  %65
  d2\mf d4 a'2 a4 g2 e4 d2 a'4 a2 a4 fs2 g4 |
  a2.~ a4 r r |
  %73
  R2.*7 r4 r d,4 \bar "||" \break
  b'2 a4 fs g2 b4 ( a) fs g r g a2 g4 |
  f2 e4 f2.~ f2 d4 b'2 a4 fs g2 |
  b4 a fs g2 g4 f2 g4 f2 e4
  %81 Coda
  e2.~\> e2 r4\! R2. r4 r fs8\f e
  % 85
  d4 d fs8 a e4 e fs8 a b4 a fs8 e d2 fs8 e d4 d fs8 a |
  e4 e fs8 a b4 a fs8 e d2 a'8 b16 ( cs ) d4 cs b8 a |
  b8 (a) fs4 a8 b16 ( cs ) d4 cs b8 a d2 fs,8 e d4 d fs8 a |
  e4 e fs8 a b4 a fs8 e d2.~ d R2. R2. |
  %104
  d2\f d4 a'2 a4 g2 e4 d2 a'4 a2 a4 fs2 g4 |
  a2.~ a4 r a4 a2 fs4 fs2 fs4 |
  a2 e4 e2 e4 f2 c4 e2 c4 d2.~ |
  d4 r a' a2 fs4 fs2 fs4 a2 e4 e2 e4 |
  f2 f4 e2 c4 d2. R2. |
  fs2 fs4 e2 g4 a2.\ff |
  r4 g c a2.~ a~ a R2. \bar "|."
}

tenor = \relative c' {
  \global
  R2.*11 r4 r4 a
  %13
  a2 a4 d2 d4 c2.~\> c~\p c r4 r d4\mp |
  %19
  d2 a4 a2 d4 c2 a4 |
  a2 a4 a2 a4 g2 e4 d2.~ d |
  R2. R2.
  %29
  a'2->\mf a4 c2 c4 c2 c4 |
  a2 a4 a2 a4 fs2 a4 a2.~ a2 g4 |
  %37
  a2 g4 fs2 a4 a2 b4 c2 a4 c2 a4 |
  c2 g4 a2.~\< a2. R2.\! r4 r d4\f |
  %47
  d2 cs4 a b2 d4 ( cs ) a b r b c2 b4 |
  a2 g4 a2.~ a2 d4 d2 cs4 a b2 |
  d4 cs a b2 b4 c2 b4 a2 b4 \break |
  %61
  cs2.~\> cs2 r4\! R2. R2. |
  %65
  R2.*7 r4 r d4\mf |
  %73
  d2 a4 a2 d4 c2 a4 |
  a2 a4 a2 a4 g2 e4 d2.~ d4 r d'\f  \bar "||" \break |
  d2 cs4 a b2 d4 ( cs ) a b r b c2 b4 |
  a2 g4 a2.~ a2 d4 d2 cs4 a b2 |
  d4 cs a b2 b4 c2 b4 a2 b4
  % CODA
  cs2.~-> cs2 r4 R2. r4 r  fs,8\f e
  % 85
  d4 d fs8 a e4 e fs8 a b4 a fs8 e d2 fs8 e d4 d fs8 a |
  e4 e fs8 a b4 a fs8 e d2 a'8 b16 ( cs ) d4 cs b8 a |
  b8 (a) fs4 a8 b16 ( cs ) d4 cs b8 a d2 fs,8 e d4 d fs8 a |
  e4 e fs8 a b4 a b8 d d2.~ d R2. R2. |
  %104
  d2\f d4 a2 a4 c2 e4 d2 a4 |
  a2 d4 d2 d4 e2.~ e4 r d4 fs2 d4 d2 d4 |
  e2 c4 e2 e4 c2 a4 c2 g4 a2.~ |
  a4 r4 d4 fs2 d4 d2 d4 e2 c4 c2 c4 |
  c2 a4 c2 g4 a2 d4 c2 e4 d2. r4 c e |
  d2.\ff r4 e4 < g e >4 fs2. ~ fs~ fs R2. \bar "|."
}

bass = \relative c {
  \global
  % Music follows here.
  \global
  R2.*11 r4 r4 a'
  %13
  a2 a4 d2 d4 c2.~\> c~\p c r4 r d4\mp |
  %19
  d2 a4 a2 d4 c2 a4 |
  a2 a4 a2 a4 g2 e4 d2.~ d |
  R2. R2.
  %29
  d2\mf d4 f2 g4 a2 a4 |
  d,2 d4 d2 d 4 d2 d4 a2.~ a2 a4 |
  %37
  d2 d4 d2 d4 a2 a4 a2 e'4 f2 f4 |
  e2 e4 d2.~\< d2. |
  R2.\! r4 r d4\f |
  %47
  b'2 a4 fs g2 b4 ( a ) fs g r g a2 g4 |
  f2 e4 f2.~ f2 d4 b'2 a4 fs g2 |
  b4 a fs g2 g4 a2 g4 f2 g4 \break |
  %61
  a2.~\> a2 r4\! R2. R2. |
  %65
  R2.*7 r4 r d4\mf |
  %73
  d2 a4 a2 d4 c2 a4 |
  a2 a4 a2 a4 g2 e4 d2.~ d4 r d\f  \bar "||" \break  |
  b'2 a4 fs g2 b4 ( a ) fs g r g a2 g4 |
  f2 e4 f2.~ f2 d4 b'2 a4 fs g2 |
  b4 a fs g2 g4 a2 g4 f2 g4
  % CODA
  a2.~-> a2 r4 R2. r4 r  fs8\f e
  % 85
  d4 d fs8 a e4 e fs8 a b4 a fs8 e d2 fs8 e d4 d fs8 a |
  e4 e fs8 a b4 a fs8 e d2 a'8 b16 ( cs ) d4 cs b8 a |
  b8 (a) fs4 a8 b16 ( cs ) d4 cs b8 a d2 fs,8 e d4 d fs8 a |
  e4 e fs8 a b4 a fs8 e d2.~ d R2. R2. |
  %104
  d2\f d4 a'2 a4 g2 e4 d2 d4 |
  d2 < a' d >4 fs2 fs4  a2.~ a4 r a4 |
  d2  d,4 d2 d4 |
  a'2  a,4 a2 a4 f'2 f4  e2 e4 d2.~  |
  d4 r4 d4 d'2  d,4 d2 d4  a'2 a4 a2 a4 |
  f2 f4 e2 e4 d2_"Ev - er last - ing Lord" d4  a'2 a4 d,2.  |
  r4 a' a d,2.\ff  r4 a' a  d2.~ d~ d R2. \bar "|."

}
aligner = \relative {
  \global
  R2.*4
  %5
  d2 d4 a'2 a4 g2 e4 d2.~ d~ d |
  %11
  R2. r4 r a' \rm
  a2 a4 d2 d4 c2.~ c~ c r4 r d4 |
  %19
  \rm d2 a4 a2 d4 c2 a4 |
  a2 a4 a2 a4 g2 e4 d2.~ d |
  R2. R2. \rm %29
  d2 d4 a'2 a4 g2 e4 |
  d2 a'4 a2 a8 (d) d2 d4 c2.~ c2 d4 |
  d2 a4 a2 d4 c2 a4 a2 a4 a2 a4 |
  g2 e4 d2.~ d R2. r4 r d4|
  %47 need a segno here
  d'2 cs4 a b2 d4 ( cs ) a b r b c2 b4 |
  a2 g4  a2.~ a2 d,4 d'2 cs4 a b2 |
  d4 cs a b2 b4 c2 b4
  a2 g4  |

  a2.~ a2 r4R2. R  |
  %65
  d,2 d4 a'2 a4 g2 e4 d2 a'4 a2 a4 d2 d4 |
  c2.~ c4 r d4
  %73
  d2 a4 a2 d4 c2 a4 |
  a2 a4 a2 a4 g2 e4 d2.~ d4 r  d,4
  d'2 cs4 a b2 d4 ( cs ) a b r b c2 b4 |
  a2 g4  a2.~ a2 d,4 d'2 cs4 a b2 |
  d4 cs a b2 b4 c2 b4
  a2 g4
  %81
  a'2.~ a2 r4 R2.
  r4 r fs8 e
  % 85
  d4 d fs8 a e4 e fs8 a b4 a fs8 e d2 fs8 e d4 d fs8 a |
  e4 e fs8 a b4 a fs8 e d2 a'8 b16 ( cs ) d4 cs b8 a |
  b8 (a) fs4 a8 b16 ( cs ) d4 cs b8 a d2 fs,8 e d4 d fs8 a |
  e4 e fs8 a b4 a b8 d d2.~ d R2. R2. |
  %104
  d2 d4 c2 c4 c2 e4 d2 a4 |
  a2 a4 d2 d4 c2.~ c4 r d4 d2 a4 a2 d4 |
  c2 a4 a2 a4 a2 a4 g2 e4 d2.~ |
  d4 r4 d'4 d2 a4 a2 d4 |
  c2 a4 a2 a4 a2 a4 g2 e4 d2.-> R2. |
  a'2 a4 g2 c4 d2. r4 c e
  d2.~ d2.~ d2. R2.
}
descant = \relative c'' {
  R2.*117
  %104
  \tempo 2. = 46
  d2\f d4 c2 c4 c2 e4 d2 a4 |
  d2 d4 fs2 fs4 e2.~ e4 r4 d4 fs2 d4 d2 fs4 |
  e2 c4 c2 c4 c2 c4 c2 g4 a2.~ |
  a4 r4 d4 fs2 d4 d2 d4 e2 c4 c2 c4 |
  c2 c4 c2 e4 d2. R2. d2 d4 c2 e4 |
  d2.\ff r4 c4 e fs2.~ fs~ fs R2. \bar "|."
}

descantWords = \lyricmode {
  Sing an old song to the Lord
  like those who came be -- fore. __
  We'll join all heav -- en's saints
  to praise the ev -- er -- last -- ing Lord. __
  We'll join all heav -- en's saints
  to praise the ev -- er -- last -- ing Lord,
  ev -- er -- last -- ing Lord.
  Praise the Lord! __
}
verse = \lyricmode {
  Sing an old song to the Lord, __
  a song that's prov -- en true. __
  And breathe new breath in -- to the words
  and make the old song new. __
  Sing the migh -- ty hymns of faith
  from gen -- er -- a -- tions past. __
  Their mu -- sic ech -- oes through the years,
  their time -- less words still last. __
  Now sing the old songs,
  sing __ them strong and teach them to the young. __
  God's word is plan -- ted deep in the heart
  each time the hymns are sung. __
  Man -- y walked this path be -- fore.
  They han -- ded down their best; __
  the songs that helped them live their faith
  through every tri -- al and test. __

  Now sing the old songs,
  sing __ them strong and teach them to the young. __
  God's word is plan -- ted deep in the heart
  each time the hymns are sung. __

  Come, Thou Fount of eve -- ry bless -- ing,
  tune my heart to sing thy grace;
  streams of mer -- cy, nev -- er ceas -- ing,
  call for songs of loud -- est praise.
  Teach me __ some me -- lo -- dious son -- net
  sung by flam -- ing tongues a -- bove.
  Praise the mount I'm fixed up -- on it,
  mount of Thy re -- deem -- ing love. __
  Sing an old song to the Lord
  like those who came be -- fore. __
  We'll join all heav -- en's saints
  to praise the ev -- er -- last -- ing Lord. __
  We'll join all heav --  en's saints
  to praise the ev -- er -- last -- ing Lord,
  ev -- er -- last -- ing Lord.
  Praise the Lord! __
}
\score {
  \new ChoirStaff <<
    \new Staff  \with {
      midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { "Descant" }
      shortInstrumentName = \markup \center-column { "Desc." }
    }
    <<
      \new Voice = "descant" { \dynamicUp \voiceOne \descant }
    >>
    \new Lyrics  \lyricsto "descant" \descantWords
    \new Staff  \with {
      midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { "Soprano" "Alto" }
      shortInstrumentName = \markup \center-column { "S." "A." }
    }
    <<
      \set Staff.soloText = #""
      \set Staff.soloIIText = #""
      \set Staff.aDueText = #"unison"
      \partcombine \soprano \alto
      \new NullVoice = "aligner" \aligner
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "aligner" \verse
    >>
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
      shortInstrumentName = \markup \center-column { "T." "B." }
    } <<
      \set Staff.soloText = #""
      \set Staff.soloIIText = #""
      \set Staff.aDueText = #"unison"
      \clef bass
      \partcombine \tenor \bass
    >>

  >>
  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi { }
}

% Rehearsal MIDI files:

\book {
  \bookOutputSuffix "descant"
  \score {
    \rehearsalMidi "descant" "flute" \descantWords
    \midi { }
  }
}

\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "violin" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "viola"  \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "cello"  \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "contrabass"  \verse
    \midi { }
  }
}



%{
  convert-ly (GNU LilyPond) 2.19.0  convert-ly: Processing `'...
  Applying conversion: 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
  2.17.29
%}
