% Lily wbf here -- automatically converted by /usr/local/bin/midi2ly from soon-and-very-soon.mid
\version "2.19.16"
\language "english"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }

}

global = {
  \key f \major
  \tempo 4 = 120
  \time 4/4
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  \override Score.BarNumber.font-size = #2
  \override Score.BarNumber.stencil = #(make-stencil-circler 0.1 0.25 ly:text-interface::print)
}


trackBchannelA = {
  \set Staff.instrumentName = "S-A"
}

alto = \relative c {
  \global
  \voiceTwo
  R1*4 R1  c'4  c4  c4 bf8 a8~ a2 d4 d4  c4. c8 c4 bf8 a8~ a2. r4
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

soprano = \relative c {
  \global
  \voiceOne
  %
    R1*4 R1  c'4  c4  c4 bf8 a8~ a2 d4 d4  c4. c8 c4 bf8 a8~ a2. r4
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

}

trackB = <<
  \context Voice = voiceA \trackBchannelA
%  \context Voice = voiceB \alto
  \context Voice = voiceC \soprano
>>


trackCchannelA = {
  \set Staff.instrumentName = "T-B"
}

tenor = \relative c {
  \global
  \voiceTwo
  R1*5 a'4  a4  a4
  | % 7
  g8 f2 r8 bf4
  | % 8
  bf4  a4  a8 a4
  | % 9
  g8 f2. r4. g4  g4  g4

  | % 11
  f8 e2 r8 bf4
  | % 12
  bf4  a4  a8 a4
  | % 13
  g8 f2. r4. a4  a4  a4

  | % 15
  g8 f f4. r8 bf4
  | % 16
  bf4  a4  a8 a4
  | % 17
  g8 f2 r4.
  | % 18
  a8 a c4  bf4
  | % 19
  bf8 bf a4  g4 r8
  | % 20
  bf4  a4  a8 a4
  | % 21
  g8 f1 r8*17 <f c' >4  <f c' >4  <c c' >4

  | % 25
  <c bf' >8 <f a >2 r8 <bf, d' >4
  | % 26
  <bf d' >4  <f' c' >4  <f c' >8
  <c c' >4
  | % 27
  <c bf' >8 <f a >2. r4. <c bf' >4  <c bf' >4
  <g bf' >4
  | % 29
  <g a' >8 <c g' >2 r8 <c c' >4
  | % 30
  <c c' >4  <f c' >4  <f c' >8
  <c c' >4
  | % 31
  <c bf' >8 <f a >2. r4. <f c' >4  <f c' >4
  <c c' >4
  | % 33
  <c bf' >8 <f a >2 r8 <bf, d' >4
  | % 34
  <bf d' >4  <f' c' >4  <f c' >8
  <c c' >4
  | % 35
  <cs bf' >8 <d a' >2 r4.
  | % 36
  <c c' >8 <c c' >8 <a ef' >4  <bf d' >4

  | % 37
  <bf d' >8 <bf d' >8 <c c' >4  <cs bf' >4

  | % 38
  <bf cs' >4  <c c' >4  <c c' >8
  <c c' >4
  | % 39
  <c bf' >8 <f a >4 r4 <f c' >4. r8
  | % 42
  <f a >4  <g b >1 <c, bf' >8*7 r8 <f a >8*5
  r8*11 <g d' >4  <g d' >4  <d d' >4

  | % 47
  <d c' >8 <g b >2 r8 <c, e' >4
  | % 48
  <c e' >4  <g' d' >4  <g d' >8
  <d d' >4
  | % 49
  <d c' >8 <g b >2. r4. <d c' >4  <d c' >4
  <a c' >4
  | % 51
  <a b' >8 d d4. r8 <d d' >4
  | % 52
  <d d' >4  <g d' >4  <g d' >8
  <d d' >4
  | % 53
  <d c' >8 <g b >8 <g b >8*5 r4. <g d' >4  <g d' >4
  <d d' >4
  | % 55
  <d c' >8 <g b >2 r8 <c, e' >4
  | % 56
  <c e' >4  <g' d' >4  <g d' >8
  <d d' >4
  | % 57
  <ef c' >8 <e b' >2 r4.
  | % 58
  <d d' >8 <d d' >8 <b f'' >4  <c e' >4

  | % 59
  <c e' >8 <c e' >8 <d d' >4  <ef c' >4

  | % 60
  <c ef' >4  <d d' >4  <d d' >8
  <d d' >4
  | % 61
  <d c' >8 <g, b' >8 <g b' >8*5 r4. d''4  d4
  d4
  | % 63
  c8 b4  e4
  | % 64
  e4  d4  <e, d' >8 d b
  | % 65
  <d c' >8 g,4  b4  c4

  | % 66
  cs8 d2 r8 <a c' >4
  | % 67
  <a b' >8 d4 a8 b d2 r8 d'4  d,8 b
  | % 69
  <d c' >8 g,4  b8 b c4
  | % 70
  d8 d d'4  d4  d4
  | % 71
  c8 b4  e4
  | % 72
  <g, e' >4  d'4  b,8 cs
  | % 73
  <ef b' >8 <e b' >2 r4.
  | % 74
  b'8 b d4  c4
  | % 75
  c8 c b4  a4
  | % 76
  <a ef >4  <d, d' >4  <d d' >8
  <d d' >4
  | % 77
  <d c' >8 <g b >4 r4 <g d' >4. r8
  | % 80
  <g b >4  <a cs >1 <d, c' >8*7 r8 <g b >8*7
  r8*9 <d g >4  <g, f' >4  <c e >8
  <c ef >4  <g d' >8*7
}

bass = \relative c {
  \global
  \voiceOne
  r8*401 a'2 r8*95 g4  f8 r8 d'4 r4 b2.
  r4. c4  c4 r4 a2 r8 d4

  | % 68
  d4 r4 f,8 e d'4 r4 b2. r4. g8*5
  r8*5 g4. r8*5 g,8 a ef'4
}

trackC = <<
  \clef bass
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \tenor
  \context Voice = voiceC \bass
>>

trackDchannelA = {
  \set Staff.instrumentName = "Piano-RH"
}

trackDchannelB = \relative c {
  \global
  %  \voiceThree
  a''8 a <ef, f c' >4  bf'4
  | % 2
  bf8 bf <c, f a >4  <f g >4
  | % 3
  <cs f bf >4  <c f a >4  a'8
  <c, e a >4
  | % 4
  <b d g >4  <a c f >8*7 r8 <f bf d >16 r8. <f bf d >4
  gs16 r8.
  | % 6
  <d g bf >4  <c f a >8*5 r8
  | % 7
  <g' bf >8 <f a >2 r8 <bf f' >4. r8 <a f' >8*5 r8
  | % 9
  <g bf >8 <f a >8 <f a >8*5 r4. <g bf e' >8*5 r8
  | % 11
  <f a >8 <e g >2 r8 <g bf e' >4. r8 <a f' >8*5 r8
  | % 13
  <g bf d >8 <f a c >2. r4. <a c f >8*5 r8
  | % 15
  <g bf d >8 <f a c >2 r8 <bf f' >4. r8 <a f' >8*5 r8
  | % 17
  <g bf >8 <f a >2. r4. <c' ef >4  <bf d >4

  | % 19
  <bf d g >4  <c f a >4  <f g >4

  | % 20
  <bf, cs f >4  <f a c >4. r8 gs16 r8.
  | % 21
  <d g bf >8 <c f a >2 r8 b'16 *7 <f bf d >4. r8 cs'16
  *9 c4 <d d' >8 c'16 r4 f,16 c r4
  | % 24
  <c e g bf >4 <c f a >16 r8. <a c f >4  <a c f >4

  | % 25
  <g bf d >8 <f a c >4 f f4
  | % 26
  <bf d f >4  <a c f >4  c4
  <c f a >4
  | % 27
  <bf d g >8 <a c f >4  <f' a c >4  fs16
  <d g bf >8
  | % 28
  <c f a >4  <e g >4  <e g >4
  <bf, d g >4
  | % 29
  <f a d >8 <e g c >4 g8 a c4 d8
  | % 30
  <g, bf e' >4  <a c f >4  c8
  <c f a >4
  | % 31
  <bf d g >8 <a c f >4 c <d d' >8 c'16 a f c r4
  | % 32
  <c e g bf >4 <f a >4  <f a >4  <c f a >4

  | % 33
  <bf d g >8 <a c f >4 f f4
  | % 34
  <bf d f >4  <a c f >4  c4
  <c f a >4
  | % 35
  <bf e' g >8 <a d f >4 <f' a d >8 <e g c >8 <d f a >4 r8
  | % 36
  a' a <ef, f c' >4  <d f bf >4
  | % 37
  bf'8 bf <c, f a >4  <bf f' g >4
  | % 38
  <cs f bf >4  a'4  a8 <c, e a >4

  | % 39
  <b d g >8 <a c f >4 r8 <f' a c >4 <c f a >4
  | % 40
  <a c f >4  <b d f >4. r8 <bf e' g >4. r8 <a c f >8
  f g a4 c8
  | % 42
  d4  <b d f >4  bf16 r8. g4
  <g bf e' >4. r4 <bf e' gs >8
  | % 44
  <bf e' g >4  <a c f >4  <c f a c >8
  <d d' >8 c'16 a f c r4
  | % 45
  <c g' a >4 <d g a d >8 d4 <e e' >8 d'16 a g d r4
  | % 46
  <d fs a c >4 <d g b >4  g4  <g b d g >4

  | % 47
  <e a c e >8 <d g b d >4 g,8 cs16 r8. <g c e >4
  | % 48
  <c e g >4  <b d g >4  <g b d >4
  <b d g b >4
  | % 49
  <c e a >8 <b d g >4  <d g b d >4  gs16
  <e a c >8
  | % 50
  <d g b >4  <c fs a >4  <c fs a >4
  <c e a >4
  | % 51
  <g b e >8 <fs a d >4 a8 b d d d
  | % 52
  gs16 r8. <d g b >4  <d g b >8 <d g b >4

  | % 53
  <c e a >8 <b d g >4  f'8 e d bf
  | % 54
  b d <d b g' >4  <b d g >4  <b d g >4

  | % 55
  <a c e >8 <g b d >4 g8 cs16 r8. <g c e >4
  | % 56
  <c e g >4  <b d g >4  <b' d g b >8
  <b d g b >4
  | % 57
  <a c fs a >8 <g b e g >4 <b, e g >8 <a d fs >8 <g b e >4

  | % 58
  b'8 b <f g d' >4  <e g c >4
  | % 59
  c'8 c <d, g b >4  <c g' a >4
  | % 60
  <ef g c >4  <d g b >4  <d g b >8
  <d fs b >4
  | % 61
  <c e a >8 <b d g >4  d'8 d d e
  | % 62
  g4  <g b d g >4 r4 <g b d g >4
  r4 <g b d g >4 r4 <g b d g >4
  r4 <a e' a >4 r4 <d, a' d >4
  r4 <g b d g >4 r4 <g b d g >4
  r4 <g b d g >4 r4 <d g b d >4
  r4 <c e g c >8 e
  | % 72
  g4  <b, d g b >4  <b b' >8 <b ef fs b >4

  | % 73
  <a ef fs a >8 <g b e g >4 <b, e g >8 <a d fs >8 <g b e >4

  | % 74
  b'8 b <f g d' >4  <e g c >4
  | % 75
  c'8 c <d, g b >4  <c g' a >4
  | % 76
  <ef g c >4  <d g b >4  cs16
  <g c e >8 <f b d >4
  | % 77
  <e a c >8 <d g b >2 r8*13 g8 g a b4 d8
  | % 80
  e4  <a, cs e g >8*7 r8 <c fs a >4
  r4 <bf' bf' >8
  | % 82
  <a a' >4  <g b d g >4  g,4
  g4  g2 r8 <g b d g >4  <b d >4
  <bf d >8 <a c >4  bf16  <f' b d >8
  gs16  <d g b >2
}

trackDchannelBvoiceB = \relative c {
  \global
  %  \voiceOne
  r8*5 <d' f >2 r8*29 <e, a c >4
  | % 6
  r1
  | % 7
  c'8*5 r8*11 c8*7 r8*9 c8*5 r8*43 c8*7 r4. f r8*17 <e, a c >4
  | % 21
  r2. <f c' ef >4 r4 <gs d' f >4 r4 <f' a c >8
  r4 a4 r8*13 <c, ef >8 r8 <bf d >4 r4 <d g bf >8
  r4. bf r8*23 <f' a c >8 r8*5 c4. r8*7 <c ef >8 r8 <bf d >4
  r4 <c f >4 r4
  | % 37
  <d f >4 r4 <c f >4. r1*4 <f, b d >4 r8
  | % 43
  <d' f >4 r4 d'8 r8*15 <g,, d' f >4 r1*2 <e' a c >8
  r8*17 <d a' c >4 r4*13 <g, d' f >4 r4*9 <d' g >4 r4
  | % 59
  <e g >4 r4 <d g >4 r4
  | % 75
  g4 r4 <g, d' f >8 r4*15 e'''8 d cs4 g8
  | % 81
  e4 r4 <f f' >8 <e e' >8 <d d' >4 r8*7 cs,16
  *7 <c e >4 r4 e4
  | % 84
  g4 r4 <g, b >8 r8 <e' bf c >8
}

trackDchannelBvoiceC = \relative c {
  \global
  %  \voiceFour
  r4*327 <d' f >4 r4 bf4.
}

trackD = <<
  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
  \context Voice = voiceC \trackDchannelBvoiceB
  \context Voice = voiceD \trackDchannelBvoiceC
>>


trackEchannelA = {
  \set Staff.instrumentName = "Piano-LH"
}

trackEchannelB = \relative c {
  \global
  %  \voiceTwo
  a'4  <a, f' >4  <bf f' >2 r8 <c a' >4
  <cs bf' >4
  | % 3
  <g f' >4  <c a' >4. r8 c4
  | % 4
  <c, c' >4  f4  c'8 f a,
  | % 5
  bf b c16 r8. c4 r4 c,8
  | % 6
  d e f4. r8 c4. r8 f4  f2 r8 f4. r8 c4. r8 f4
  f8 a a
  | % 10
  bf b c4. r8 g4. r8 c,4  g'8 c g
  | % 12
  c4  f,4  f8 f4. r8 f4
  ef'8 d c gs
  | % 14
  a c f,4  f8 c'4. r8 f,4  f2 r8 f4.
  r8 c4. r8 f a4  d4 c4  <a f' >4
  <bf f' >4
  | % 19
  <bf f' >4  <c a' >4  <cs bf' >4

  | % 20
  <bf f' g >4  c4  c,4

  | % 21
  c8 f4  f8 a4  a8 bf4
  bf8 <b, b' >4  <b b' >8 <c c' >8*5 r4 c8
  f16 *5 c'4 c,4  f4  a4
  bf4  d8 f4  c4

  | % 27
  c,4  f4. r8*5 c'4  c r4 g4.
  r8 c, g' a c4
  | % 30
  c,4  f4  f4  c4.
  r8 f4 r4 c8 f4  c4 c'4
  f,4  a,4  bf4
  d8 f4  c'4 c,8
  | % 35
  cs d4  a'8 d4 r8
  | % 36
  c4  a4  a8 bf4
  | % 37
  bf4  c4  c8 cs cs4

  | % 38
  <bf g' >4  <c a' >4. r8 <c, c' >4. r8 f r8*7 g4
  g8 c c4  c,8 f f g a4 c8
  | % 42
  d4  g,,4  d'8 g4
  | % 43
  b4  c,4  g'8 c4  c,8
  f8*5 r8
  | % 45
  <ef ef' >4  <d d' >4. r2 d8 g4  g8
  bf, d4. r8 g4  bf,8 c4  e8 g
  bf c cs d d,4  g4 r4
  | % 50
  bf,8 c d4  d8 a4
  | % 51
  a8 d4 a'8 bf d4  f,8 g bf c cs d d,4
  g4  f8 e d bf
  | % 54
  b d g,4  bf8 d4. r8 g4  bf,8
  c4  e8 g bf c cs d d,
  | % 57
  ef e4  bf8 e4
  | % 58
  d'4  <bf g' >4  bf8 <c g' >4

  | % 59
  c4  d4  d8 ef4
  | % 60
  <c g' a >4  bf4  d,4
  bf'4
  | % 61
  d,4  g4  d'8 d d e
  | % 62
  g4  <f g bf d >4 r4 <f g bf d >4
  r4 <f g bf d >4 r4 <f g bf d >4
  r4 <f a c e >4 r4 <f a c e >4
  r4 <f g bf d >4 r4 <f g bf d >4
  r4 <f g bf d >4 r4 <f g bf d >4
  r4 <g c e >4. r8 d'4  g,,8 a bf cs
  | % 73
  ef e4  bf,8 e4
  | % 74
  d'4  <bf g' >4  bf8 <c g' >4

  | % 75
  c4  d4  d8 ef4
  | % 76
  <c g' a >4  d4  bf8 c d d,4
  g2 r8*5 a4  a8 d d4  d,8
  g g a bf4 d8
  | % 80
  e4  <a,, e' cs' >8*7 r8 f'' f e d4 bf8
  | % 82
  a4  <g d' bf' >4. r8 <bf, bf' >4. r8 <c c' >4.
  r8 <cs cs' >4  <cs cs' >8 <d d' >4
  <g f' >4  <c e >8 <c ef >4  cs16
  *11
  | % 86
  g,4
}

trackEchannelBvoiceB = \relative c {
  \global
  %  \voiceOne
  r4*27 d4. r8 c8*5 r8*27 c4. r8*25 d4. r8 c8*5 r8*155 f4
  r4 a4 r4 g'8 f e4 bf,8
  | % 81
  g4  <d, a' >4. r8*29 <g d' >8*5
}

trackE = <<
  \clef bass
  \context Voice = voiceA \trackEchannelA
  \context Voice = voiceB \trackEchannelB
  \context Voice = voiceC \trackEchannelBvoiceB
>>


\score {
  <<

   \context Staff=trackB \trackB

    %   \context Staff=trackC \trackC

    %   \context Staff=trackD \trackD

    %   \context Staff=trackE \trackE
  >>
  \layout {}
  \midi {}
}
