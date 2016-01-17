\version "2.17.25"
\language "english"

\header {
  title = "Christ Child Noel"
  arranger = "Patti Drennan"
  copyright = "Arr. C 2011 Word Music, LLC (ASCAP)"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key ef \major
  \numericTimeSignature
  \time 3/4
  \tempo "Reflectively" 4=78
  \set Score.markFormatter = #format-mark-box-barnumbers
  \compressFullBarRests
}

flute = \relative c'' {
  \global
  R2. ef'8_\mf (d ef4 g,8 af bf2.) r8 ef,8 ( ef' d c bf d c~ c2 ) |
  r4 bf8 (af g4 f2 af4 d2.~ d2 ) r4 |
  \mark \default	%10
  R2.*3 r4 r8 bf,_\mf (ef f g2 bf4 af2 g8 af bf2 d,4 ef2 ) r4 |
  \mark \default % 18
 R2.*2  r8 ef8 (g c af g af2 ) r4 R2.*2 |
  r4 f8 (g af bf c2 d4 ef2.~ ef2 ) r4 R2.*2 |
  \mark \default %30
  R2.*7 r4 r8 ef,8_\f (g16 f g bf \mark \default c2 bf8 g f4 ) r4 ef'8 ( d c2 bf8 g f2 ) r4 |
  R2.*3 r8 g,16\< (bf ef d ef f g f g af bf2.\!\f ) |
  \mark \default %47
  r8 bf,8 ( g bf ef16 f g af bf2) g8 ( bf c d ef4 af, bf2) g8 (bf ef4 d c bf c d ef8 bf bf g af4 g2 ) r4 |
  R2.*3 \mark \default %58
  R2. r4 r4 g8 (f16 ef c8 g' f4~ f8 ef ef2 ) r4 R2.*3 |
  ef8_\mf\< (ef16 f g8 g16 af bf8 ef, c'4.\!\f c8 bf g f4 ) r8 ef16 (f g af bf8 c4. c8 bf g f2 ) r4 |
  R2.*2 r4 r8 f16_\f ( g af bf c ef \time 4/4 ef1 ) |
  \time 3/4 R2.*2 \mark \default \tempo "Somewhat slower" 4=73
  R2.*2 r8 f,,8_\f (af bf c16 d ef f g8. af16 bf2 ) R2. |
  g8 (d g bf bf d c2.) bf8 (ef,16 f g8 g16 af bf4) R2. |
  R2. r8 c,8 ( c ef af c \time 4/4 bf4\> bf,8 c d f bf4\! \mark \default \time 3/4 ef,2.\mp~ ef ) |
  R2.*5 bf8_\p ( ef ef f g af bf2.~ bf2.\fermata )
  
  
}

right = \relative c'' {
  \global
  % Music follows here.
  
}

leftOne = \relative c' {
  \global
  % Music follows here.
  
}

leftTwo = \relative c' {
  \global
  % Music follows here.
  
}

flutePart = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \flute

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>

\score {
  <<
    \flutePart
%    \pianoPart
  >>
  \layout { }
  \midi { }
}


%{
convert-ly (GNU LilyPond) 2.17.27  convert-ly: Processing `'...
Applying conversion: 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.15,
2.17.18, 2.17.19, 2.17.20, 2.17.25
%}
