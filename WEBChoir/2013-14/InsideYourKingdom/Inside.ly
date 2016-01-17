\version "2.17.30"
\language "english"

\header {
  title = "Inside Your Kingdom"
  instrument = "2 Part Mixed Chorus and Piano"
  composer = "Timothy G. Bushong"
}

crpoco = {
  \set crescendoText = \markup { \italic { cresc. poco a poco } }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner.style = #'none
}
uncrpoco = {
  \unset crescendoText 
  \unset crescendoSpanner 
  \override DynamicTextSpanner.style = #'dashed-line
}

global = {
  \key ef \major
  \time 4/4
  \tempo "Freely" 4=84
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  R1*4
  %5
  r4 bf8\mp ef f g f ef f (g) g2. |
  r4 c,8 ef g af g af f1 |
  r4 g8\< af bf af g f f\mf (g) ef2. |
  r4 f8 g af g f ef f1\> |
  %13
  r4 bf,8\mp ef f g f ef f (g) g2. |
  r4 c,8 ef g af g af f1 |
 \crpoco
  r4 g8\< af bf af g f f (g) ef2. |
  r4 f8 g af g f ef f2 ~ f8 f g af |
  %21
  \uncrpoco
  bf2\f bf4 r8 bf bf af af g f f g af |
  bf2 bf4 r8 bf bf af af g f\> f g af |
  g4 f8\mp ef g4 f ef8\< ef ef f af\mf g f ef\> g1 <>\!
  %28
  R1*7
  %35
  r4 g8\mf af bf <bf af> <c g> <d f,> <d f,> (< ef g,>) <c ef,>2.~
  q4 <c f,>8 <bf g> af g f ef f1 |
  %39
  r4 bf,8\mp ef f g f ef f (g) g2. |
  r4 c,8 ef g af g af f1 |
  \crpoco
  r4 g8\< af bf af g f f (g) ef2. |
  r4 f8 g af g f ef f2 ~ f8 f g af |
  %21
  \uncrpoco
  bf2\f bf4 r8 bf bf af af g f f g af |
  bf2 bf4 r8 bf bf af af g f f g\> af |
  g4 f8 ef g4 f\mp ef8 ef ef\< f af g f ef ef1\mf |
  %54
  r8 ef ef f af g f ef ef1 R1*4
}

verseSopranoVoice = \lyricmode {
  In Your im -- age You have made me,
  beau -- ti -- ful with -- in Your sight.
  In Your house I'll live for e -- ver.
  In Your mer -- cy I de -- light.
  Not Your an -- ger but Your good -- ness
  fol -- lows me for all my days.
  And Your strength pre -- serves and shields me,
  and You hold for me a place
  In -- side Your king -- dom.
  I know that I will be
  in -- side Your king -- dom.
  The glo -- ry I will see,
  a place of rest for e -- ter -- ni -- ty
  in -- side Your king -- dom waits for me.
  And Your love is free -- ly giv -- en,
  on this truth I can de -- pend.
  With Your wa -- ter You have cleansed me,
  by Your cross and by Your grace.
  I am washed in Your for -- give -- ness,
  and You wel -- come me by name
  In -- side Your king -- dom.
  I know that I will be
  in -- side Your king -- dom.
  The glo -- ry I will see,
  a place of rest for e -- ter -- ni -- ty
  in -- side Your king -- dom waits for me.
  In -- side Your king -- dom I will be.

}

bassVoice = \relative c {
  \global
  \dynamicUp
  R1*4
  %5
  r4 bf8\mp ef f g f ef f (g) g2. |
  r4 c,8 ef g af g af f1 |
  r4 g8\< af bf af g f f\mf (g) ef2. |
  r4 f8 g af g f ef f1\> |
  %13
  r4 bf,8\mp ef f g f ef f (g) g2. |
  r4 c,8 ef g af g af f1 |
%17
 \crpoco
r4 <bf g>8 \< <c af> <d bf> <c af> <bf g> <af f> |
<af f> (<bf g>) <g ef>2. |
r4 <af f>8 <bf g> <c af> <bf g> <af f> <g ef> |
<bf f>2~ <bf f>8 <bf f> <bf g> af |
 \uncrpoco
g2\f g4 r8  g g f f ef d d ef f |
g2 g4  r8 g g f f ef f\> f ef f |
g4 af8\mp g bf4 bf af8\< g af bf c\mf bf af g\> g1 <>\! |
%28
R1*3
r4 bf,8\mf ef f g f ef f (g) g2.~ 
g4 c,8 ef g af g af f1 |
r4 g8 af bf af g f f (g) ef2.~ ef4 f8 g af g f ef f1 |
%39
R1*4
%43
r4 \crpoco <bf g>8 <c af> <d bf> <c af> <bf g> <af f> |
<af f> (<bf g>) <g ef>2. |
r4 <af f>8 <bf g> <c af> <bf g> <af f> <g ef> |
<bf f>2~ <bf f>8 <bf f> <bf g> af |
\uncrpoco g2\f g4 r8  g g f f ef d d ef f |
g2 g4  r8 g g f f ef f f ef\> f |
g4 af8 g bf4 bf\mp af8 g af\< bf c bf af g g1\mf |
%54
R1*2 r8 ef ef f af g f ef ef1 R1*2
}

verseBassVoice = \lyricmode {
  In Your im -- age You have made me,
  beau -- ti -- ful with -- in Your sight.
  In Your house I'll live for e -- ver.
  In Your mer -- cy I de -- light.
  Not Your an -- ger but Your good -- ness
  fol -- lows me for all my days.
  And Your strength pre -- serves and shields me,
  and You hold for me a place
  In -- side Your king -- dom.
  I know that I will be
  in -- side Your king -- dom.
  The glo -- ry I will see,
  a place of rest for e -- ter -- ni -- ty
  in -- side Your king -- dom waits for me.
  You have set for me a ban -- quet
  of a feast that ne -- ver ends.
  And Your love is free -- ly giv -- en,
  on this truth I can de -- pend.
   I am washed in Your for -- give -- ness,
  and You wel -- come me by name
  In -- side Your king -- dom.
  I know that I will be
  in -- side Your king -- dom.
  The glo -- ry I will see,
  a place of rest for e -- ter -- ni -- ty
  in -- side Your king -- dom waits for me.
  In -- side Your king -- dom I will be.


}

right = \relative c'' {
  \global
 r4 bf8 ef f g f ef 
c4 r8 af ef' c af'4	|
r4 d8 g af bf af g ef4 r8 c, <c' ef,>2 |
%5
r4 r8 g, ef' bf g' ef |
r4 r8 g, ef' bf g' ef |
r4 r8 c,8 c' af ef' c |
%8
r4 r8 d, bf' f d' bf r4 r8 bf, g' d bf' g |
r4 r8 ef c' g ef' c |
r4 r8 ef, c' af ef' c |
r4 r8 f, d' bf f' bf, |
r4 r8 g bf g ef' bf |
%14
r4 r8 g bf g ef' bf |
r4 r8 c,8 c' af ef' c |
r4 r8 f, d' bf f'4 |
r4 r8 d, bf' g d' bf |
r4 r8 ef, <c' ef,> <d f,> <ef g,> <bf d,> |
<af c,>4 r8 c, c' ef, ef' af, r4 r8 f d'2 |
%21
d4\f d,8 <d' f,> <ef g,>4 c,8 ef <c' ef,>4 c, <bf' d,>2 |
<bf d,>4 <d f,> <ef g,> <ef, c> <c' ef,> ef, <bf' d,>2\> |
<g ef>2 <ef bf>\mp <ef c> ef |


}

left = \relative c' {
  \global
 ef,8 bf' ef4~ ef2
 ef,8 c' ef4~ ef2	|
  ef,8 bf' ef4~ ef2
 ef,8 c' ef4~ ef2	|
 ef,8 bf' ef4~ ef2
 ef,8 bf' ef4~ ef2 af,,8 ef' af4~ af2
 %8
 bf,8 f' bf4~ bf2 g,8 d' g4~ g2 |
 c,8 g' c4~ c2 af,8 ef' af4~ af2 
 bf,8 f'bf4~ bf2 ef,8 bf' ef4~ ef2 |
 ef,8 bf' ef4~ ef2 af,,8 ef' af4~ af2 |
 bf,8 f' bf4~ bf bf,8 af g d' bf'4~ bf2 |
 c,8 g' c4~ c bf, af8 ef' af4~ af2 |
 bf,8 f' bf4~ bf af,
 %21
 
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "violin"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "cello"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \new ChoirStaff <<
      \sopranoVoicePart
      \bassVoicePart
    >>
   
  %  \pianoPart
  >>
  \layout { }
  \midi { }
}
