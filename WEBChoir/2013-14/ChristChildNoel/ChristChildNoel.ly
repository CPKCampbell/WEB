\version "2.17.16"
\language "english"

\header {
  title = "Christ Child Noel"
  arranger = "Patti Drennan"
  copyright = "Arr. C 2011 Word Music, LLC (ASCAP)"
}

\paper {
  #(set-paper-size "letter")
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
       \new Staff = "flute" \new Voice = "flute" { s1*0\f \flute }
      \new Staff = "kids" \new Voice = "kids" { s1*0\f \kids }
     \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \soprano }
     \new Staff = "alto" \new Voice = "alto" { s1*0\f \alto }
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiInstrument = "choir aahs"
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 80 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = "bright acoustic"
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})


global = {
  \key ef \major
  \numericTimeSignature
  \time 3/4
  \tempo "Reflectively" 4=78
  \set Score.markFormatter = #format-mark-box-barnumbers
  \compressFullBarRests
  %{
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/3)
    \set Timing.beatStructure = #'(1 1 1 )
  %}
}

flute = \relative c'' {
  \global
  R2. ef'8_\mf \(d ef4 g,8 af bf2.\) r8 ef,8 \( ef' d c bf d c~ c2 \) |
  r4 bf8 \(af g4 f2 af4 d2.~ d2 \) r4 |
  \mark \default	%10
  R2.*3 r4 r8 bf,_\mf \(ef f g2 bf4 af2 g8 af bf2 d,4 ef2 \) r4 |
  \mark \default % 18
  R2.*2  r8 ef8 \(g c af g af2 \) r4 R2.*2 |
  r4 f8 \(g af bf c2 d4 ef2.~ ef2 \) r4 R2.*2 |
  \mark \default %30
  R2.*7 r4 r8 ef,8_\f \(g16 f g bf \mark \default c2 bf8 g f4 \) r4 ef'8 \( d c2 bf8 g f2 \) r4 |
  R2.*3 r8 g,16\< \(bf ef d ef f g f g af bf2.\f\) |
  \mark \default %47
  r8 bf,8 \( g bf ef16 f g af bf2\) g8 \( bf c d ef4 af, bf2\) g8 \(bf ef4 d c bf c d ef8 bf bf g af4 g2 \) r4 |
  R2.*3 \mark \default %58
  R2. r4 r4 g8 \(f16 ef c8 g' f4~ f8 ef ef2 \) r4 R2.*3 |
  ef8_\mf\< \(ef16 f g8 g16 af bf8 ef, c'4.\f c8 bf g f4 \) r8 ef16 \(f g af bf8 c4. c8 bf g f2 \) r4 |
  R2.*2 r4 r8 f16_\f \( g af bf c ef \time 4/4 ef1 \) |
  \time 3/4 R2.*2 \mark \default \tempo "Somewhat slower" 4=73
  R2.*2 r8 f,,8_\f \(af bf c16 d ef f g8. af16 bf2 \) R2. |
  g8 \(d g bf bf d c2.\) bf8 \(ef,16 f g8 g16 af bf4\) R2. |
  R2. r8 c,8 \( c ef af c \time 4/4 bf4\> bf,8 c d f bf4\! \mark \default \time 3/4 ef,2.\mp~ ef \) |
  R2.*5 bf8_\p \( ef ef f g af bf2.~ bf2.\fermata\)
  
  
}

kids = \relative c'' {
  \global
  R2.*8 r4 r bf,8\mf bf \mark \default %10
  ef4 ef d8 ef f4 f g8 af bf4 af g8 f |
  ef4 r4 bf8 bf  ef4 ef d8 ef f4 f g8 af bf4 af g8 f |
  ef4 r4 ef8 d \mark \default %18
  c4 c f8 ef d4 d g8 f ef4 ef af8 g |
  f4 f g8 af bf4 af g8 f ef4 r g8 af bf2 af4 g2 f4 ef2. |
  R2.*19 % tacet to m.46
  r4 r g8\f (f) ef4. (f8) g (af) bf4 r4 ef8 (d) |
  c2 c4 bf2 r4 ef d c bf (c) d ef (bf) af g2 r4 |
  R2.*18 \time 4/4 R1 \time 3/4 R2. |
  r4 r g8\f (f) ef4. (f8) g (af) bf4 r4 ef8 (d) |
  c2 c4 bf2 r4 ef d c bf2 r4 ef4 d c bf2. |
  R2.*3 \time 4/4 r2 r4 bf,8 bf |
  \mark \default \time 3/4 % 88
  ef4 ef d8 ef f4 f g8 (af)bf2.~ bf4 r4 ef, bf'2. ~ bf4 r4 ef,4 |
  bf'2.~ bf4 r4 bf bf2.~ bf \fermata
}

soprano = \relative c' {
  \global
  R2.*17 \mark \default
  c2. (d ef4 c ef f2) r4 R2.*7 |
  r4 r8 bf,8 c8. ef16 \mark \default | %30
  ef4. bf8 c ef f4 r4 g8 f16 ef c8 g' f4~ f8 ef |
  ef4 r8 bf8 c8. ef16 ef4. bf8 c ef f4 r  g8 f16 ef c8 g' f4~ f8 ef |
  ef4 r8 ef g bf \mark \default c4.\f c8 bf g |
  f4 r8 ef ef' d c4. c8 bf g f4 r8 bf,\mf c8. ef16 |
  ef4. bf8 c ef f4 r4 g8 f16 ef c8 g' f4. ef8 ef2. r4 r g8\f ( f) |
  \mark \default %47
  ef4. (f8) g (af) bf4 r4 ef8 (d) |
  c2 c4 bf2 r4 ef d c bf (c) d ef (bf) af g2 r4 |
  R2.*2 r4 r8 bf,8 c8. ef16 \mark \default | %30
  ef4. bf8 c ef f4 r4 g8 f16 ef c8 g' f4~ f8 ef |
  ef4 r2 R2.*3 |
  r4 r8 ef g bf \mark \default c4.\f c8 bf g |
  f4 r8 ef ef' d c4. c8 bf g f4 r8 bf,\mf c8. ef16 |
  ef4. bf8 c ef f4 r4 g8 f16 g|
  af8 bf c4 ef |
  \time 4/4 ef1 \time 3/4 R2. |
  r4 r g,8\f (f) \mark \default %76
  ef4. (f8) g (af) bf2 ef8 (d) c4. (d8) ef (f) |
  <g ef>2 (f4) \breathe ef4 d c bf2 r4 |
  ef4 d ef8 (f) <g ef>2 (f4) \breathe |
  ef4 d c bf (c) d ef2. |
  \time 4/4 d1 \time 3/4 ef2.~ ef |
  r4 r g, g2. r4 r ef ef2. r4 r ef af (g) f g2.~ g\fermata
  
}

alto = \relative c' {
  \global
  R2.*17 \mark \default
  af2. (bf c ef2) r4 R2.*7 |
  r4 r8 bf8 c8. ef16 \mark \default | %30
  ef4. bf8 c ef f4 r4 g8 f16 ef c8 g' f4~ f8 ef |
  ef4 r8 bf8 c8. ef16 ef4. bf8 c ef f4 r  g8 f16 ef c8 g' f4~ f8 ef |
  ef4 r8 ef g ef \mark \default af4.\f af8 ef ef |
  d4 r8 ef bf' bf af4. af8 ef ef d4 r8 bf\mf c8. ef16 |
  ef4. bf8 c ef f4 r4 g8 f16 ef c8 g' f4. ef8 ef2. r4 r d\f  |
  \mark \default %47
  bf2 ef4 d2 ef4 ef2 af4 g2 r4 g g af ef (af) f g (ef) f ef2 r4 |
  R2.*2 r4 r8 bf8 c8. ef16 \mark \default |
  ef4. bf8 c ef f4 r4 g8 f16 ef c8 g' f4~ f8 ef |
  ef4 r2 R2.*3 |
  r4 r8 ef g ef \mark \default af4.\f af8 ef ef |
  d4 r8 ef bf' bf af4. af8 ef ef d4 r8 bf\mf c8. ef16 |
  ef4. bf8 c ef d4 r4 g8 f16 ef|
  ef8 ef af4 af |
  \time 4/4 g1 \time 3/4 R2. |
  r4 r d\f  \mark \default %76
  bf2 ef4 g2 bf4 af4. (bf8) af4 bf2. |
  \breathe g4 f ef d2 r4 |
  af'4 af af bf2. \breathe |
  g4 g af g (af) bf af2. |
  \time 4/4 af1 \time 3/4 g2. ( f ) |
  r4 r ef ef2. r4 r c4 c2. r4 r ef ef2 c4 ef2.~ ef\fermata
  
}

tenor = \relative c {
  \global \clef "bass"
  R2.*17 \mark \default
  ef2. (f g2 af8 bf cf2) r4 R2.*7 |
  r4 r8 bf,8 c8. ef16 \mark \default | %30
  ef4. bf8 c ef f4 r4 g8 f16 ef c8 g' f4~ f8 ef |
  ef4 r8 bf'8 af8. af16 g4. bf8 af c bf4 r  bf8 af16 g |
  af8 af bf4 (af8) af g4 r8 ef g bf \mark \default %38
  ef4.\f ef8 ef bf bf4 r8 ef8 ef ef ef4. ef8 ef bf |
  bf4 r8 bf,8 c8. ef16 ef4. bf8 c ef |
  f4 r4 g8 f16 g af8 af bf4. af8 g2. |
  r4 r bf8\f (af) \mark \default %47
  g2 bf4 g2 bf4 af2 ef'4 ef2 r4 |
  g,4 g af bf (ef,) af g8 (af bf4) bf bf2 r4 R2.*4 |
  r2 bf8\mf af16 g af8 af bf4. bf8 |
  g4 r8 bf8 af8. bf16 bf4. bf8 g c bf4 r4 g8 f16 ef |
  af8 af bf4~ bf8 af g4 r8 ef g bf \mark \default %66
  ef4.\f ef8 ef bf bf4 r8 ef8 ef ef ef4. ef8 ef bf |
  bf4 r8 bf8 af8. af16 g4. g8 af c bf4 r4 g8 af16 bf |
  c8 bf c4 c \time 4/4 bf1 \time 3/4 R2. |
  r4 r  bf8\f (af) \mark \default %76
  g2 bf4 d2 ef4 ef2 c4 ef2 (bf4) \breathe |
  c4 c g g2 r4 c4 bf c bf2. \breathe |
  c4 bf ef ef2 ef4 c2. \time 4/4 bf1 \mark \default %88
  \time 3/4 bf2. ( af) r4 r bf4 bf2. |
  r4 r ef,4 ef2. r4 r ef'4 c2 af4 bf2.~ bf\fermata
  
}

bass = \relative c {
  \global  \clef "bass"
  R2.*17 \mark \default
  ef2. (f g2 af8 bf cf2) r4 R2.*7 |
  r4 r8 bf,8 c8. ef16 \mark \default | %30
  ef4. bf8 c ef f4 r4 g8 f16 ef c8 g' f4~ f8 ef |
  ef4 r8 bf'8 af8. af16 g4. bf8 af c bf4 r  bf8 af16 g |
  af8 af bf4 (af8) af g4 r8 ef g g \mark \default %38
  af4.\f af8 g g bf4 r8 ef,8 g g  af4. af8 g ef |
  bf4 r8 bf8 c8. ef16 ef4. bf8 c ef |
  f4 r4 g8 f16 g af8 af bf4. af8 g2. |
  r4 r bf,\f \mark \default %47
  ef2 ef4 g2 g4 af2 af4 ef2 r4 |
  c4 bf af g (af) bf ef8 (f g4) bf, ef2 r4 R2.*4 |
  r2 bf'8\mf af16 g af8 af bf4. bf8 |
  g4 r8 bf,8 c8. ef16 ef4. bf8 c ef f4 r4 g8 f16 ef |
  c8 g' f4~ f8 ef ef4 r8 ef g g \mark \default %66
  af4.\f af8 g g bf4 r8 ef,8 g g af4. af8 g ef|
  bf4 r8 bf'8 af8. af16 g4. g8 af c bf4 r4 g8 af16 bf |
  af8 g f4 bf, \time 4/4 ef1 \time 3/4 R2. |
  r4 r  bf4\f  \mark \default %76
  ef2 ef4 g2 g4 af2 af4 ef2 (d4) \breathe |
  c4 c c g'2 r4 af4 ef af ef2 (d4) \breathe |
  c4 g' af ef (af) g4 f2. \time 4/4 bf,1 \mark \default %88
  \time 3/4 ef2.~ ef r4 r ef4 ef2. |
  r4 r af,4 af2. r4 r ef'4 ef2 <ef ef,>4 <ef ef,>2.~ q
}

words = \lyricmode { " " }

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

kidsPart = \new Staff \with {
  instrumentName = "Children"
  shortInstrumentName = "Kids"
  midiInstrument = "clarinet"
} \kids


choirPart = \new ChoirStaff <<
  \new Staff
  \with {
    printPartCombineTexts = ##f
    midiInstrument = "violin"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
    shortInstrumentName = "SA"
  }
  
  <<
    \new Voice \partcombine \soprano \alto
    % \new NullVoice = "lvoice" \lvoice
    % \new Lyrics \lyricsto "lvoice" \words
  >>
  
  \new Staff  \with {
    printPartCombineTexts = ##f
    midiInstrument = "cello"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = "TB"
  } <<
    \clef bass
    \partcombine \tenor \bass
    %{
      \tenor
      \bass
    %}
  >>
  
>>

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
    \kidsPart
    \choirPart
    \pianoPart
    
    \flutePart
  >>
  \layout { }
  \midi {
    \tempo 4=78
  }
}


% Rehearsal MIDI files:
\book { % soprano
  \bookOutputSuffix "kids"
  \score {
    \rehearsalMidi "kids" "flute" \words
    \midi { }
  }
}

\book { % kids
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "flute" \words
    \midi { }
  }
}
\book { % alto
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "clarinet" \words
    \midi { }
  }
}

\book { % tenor
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "cello" \words
    \midi { }
  }
}

\book { % bass
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "contrabass" \words
    \midi { }
  }
}
