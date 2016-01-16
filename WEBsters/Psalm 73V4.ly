\version "2.17.11"

\include "english.ly"

\header {
  title = "Psalm 73"
}

\paper {
  #(set-paper-size "letter")
  ragged-bottom =##f
  ragged-last = ##f
  system-system-spacing #'padding = #5
}

global = {
  \key f \major
  \time 4/4
}

sopranoOne = \relative c' {
  \global
  
  % Music follows here.
  \partial 2 r2
  \repeat volta 4 {
    c4 d f4. f8 a a a16 g8 f16 ~f2 |
    d4 e f4. d8 f f f16 d8 c16 ~c2 |
    c4 d f4. f8 a a a16 g8 f16 ~f4. f8 |
    a8 a bf a a16 g16 ~g8 ~g8 f16 f g8 f a16 g8. f2 |
  }
  r8 f8 f f f e e e e d d d ~d2  |
  r8 f8 f f f e e e e d d d ~d2 |
  r8 bf' bf bf bf a a a a g g g ~g2 |
  r8 bf bf bf bf a a a a g g g ~g2 |
  r8 c c c c bf a g g f f f ~f2 |
  r8 c' c c c bf a g g f f f ~f2 |
  r8 d' d d d c c a a g g g ~g2 |
  r8 d' d d d c c a a g g g ~g2 |
  %27
  r2 r4 c, a'2. g4 bf2. a4 a4. g8 g2 r2 r4 f4 g2. f4 |
  a2. g4 f1 r2 r4 c4 a'2. g4 bf2. a4 a4. g8 g2 r2 r4 f g2. f4 a2. g4 |
  f1 R1 c4 d f4. f8 a a a16 g8 f16 ~f2 d4 e f4. d8 f f f16 d8 c16 ~c2 |
  c4 d f4. f8 a a a16 g8 f16 ~f4. f8 |
  a8 a bf a a16 g ~g8 ~g f16 ~f g8 f a16 g8. f2 |
  R1
  
}

sopranoTwo = \relative c' {
  \global
  
  % Music follows here.
  \partial 2 r2
  \repeat volta 4 {
    c4 bf c4. c8 f f f16 d8 c16 ~c2 d4 c d4. d8 |
    d d d16 d8 c16 ~c2 c4 bf c4. c8 f f e16 e8 d16 ~d4. df8 |
    f8 f f f e16 e ~e8 ~e8 d16 d e8 d e16 d8. c2 |
  }
  r8 d d d d c c c bf bf bf bf ~bf2  |
  r8 d d d d c c c bf bf bf bf ~bf2 |
  r8 g' g g g f f f f e f e ~e2 |
  r8 g g g g f g f f e d e ~e2 |
  r8 a a a a g f e d d d d ~d2 |
  r8 a' a a a g f e d d d d ~d2 |
  r8 bf' bf bf bf a bf a f e e e ~e2 |
  r8 bf' bf bf bf a bf a f e e e ~e2 |
  r2 r4 c4 f2. e4 f2. f4 f4. e8 e2 r2 r4 c d2. c4 |
  d2. e4 c1 r2 r4 c f2. e4 f2. f4 f4. e8 e2 r2 r4 c d2. c4 d2. e4 |
  c1 R1 c4 bf c4. c8 f f f16 d8 c16 ~c2 |
  d4 c d4. d8 d d d16 d8 c16 ~c2 |
  c4 bf c4. c8 |
  f8 f e16 e8 d16 ~d4. df8 f f f f e16 e ~e8 ~e d16 ~d e8 d e16 d8. c2 |
  R1
}

alto = \relative c' {
  \global
  % Music follows here.
  \partial 2 r2
  \repeat volta 4 {
    c4 bf a4. a8 c c8 c16 bf8 a16 ~a2 d4 c bf4. d8 |
    bf bf bf16 bf8 c16 ~c2 c4 bf a4. a8 c c cs16 cs8 a16 ~a4. bf8 |
    c8c d c c16 c ~c8 ~c8 bf16 bf c8 bf c16 bf8. a2 |
  }
  r8 a a a a a a a f f f f ~f2  |
  r8 a a a a a a a f f f f ~f2 |
  r8 d' d d d d d d c c c c ~c2 |
  r8 d d d d d d d c c c c ~c2 |
  r8 e e e e d c bf a a a a ~a2 |
  r8 e' e e e d c bf a a a a ~a2 |
  r8 f' f f f f f f c c c c ~c2 |
  r8 f f f f f f f c c c c ~c2 |
  r2 r4 c c2. c4 d2. c4 c4. c8 c2 |
  r2 r4 a bf2. a4 bf2. c4 a1 |
  r2 r4 c c2. c4 d2. c4 c4. c8 c2 |
  r2 r4 a bf2. a4 bf2. c4 a1 R1 |
  c4 bf a4. a8 c c c16 bf8 a16 ~a2 d4 c bf4. d8 bf bf bf16 bf8 c16 ~c2 |
  c4 bf a4. a8 c c cs16 cs8 a16 ~a4. bf8 |
  c c d c c16 c ~c8 ~c bf16 ~bf c8 bf c16 bf8. a2 R1 |
  \bar "|."
}

dropLyrics =
{
  \override LyricText #'extra-offset = #'(0 . -4)
  \override LyricHyphen #'extra-offset = #'(0 . -4)
  \override LyricExtender #'extra-offset = #'(0 . -4)
}

raiseLyrics =
{
  \revert LyricText #'extra-offset
  \revert LyricHyphen #'extra-offset
  \revert LyricExtender #'extra-offset
}

verseOne = \lyricmode {
  % Lyrics follow here.
  \set stanza = #"1."
  All my life I've sung a jeal -- ous song.
  All my life I've sung a jeal -- ous song.
  All my life I've sung a jeal -- ous song.
  The ev -- il peo -- ple flour -- ish and the good folks suf -- fer wrong.
}
verseTwo = \lyricmode {
  \set stanza = #"2."
  All my life I've walked the way of God.
  All my life I've walked the way of God.
  All my life I've walked the way of God,
  But walk -- ing got me no -- where and I thought it nev -- er would.
}
verseThree = \lyricmode {
  \set stanza = #"3."
  All my life I've watched the wick -- ed rule.
  All my life I've watched the wick -- ed rule.
  All my life I've watched the wick -- ed rule.
  They look down on the god -- ly and they call us sil -- ly fools.
}
verseFour = \lyricmode {
  \set stanza = #"4."
  All my life I've tried to rea -- son why.
  All my life I've tried to rea -- son why.
  All my life I've tried to rea -- son why.
  I could not find the ans -- wers and I lost the will to try.
}
finale = \lyricmode {
  \dropLyrics
  Un -- til I came in -- to your  \raiseLyrics pres -- ence, O God,
  My eyes were o -- pened and my vis -- ion was clear.
  The life I en -- vied is a cas -- tle of sand,
  Fall -- ing to noth -- ing when a strong wind comes near.
  A dream that on -- ly keeps its pow'r in the night,
  That fades and leaves us at the first light of day.
  My life turned up -- side down and now I can see,
  There is a treas -- ure that will not fade a -- way.
  You draw me near to you, O God.
  You hold me in your hand.
  You treat me as an hon -- oured one.
  With your be -- loved I stand.
  Now my song is al -- to -- geth -- er new.
  Now my song is al -- to -- geth -- er new.
  Now my song is al -- to -- geth -- er new.
  For God has changed my vi -- sion as on -- ly God could do.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano I"
    }
    
    \new Voice = "sopI"{ \sopranoOne }
    
    
    \new Lyrics \lyricsto "sopI" {
      <<   \verseOne
           
           \new Lyrics { \set associatedVoice = "sopI"
                         \verseTwo}
           \new Lyrics { \set associatedVoice = "sopI"
                         \verseThree}
           \new Lyrics { \set associatedVoice = "sopI"
                         \verseFour}
      >>
      \finale
    }
%{    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano II"
    }
    \new Voice = "sopII" { \sopranoTwo }
    \new Lyrics \lyricsto "sopII" {
      <<   \verseOne
           
           \new Lyrics { \set associatedVoice = "sopII"
                         \verseTwo}
           \new Lyrics { \set associatedVoice = "sopII"
                         \verseThree}
           \new Lyrics { \set associatedVoice = "sopII"
                         \verseFour}
      >>
      \finale
    }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
    }
    \new Voice = "alto" { \alto }
    %{   \new Lyrics \lyricsto "alto" {
         
         <<
         \verseOne
         \new Lyrics { \set associatedVoice = "alto"
         \verseTwo}
         \new Lyrics { \set associatedVoice = "alto"
         \verseThree}
         \new Lyrics { \set associatedVoice = "alto"
         \verseFour}
         >>
         \finale
         
         }
    %}
    %}
  >> 
  \layout {
    %{    \context {
          \Score
          %\remove "Bar_number_engraver"
          }%}
  }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100/4)
    }
  }
}


%{
  convert-ly (GNU LilyPond) 2.17.14  convert-ly: Processing `'...
  Applying conversion: 2.17.11
%}
