% Lily was here -- automatically converted by /usr/local/bin/midi2ly from Sing_106a.MID
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {


  \key f \major
    
  \set Staff.instrumentName = "untitled"
  
  \time 2/2 
  

  \key f \major
  
  \tempo 4 = 137 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "Piano"
  
}

trackBchannelB = \relative c {
  \voiceTwo
  r2. <c c' f a >8 <c c' f a >8 
  | % 2
  <d d, >4 d8 bes4 bes, <bes' bes'' g >8 
  | % 3
  <d d, >4 d,8 g4 g g8 
  | % 4
  <c c, >4 c8 <c, f'' >8 <c' a'' c, e c,, >4 <c e' g c,,, >8 
  f,4 a,8 bes b c d ees e 
  | % 6
  <a'' c, f >4 <a f c >4 <a c, f >4 <g bes, >8 <a, f' c >4. <c a >4 
  <bes, d' f bes, bes,, bes''' >4 <bes d' f bes, bes,, bes''' >4 
  | % 8
  f f <c c'' f a >4 <g''' bes, d >8 <a, f' c >4. <c a >4 e,, 
  c''8 f 
  | % 10
  <g c, e >4 <g c, e >4 <g c, e >4 <f a, d >8 <c e g, >4. c4 
  <c, bes'' d, f c,, >4 <c bes'' d, f c,, >4 
  | % 12
  f, f <c f'' a, c a' >4 <g''' bes, d >8 <a, f' c >4. <c a >4 
  c,, c''8 f 
  | % 14
  <a f a, c >4 <a a, c f >4 <c,,, f'' a, c a' >4 <g''' bes, d >8 
  <a, f' c >4. <c a >4 <bes, d' f bes, bes,, bes''' >4 <bes d' f bes, bes,, bes''' >4 
  | % 16
  f f <c' f' a, c a' >4 <des bes' e g >8 <f' a, d >4. <d a >4 
  c,2 
  | % 18
  <a a, >4 a8 bes4 bes, <bes' d' g bes >8 
  | % 19
  <c c, >4 c,8 des4 des des8 
  | % 20
  <c' c, >4 c8 <c, f'' >8 <c' a'' c, e c,, >4 <c e' g c,,, >8 
  f,4 a,8 bes b c d ees e 
  | % 22
  <a'' c, f >4 <a f c >4 <a c, f >4 <g bes, >8 <a, f' c >4. <c a >4 
  <bes, d' f bes, bes,, bes''' >4 <bes d' f bes, bes,, bes''' >4 
  | % 24
  f f <c c'' f a >4 <g''' bes, d >8 <a, f' c >4. <c a >4 e,, 
  c''8 f 
  | % 26
  <g c, e >4 <g c, e >4 <g c, e >4 <f a, d >8 <c e g, >4. c4 
  <c, bes'' d, f c,, >4 <c bes'' d, f c,, >4 
  | % 28
  f, f <c f'' a, c a' >4 <g''' bes, d >8 <a, f' c >4. <c a >4 
  c,, c''8 f 
  | % 30
  <a f a, c >4 <a a, c f >4 <c,,, f'' a, c a' >4 <g''' bes, d >8 
  <a, f' c >4. <c a >4 <bes, d' f bes, bes,, bes''' >4 <bes d' f bes, bes,, bes''' >4 
  | % 32
  f f <c' f' a, c a' >4 <des bes' e g >8 <f' a, d >4. <d a >4 
  c,2 
  | % 34
  <a a, >4 a8 bes4 bes, <bes' d' g bes >8 
  | % 35
  <c c, >4 c,8 des4 des des8 
  | % 36
  <c' c, >4 c8 <c, f'' >8 <c' a'' c, e c,, >4 <c e' g c,,, >8 
  <f, a' c f >8*7 
}

trackBchannelBvoiceB = \relative c {
  \voiceOne
  r1 
  | % 2
  <c'' a ges >4. <d, bes' g >4. <bes' g >8 r8 
  | % 3
  <a f d >4. <f g bes, d >4. <bes d, f g >4 
  | % 4
  <a f c >4. r2 <f c a >8*7 r4 
  | % 6
  f,,4. f8 c2 
  | % 7
  f4. f8 r2 
  | % 8
  <c'' a' f >4. f8 r4 c,, 
  | % 9
  f4. f8 r8 a' d,,4 
  | % 10
  <c c' >4. g'8 <c, c' >2 
  | % 11
  <c c' >4. g'8 r2 
  | % 12
  <c' a' f >4. f8 r4 c,, 
  | % 13
  f4. f8 r8 a' c,,4 
  | % 14
  f4. f8 r4 c 
  | % 15
  f4. f8 r2 
  | % 16
  <f'' a a, c >4. f8 r4. d,2 d8 r8 a' <a' f >8 a 
  | % 18
  <c ees, ges a >4. <d, bes' g >4. <bes' d, g >8 r8 
  | % 19
  <a f c >4. <f g bes, des >4. <bes des, f g >4 
  | % 20
  <a f c >4. r2 <f c a >8*7 r4 
  | % 22
  f,,4. f8 c2 
  | % 23
  f4. f8 r2 
  | % 24
  <c'' a' f >4. f8 r4 c,, 
  | % 25
  f4. f8 r8 a' d,,4 
  | % 26
  <c c' >4. g'8 <c, c' >2 
  | % 27
  <c c' >4. g'8 r2 
  | % 28
  <c' a' f >4. f8 r4 c,, 
  | % 29
  f4. f8 r8 a' c,,4 
  | % 30
  f4. f8 r4 c 
  | % 31
  f4. f8 r2 
  | % 32
  <f'' a a, c >4. f8 r4. d,2 d8 r8 a' <a' f >8 a 
  | % 34
  <c ees, ges a >4. <d, bes' g >4. <bes' d, g >8 r8 
  | % 35
  <a f c >4. <f g bes, des >4. <bes des, f g >4 
  | % 36
  <a f c >4. 
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelBvoiceB
>>


trackCchannelA = {
  
  \set Staff.instrumentName = "Clarinet"
  
}

trackCchannelB = \relative c {
  r1*5 a''4 a a g8 f8*5 bes4 bes 
  | % 8
  a4. a8 a4 g8 f8*7 r4 
  | % 10
  g g g f8 e8*5 bes'4 bes 
  | % 12
  a4. a8 a4 g8 f8*7 r4 
  | % 14
  a a a g8 f8*5 bes4 bes 
  | % 16
  a4. a8 a4 g8 f8*7 a8 a 
  | % 18
  c4. bes bes8 bes 
  | % 19
  a4. g bes4 
  | % 20
  a4. a8 a4 g8 f8*9 a4 a a g8 f8*5 bes4 bes 
  | % 24
  a4. a8 a4 g8 f8*7 r4 
  | % 26
  g g g f8 e8*5 bes'4 bes 
  | % 28
  a4. a8 a4 g8 f8*7 r4 
  | % 30
  a a a g8 f8*5 bes4 bes 
  | % 32
  a4. a8 a4 g8 f8*7 a8 a 
  | % 34
  c4. bes bes8 bes 
  | % 35
  a4. g bes4 
  | % 36
  a4. a8 a4 g8 f8*9 
}

trackC = <<
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
>>


trackDchannelA = {
  
  \set Staff.instrumentName = "Guitar"
  
}

trackDchannelB = \relative c {
  r1*5 <f' c f, >4 <f c f, >4 <f c f, >4 <d bes f >8 <c a f >8*5 
  <f d bes, >4 <f d bes, >4 
  | % 8
  <f c f, >4. <f c f, >8 <f c f, >4 <d bes f >8 <c a f >8*7 r4 
  | % 10
  <e bes c, >4 <e bes c, >4 <e bes c, >4 <d a c, >8 <c g c, >8*5 
  <e d c, >4 <e d c, >4 
  | % 12
  <f c f, >4. <f c f, >8 <f c f, >4 <d bes f >8 <c a f >8*7 r4 
  | % 14
  <f c f, >4 <f c f, >4 <f c f, >4 <d bes f >8 <c a f >8*5 <f d bes, >4 
  <f d bes, >4 
  | % 16
  <f c f, >4. <f c f, >8 <f c c, >4 <e bes des, >8 <d a d, >8*7 
  <f c d, >8 <f c d, >8 
  | % 18
  <ges ees a,, >4. <g d bes, >4. <g d bes, >8 <g d bes, >8 
  | % 19
  <f c c, >4. <bes, des, >4. <f' des bes, >4 
  | % 20
  <f c c, >4. <f c c, >8 <e c c, >4 <e bes c, >8 <c a f, >8*9 
  <f c f, >4 <f c f, >4 <f c f, >4 <d bes f >8 <c a f >8*5 <f d bes, >4 
  <f d bes, >4 
  | % 24
  <f c f, >4. <f c f, >8 <f c f, >4 <d bes f >8 <c a f >8*7 r4 
  | % 26
  <e bes c, >4 <e bes c, >4 <e bes c, >4 <d a c, >8 <c g c, >8*5 
  <e d c, >4 <e d c, >4 
  | % 28
  <f c f, >4. <f c f, >8 <f c f, >4 <d bes f >8 <c a f >8*7 r4 
  | % 30
  <f c f, >4 <f c f, >4 <f c f, >4 <d bes f >8 <c a f >8*5 <f d bes, >4 
  <f d bes, >4 
  | % 32
  <f c f, >4. <f c f, >8 <f c c, >4 <e bes des, >8 <d a d, >8*7 
  <f c d, >8 <f c d, >8 
  | % 34
  <ges ees a,, >4. <g d bes, >4. <g d bes, >8 <g d bes, >8 
  | % 35
  <f c c, >4. <bes, des, >4. <f' des bes, >4 
  | % 36
  <f c c, >4. <f c c, >8 <e c c, >4 <e bes c, >8 <c a f, >8*9 
}

trackD = <<

  \clef bass
  
  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Staff=trackC \trackA
    \context Staff=trackC \trackC
    \context Staff=trackD \trackA
    \context Staff=trackD \trackD
  >>
  \layout {}
  \midi {}
}
