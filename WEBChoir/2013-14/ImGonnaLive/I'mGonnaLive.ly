\version "2.19.2"
\language "english"
\include "articulate.ly"
\header {
  title = "I‘m Gonna Live So God Can Use Me"
  arranger = "Ron Smail"
  poet = "Traditional"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key g \major
  \time 2/2
  \tempo 4=120
}

soprano = \relative c'' {
  \global
  % Music follows here.
  d,1~d4 r d e8d g2 g2~g b4g b4. g8~g2
  ~g4 r4 b8 b4. a8(g4) g8~g2~g2 g8 g4 g8~g1~g4 r d e8 d
  %11
  g2 g~g b4 d  d4. b8~b2~b4 r e8 d4 b8~b2 g~
  g2 a8 b4 g8~g1~g4 r d e8 d g4. g8~g2~g2 b4 g4
  %21
  b4. g8~g2~g4 r b8 b4. a8 (g4) g8~g2~g2 g8 g4 g8~ (g2~g8 d e4 d) r d e8 d
  %27
  g4. g8~g2~g b4 d d4. b8~b2~b4 r e8 d4 b8~b4. g8~g2~g4 r a8 b4 g8~
  %33
  g1~g4 r d e8d g4. g8~g2~g b4 g
  %37
  b4. g8~g2 r4 b2 b4 a8 (g4) g8~g2~g2 g8 g4 g8~
  %41
  (g2~g8 d e d) r2 d4 e8 d g4. g8~g2~g2 b4 d
  %45
  d4. b8~b2~b4 r e8 d4 bf8~bf a4 g8~(g d e d~d4) r bf'8 a4 g8~g1
  %50
  r4 d2 fs8 e \key a \major a2 a~a cs4 a cs4. a8~a2~a4 r c8 c4.
  %55
  b8 (a4) fs8~fs2~fs a8 a4 a8~(a2~a8 e fs e) r2 e4 fs8 e a2 a2~
  %60
  a2 cs4 e e4. cs8~cs2~cs fs8 e4 cs8~cs4. a8~a2~a4 r b8 cs4 a8~
  %65
  a1~a4 r e fs8 e a4. a8~a2~a cs4 a
  %69
  cs4. a8~a2 r4 cs2 cs4 b8 a4 a8~a2~a a8 a4 a8~
  %73
  (a2~a8 e fs e) r2 e'4 fs8 e c8(b4) a8~a2~a cs4 e
  %77
  e4. cs8~cs2~cs4 r fs8 e4 cs8~cs4. a8~a2~a4 r b8 cs4 a8~a1
  %82
  r2 e8e fs e a4. a8~a2~a2 cs4 a cs4. cs8~ (cs4. b8~b2) c8 b4.
  %87
  b8 (a4) a8~a2~a4 r a8 a4 a8 ~ (a2 ~a8 e fs e ~e4) r
  e'8 e fs e cs4. cs8~cs2~
  %92
  cs2 cs8 e (fs e) r4 fs2 ( es4) fs4 r
  e8 fs4 c8 ~ (c4 b) a8 fs f e~e2 c'8 (b) a a~
  %97
  a1 r2 fs'8 e4 cs8~cs4. a8 ~a2~ a2 c8(b) a a~a4 r r2
  %102
  r4 e'2 fs4 c (b) a (fs e) r c'8 (b) a4 a1 \fermata ~ a1 \fermata
}

alto = \relative c' {
  \global
  % Music follows here.
  d1~d4 r d e8d d2 d~d g4 d g4. d8~ (d4 e
  f) r f8 f4. e e8~e2~e e8 e4 d8~d2 e8 e4 d8~d4 r d e8 d
  %11
  d2 d~d g4 a g4. g8~g2~g4 r g8 g4 g8~g2 e~
  %16
  e2 e8 fs4 d8~d4 r e8 e4 d8~d4 r r2 r4 b2 c8b d4 d2.~
  d4 d2 e4 f f2. r4 e2 f4 e e2. r4 d2 e8(d) f4 (e d2)
  %27
  r4 b2 c8 b d4 d2. r4 g2 fs4 g g2. r4 e2 e4 e e fs8 fs4.
  %33
  r4 e~(e8 d) e4 d2 r r4 b8b c4 c8 c d4 d8c b4 b
  %37
  r4 b8b c4 c8c d b4 c8~c d4. e4 e8 e e4 e8 e e4 c2.
  %41
  r4 d8 d d4 e8d f4 (e d2) r4 b8 b c4 c8 c d4 d8 c b4 b
  %45
  r4 g'8 (fs) g fs4 e8~e e4. ~e2 r4 e2 e4 e fs r2 r4 e (~e8 d) e4
  %50
  d4 r r2 \key a \major r4 e2 fs8 e g4 fs a g r
  e2 fs8 ( e) a4 c a8 fs4.
  %55
  r4 c'2 b4 a fs fs8 fs4. r4 e2 fs8 (e) g4 fs e r r e2 fs8 e
  %60
  g4 fs e cs r a'2 b4 a a2 r8 fs~fs4 fs fs fs fs e2.
  %65
  r4 d (~d8 cs ) d4 cs r r2 r4 e8e fs4 fs8 fs8 g4 g8 fs e4 e
  %69
  r4 e8 e fs4 fs8 fs8 g g4 g8~g g4. fs4 fs8 fs fs4 fs8 fs fs4 d2.
  %73
  r4 e8 e e4 fs8 e g4 (fs e2) r4 e8 e fs4 fs8 fs g4 g8 fs e4 e
  %77
  r4 a8 (gs) a gs4 fs8 ~ fs e4. ~e2 r4 fs ~(fs8 es)
  fs4 fs gs r2 r4 fs~ (fs8 e) fs4
  %82
  e4 r e8 e fs e e4. e8~e2~e2 fs4 fs gs4. gs8~(gs a gs g~g2) a8 g4.
  %87
  g8 (fs4) fs8~fs2~fs4 r fs8 fs4 e8~ (e2. d8e~e4)
  r e8e fs e e4. e8~e2~
  %92
  e2 fs8 fs4. r4 gs2. e4 r e8 e4 ds8~ds2 ds8 fs f e~e2 fs4 fs8 e~
  %97
  e2 fs8 fs4 e8~e2 r4. a8~a4. fs8~fs2~fs2 fs4 fs8 e~e2 fs8 fs4 e8~
  %102
  e2. r4 a4 (gs) fs2 (e4) r4 r2
  fs2.\fermata ~(fs8 e16 fs16 e1 \fermata )


}

tenor = \relative c' {
  \global
  % Music follows here.
  d1~d4 r d e8d b2 b~b d4 b d4. b8~b2~
  b4 r d8 d4. d8 (c4) c8~c2~c bf8 bf4 b8~b2 c8 c4 b8~b4 r d e8 d
  %11
  b2 b~b d4 e b4. d8~d2~d4 r b8 d4 cs8~cs2 cs
  %16
  (c) c8 d4 b8~b4 r c8 c4 b8~b4 r r2 r4 d,2 e8 d f4 f2.~
  f4 b2 c4 d d2. r4 g,2 a4 g g2. r4 b2 c8(b) d4 (c b2)
  %27
  r4 g2 a8 g b4 b2. r4 b2 b4 b b2. r4 cs2 cs4 c c c8 c4.
  %33
  r4 c~ (c8 b) c4 b2 r2 r4 d,8 d e4 e8 e f4 f8 e d4 d
  %37
  r4 d8d e4 e8 e f f4 f8~f f4. g4 c8c bf4 bf8 bf g4 e2.
  %41
  r4 b'8 b b4 c8 b d4 (c b2) r4 d,8 d e4 e8 e f4 f8 e d4 d
  %45
  r4 b'8(a) b a4 g8 ~g g4. ~g2 r4 cs~(cs8 bs) cs4 c c r2
  r4 c~ (c8 b ) c4
  %50
  b4 e,2 fs8 e \key a \major
  cs'2 e~e a,4 cs a4. a8~(a e fs4 g) r4 e'8 e4.
  %55
  d4. d8~d2~d2 e8 d4 e8~(e2~e8 cs d cs) r2 e,4 fs8 e cs'2 e ~
  %60
  e2 a,4 cs cs4. a8~a2~a2 bs8 cs4 ds8~ds4. ds8~(ds2 d4) r4 d8 d4 cs8~
  %65
  cs4 r4 r2 R1 r4 cs8 cs d4 d8 d e4 e8 d cs4 cs
  %69
  r4 cs8 cs d4 d8 d e cs4 d8~d e4. d4 d8 d c4 c8 c a4 fs2.
  %73
  r4 cs'8 cs cs4 d8 cs e4(d cs2) r4 cs8 cs d4 d8 d e4 e8 d cs4 cs
  %77
  r4 cs8 (b) cs b4 a8~a a4.~a2 r4 ds4 ~(ds8 css) ds4 d d r2
  r4 d~(d8 cs) d4
  %82
  cs4 r e,8 e fs e cs'4. cs8~cs2~cs d4 d e4. e8~e2~e e8 d4.
  %87
  d8(c4) c8 ~c2 ~c4 r c8 c4 cs8~(cs2. bs8 cs~cs4) r
  e,8 e fs e a4. a8~a2~
  %92
  a2 a8 a4. r4 b2. a4 r a8 a4 a8~(a4 gs) fs8 fs f e~e2 d'4 d8 cs~
  %97
  cs2 c8 c4 cs8~cs2 r4.
  ds8 ~ds4. ds8~ds ds ds d~d4 d d d8 cs~cs2 c8 c4 cs8~
  %102
  cs2. r4 ds2 ds (e4) r r2 c1\fermata (cs1)\fermata

}

bass = \relative c {
  \global
  % Music follows here.
  d1~d4 r d e8 d g2 g~g g4 g g4. g8~g2~
  %6
  g4 r g8 g4. c,4. c8~c4 e g2 g8 g4 g8~g2 g8 g4 g8~g4 r d e8 d
  %11
  g2 g~g g4 fs e4. e8~e2~e4 r e8 e4 a8~a2 a
  %16
  (d,2) d8 d4 g8~g4 r g8 g4 g8~g4 r r2 r4 g,2 g8 g g4 g2.~
  %21
  g4 g2 a4 b4 b2. r4 c2 c4 c c2. r4 g'2 g4 g1
  %27
  r4 d2 e8 d g4 g2. r4 e2 ds4 e e~e4. a,8~a4 b c cs d d d8 d4.
  %33
  r4 g2 g4 g2 r r4 g,8 g a4 a8 a b4 b8 a g4 g
  %37
  r4 g8 g a4 a8 a b g4 a8~a b4. c4 c8 c c4 c8 c c4 bf2.
  %41
  r4 g8g g4 a8 g b4 (a g2) r4 g8 g a4 a8 a b4 b8 a g4 g
  %45
  r4 e'8(ds) e ds4 e8 ~ e8 <e e,>4.~ <e e,> a,8~a4 b c cs d < d d,>
  r2 r4 g,2 g4
  %50
  g4 r r2 \key a \major
  r4 cs2 d8 cs e4 d cs a r4 cs2 d8 (cs) cs4 e cs8 cs4.
  %55
  r4 <d d,>2 <fs fs,>4 <a a,> d, c8 a4. r4 cs2 d8(cs) e4 (d cs) r4 r cs2 d8 cs
  %60
  e4 d cs a r cs2 es4 fs fs2 r8 b, ~b4 b4 cs ds e <e e,>2.
  %65
  r4 fs,~(fs8 fs) e4 a r r2 r4 a8 a b4 b8 b8 cs4 cs8 b a4 a
  %69
  r4 a8 a b4 b8 b8 cs a4 b8~b cs4. d4 d8 d d4 d8 d d4 c2.
  %73
  r4 a8 a a4 b8 a cs4(b a2) r4 a8 a b4 b8 b cs4 cs8 b a4 a
  %77
  r4 fs'8(es) fs es4 fs8~ fs fs4. ~fs b,8 ~b4 cs d ds e <e e,> r2
  r4 a,2 a4
  %82
  a4 r e'8 e fs e a,4. a8~ a2~a b4 b cs4. cs8~(cs4. a8~a2) a8 a4.
  %87
  g8(d'4) d8~d4 fs a r d,8 fs4 a8~ (a2. d,8 a~a4) r
  e'8e fs e a,4. a8~a2~
  %92
  a2 b8 b4. r4 cs2. <cs fs,>4 r <cs fs,>8 <cs fs,>4 b8~b2 b8 fs' f e~e2 e4 e8 a,~
  %97
  a2 d8 d4 a8~a2 r4. b8~b4. b8~b fs' f e~e4 e e e8 a,~a2 d8 d4 a8~
  a2. r4 b2 b2 (e4) r r2 d1 \fermata (a\fermata )

}

sopranoVerse = \lyricmode {
  % Lyrics follow here.
  Oh, __ I'm gon -- na live so __ God can use me __
  an -- y -- where, Lord, __ an -- y -- time! __
  %10
  I'm gon -- na live so __ God can use me __
  an -- y -- where __ Lord, __ an -- y -- time! __
  %18
  I'm gon -- na live so __ God can use me __
  an -- y where, Lord, __ an -- y time! __
  %26
  I'm gon -- na live so __ God can use me __
  an -- y -- where __ Lord, __ an -- y time! __
  %34
  I'm gon -- na work so __ God can use me __
  an -- y -- where, Lord, __ an -- y -- time! __

}

altoVerse = \lyricmode {
  % Lyrics follow here.
  Oh, __ I'm gon -- na live so __ God can use me __
  an -- y -- where, Lord, __ an -- y -- time! __ an -- y -- time! __
  %10
  I'm gon -- na live so __ God can use me __
  an -- y -- where __ Lord, __ an -- y -- time! __ an -- y -- time! __
  %19
  I'm gon -- na live so __ God can use me
  an -- y -- where, Lord, an -- y -- time! __
  I'm gon -- na live so God can use me
  an -- y -- where, Lord, an -- y an -- y time!
  %35
  Gon -- na work, gon -- na work, gon -- na work so,
  gon -- na work, gon -- na work so God can use
  gon -- na work, gon --na work, Lord.
}

tenorVerse = \lyricmode {
  % Lyrics follow here.
  Oh, __ I'm gon -- na live so __ God can use me __
  an -- y -- where, Lord, __ an -- y -- time! __ an -- y -- time! __
  %10
  I'm gon -- na live so __ God can use me __
  an -- y -- where __ Lord, __ an -- y -- time! __ an -- y -- time! __
  %19
  I'm gon -- na live so __ God can use me
  an -- y -- where, Lord, an -- y -- time! __
  I'm gon -- na live so God can use me
  an -- y -- where, Lord, an -- y an -- y time!
  %35
  Gon -- na work, gon -- na work, gon -- na work so,
  gon -- na work, gon -- na work so God can use
  gon -- na work, gon --na work, Lord.
}

bassVerse = \lyricmode {
  % Lyrics follow here.
  Oh, __ I'm gon -- na live so __ God can use me __
  an -- y -- where, an -- y-- where, an -- y -- time! __ an -- y -- time! __
  %10
  I'm gon -- na live so __ God can use me __
  an -- y -- where __ Lord, __ an -- y -- time! __ an -- y -- time! __
  %19
  I'm gon -- na live so __ God can use me
  an -- y -- where, Lord, an -- y -- time! __
  I'm gon -- na live so God can use me an -- y,
  an -- y -- where, Lord, an -- y an -- y time!
  %35
  Gon -- na work, gon -- na work, gon -- na work so,
  gon -- na work, gon -- na work so God can use
  gon -- na work, gon --na work, Lord.
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
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
        \set Score.midiInstrument = "voice oohs"
       \set Score.midiPanPosition = #RIGHT
       \set Score.tempoWholesPerMinute = #(ly:make-moment 120 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = "bright acoustic"
       \set Staff.midiPanPosition = #LEFT
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
 \articulate <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Soprano"
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Alto"
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Tenor"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerse }
    \new Staff \with {
      midiInstrument = "voice oohs"
      instrumentName = "Bass"
    } { \clef bass \bass }
    \addlyrics { \bassVerse }
  >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 148 4)
    }
  }
 
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerse
    \midi { }
  }
}



%{
convert-ly (GNU LilyPond) 2.19.4  convert-ly: Processing `'...
Applying conversion: 2.19.2
%}
