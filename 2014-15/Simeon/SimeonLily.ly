\version "2.19.14"
\language "english"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  left-margin = 1.5\cm
  #(define fonts
     (make-pango-font-tree "Verdana"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 16)))
}
#(set-global-staff-size 18)

\markup{
  \fontsize #0 {
    \fill-line{
      \column{
        \center-align{
          \vspace #2
          \override #'(thickness . 5) \box \pad-markup #2 {
            \fill-line{
              \column{
                \center-align{
                  \line{ \fontsize #8 { \bold{ \caps{ "Bradley Ellingboe"}}}}
                  \vspace #0.25
                  \line{ \fontsize #2 {" "}}
                }
              }
            }
          }
          \vspace #2
          \line{ \fontsize #3 \italic{ " "}}
          \vspace #2
          \line{ \fontsize #8 { \bold{ \caps{ "Simeon's Song"}}}}
          \vspace #0.5
          \line{ \fontsize #13 { \bold{ \caps{ " "}}}}
          \vspace #2
          \line{ \fontsize #7 { "Luke 2: 29-32"}}
          \vspace #0.5
          \line{ \fontsize #8 { " "}}
          \vspace #3
          \line{ \fontsize #10 {"SATB and Piano"}}
          \vspace #2
          \line{ \fontsize #4 {" "}}
          \vspace #1
          \line{ \fontsize #4 {" "}}
          \vspace #1
          \line{ \fontsize #4 {" "}}
          \vspace #13
          %    \line{ \epsfile #X #20 #" "}
          %   \vspace #1
          \line{ \fontsize #5 {"CPKCMusic"}}
          \vspace #1
          \line{ \fontsize #2 {"2003 Kjos Music Press"}}
        }
      }
    }
  }
}
global = {
  \key ef \major
  \numericTimeSignature
  \time 2/2

  \tempo "Flowingly" 2=50
}

soprano = \relative c'' {
  \global
  R1*12
  %13
  r2 bf a4 bf c bf a2 ( g) r2 bf4 c |
  %17
  f2. d4 bf2 bf4 c f2g ef d4 ef |
  %21
  f2. d4 bf2 c bf1 bf2. af4 |
  %  \time 4/4 \tempo "Slightly slower and with rubato" 4=92
  g4. f8 ef4 f g ( bf ) ef d d2 c r1 |
  %29
  g4. f8 ef4 f g bf f' d d ef c bf c2 r4 c |
  %  33
  c4 d bf af bf2r4 bf4 bf ( c ) af g af ( bf ) ef, f |
  % \time 2/2 \tempo "Tempo Primo" 2=50
  g2 g R1*7 |
  %45
  g2 g4 g a bf c bf a2 g a bf4c |
  %49
  f2. d4 bf2 bf4 c f2g ef d4 ef |
  %53
  f2. d4 bf2 c bf1bf |
  %57
  % \time 4/4 \tempo "Slightly slower" 4=92
  g4. ( f8 ef4 ) f g ( bf) ef d d2 c R1 |
  %61
  g4. ( f8 ) ef4  f g  bf  f' d d ( ef c ) bf c2. r4 |
  %65
  c4 ( d ) bf ( af ) bf2 r4 bf4 bf ( c ) af ( g ) af ( bf) ef, f |
  %69
  %  \time 2/2 \tempo "Tempo Primo" 2=50
  g2 g R1 \bar "||" \key c \major R1 R1 |
  %73
  g2 g fs4 ( g ) a ( g ) e1 fs2. r4 |
  %77
  g2 g a4 ( bf ) c ( bf ) g1 a2. r4 |
  %81
  c1 d2. r4 ef1f2. r4 < g e>1 |
  %86
  <fs d>2. r4 <g e>1 <fs d>2. r4 |
  <g e>2 q~ q1~ q
  \bar "|."

}

alto = \relative c' {
  \global
  % Music follows here.

  R1*12
  %13
  r2 bf' a4 bf a bf a2 ( g) r2 bf4 c |
  %17
  bf2. bf4 g2 bf4 c bf2bf g g4 g  |
  %21
  bf2. bf4 g2 a f1 f2. af4 |
  %  \time 4/4 \tempo "Slightly slower and with rubato" 4=92
  g4. f8 ef4 f g ( bf ) ef d d2 c r1 |
  %29
  g4. f8 ef4 f g bf f' d d ef c bf c2 r4 c |
  %  33
  c4 d bf af bf2r4 bf4 bf ( c ) af g af ( bf ) ef, f |
  %  \time 2/2 \tempo "Tempo Primo" 2=50
  g2 g R1*7 |
  %45
  g2 g4 g a bf c bf a2 g a bf4c |
  %49
  bf2. bf4 g2 bf4 c bf2 bf g g4 g  |
  %53
  bf2. bf4 g2 a f1f  |
  %57
  %  \time 4/4 \tempo "Slightly slower" 4=92
  ef4. ( d8 c4 ) d ef ( g ) g g g2 af r1 |
  %61
  ef4. ( d8 ) c4 d ef g g g g2. g4 af2. r4 |
  %65
  r1 r2. g4 g2 ef ef  c4 d |
  %69
  e2 e r1 \bar "||" \key c \major |
  r1 r g2 g fs4 ( g ) a ( g ) e1 fs2. r4 |
  %77
  g2 g a4 ( bf ) c ( bf ) g1 a2. r4 |
  %81
  g1 fs2. r4 g1 bf2. r4 c1 |
  a2. r4 c1 a2. r4 |
  c2 c~ c1~ c
  \bar "|."
}

tenor = \relative c' {
  \global

  \clef bass
  %\arpeggioBracket
  R1*8
  %9
  bf2 bf4 bf a bf c bf g2 g a1 |
  %13
  r2 bf2 a4 bf c bf a2 ( g ) r2 bf4 c |
  %17
  d2. d4 ef2 bf4 c d2bf c d4 c |
  %21
  d2. bf4 ef( d ) c2 ef1 d2. r4 |
  %25
  % \time 4/4
  R1*12
  %\time 2/2
  R1*4 |
  %41
  g,2 g4 g fs g a g e2 e fs1 |
  %45
  g2 g4 g a bf c bf  a2 g a bf4c |
  %49
  d2. d4 ef2 bf4 c d2 bf c d4 c |
  %53
  d2. bf4 ef ( d ) c2 ef1d |
  %57

  bf2 ( af4 ) af bf2 bf4 bf c ( d ) ef2 r1 |
  %61
  bf2 af4 af bf bf bf bf c2. d4 ef2. r4 |
  %65
  R1*2 r2 c2 c af4 bf |
  %69

  c2 c R1 \bar "||" \key c \major R1*2
  %73
  g2\p g fs4 ( g ) a ( g ) e1 fs2. r4 |
  %77
  g2 g a4 ( bf ) c ( bf ) g1 a2. r4 |
  %81
  %  \arpeggioBracket
  e'1 d2. r4 ef1d2. r4 \arpeggioBracket < e c>1 \arpeggio |
  %86
  < fs d>2. \arpeggio r4 < e c>1 \arpeggio < fs d >2. \arpeggio r4
  < g e>2\arpeggio  q~ q1~ q
  \bar "|."

}

bass = \relative c {
  \global
  \clef bass
  %\voiceTwo
  R1*8
  %9
  bf'2 bf4 bf a bf c bf g2 g a1 |
  %13
  r2 bf2 a4 bf c bf a2 ( g ) r2 bf4 c |
  %17
  bf2.  bf4 bf2 bf4 c bf2ef, ef ef4 ef |
  %21
  f2. f4 f2 f bf1 bf,2. r4 |
  %25
  %  \time 4/4
  R1*12
  %\time 2/2
  R1*4 |
  %41
  g'2 g4 g fs g a g e2 e fs1 |
  %45
  g2 g4 g a bf c bf  a2 g a bf4c |
  %49
  bf2. bf4 bf2 bf4 c bf2 ef, ef ef4 ef |
  %53
  f2. f4 f2 f bf1bf, |
  %57
  ef2. ef4 ef2 ef4 g af2 af r1 |
  %61
  ef2 ef4 ef ef ef ef g af2. g4 f2. r4 |
  %65
  R1*2 r2 c'2 f, af4 af |
  %69
  g2 g R1 \bar "||" \key c \major R1*2
  %73
  g2\p g fs4 ( g ) a ( g ) e1 fs2. r4 |
  %77
  g2 g a4 ( bf ) c ( bf ) g1 a2. r4 |
  %81
  g1 a2. r4 af1g2. r4 g1 |
  a2. r4 g1 a2. r4 c2 c~ c1~ c
  \bar "|."

}

verse = \lyricmode {
  % Lyrics follow here.

}

dyntempi = {
  % \tempo 2=50

  s1\mf s1*7
  %9
  s1\mp s1*5 s1\cresc s2 s4\mf s4 |
  %17
  s1 s2 s4\<  s4 s2\f s2 s1
  %21
  \set Score.tempoHideNote = ##t
  s1 s4 s4\> s2 s1\mf \tempo 2=47 s2.\mp s4\mf
  %25
  \tempo 4=92 s1*3 \tempo 4=88 s1
  %29
  \tempo 4=92 s1*4
  %33
  s1 s2\> s4 s4\mp  s1*2
  %37
  \tempo 2=50 s1*4
  %41
  s1*4
  %45
  s2\mf s2 s2 s4\cresc s4 s1 s2 s4\f s4
  %49
  s1*4
  %53
  s1*2\>  s2 s4 \tempo 2=47 s4 s1\mf
  %57
  \tempo 4=92 s1*3 \tempo 4=88 s1
  %61
  \tempo 4=92 s1*4
  %65
  s1*2 s4 \tempo 4=90 s2. s4\>  s4 s2
  %69
  s2\mp s2 s1*3
  %73
  s2\p s2 s1*2 s2 s2
  %77
  s2\mp s2 s1*3
  %81
  s2\mf s2 s1 s2\f s2 s1 s1
  %86
  s1*5 s1s1
}



rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \new Staff = "accomp" \new Voice = "accomp" { \pianoPart }

     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.3
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

rightOne = \relative c'' {
  \global
  \set Staff.connectArpeggios = ##t
  \new Voice {
    \voiceOne
    <ef g,>4	<d f> <bf d> < af c> |
    <g ef c af>2 \arpeggio <f d>
    < ef c bf>1~ q2 <ef c>4 ( < f d > ) |
    %5
    < bf g ef >2 q < bf a ef>1 < bf g ef >2 q < bf a ef>1  |
    %9
    < bf g ef >2 q < bf a ef>1 < bf g ef >2 q < bf a ef>1  |
    %13
    < bf g ef >2 q < bf a ef>1 < bf g ef >2 q < bf a ef>2 bf4 c |
    %17
    <f d>2. d4 bf2 bf4 c s1 ef2 d4 ef  <f d>2.  d4
    %22
    <bf g ef~ >2 <c a ef> <bf~  g f ef>1 < bf f d> |
    \time 4/4
    %25
    g4. f8 ef4 f < g ef bf> <bf g ef> <ef bf g> <d bf g> d2\arpeggio c
    c8 bf af g s2
    %29
    g4. f8 ef4 f < g ef bf> <bf g ef> f' d d\arpeggio ef c bf <c af ef>2. q4 |
    %33
    c4\arpeggio d bf af <bf g ef c>1 \arpeggio bf4 c af g af bf <ef,c> <f d> |
    %37
    < g e c g>2 q <g fs d a>1 < g e c g>2 q <g fs d a>1
    %41
    < g e c g>2 q <g fs d a>1 < g e c g>2 q <g fs d a>1
    %45
    < bf g ef >2 q < bf a ef>1 < bf g ef >2 q < bf a ef>2 bf4 c  |
    %49
    <f d>2. d4 bf2 bf4 c s1 ef2 d4 ef  <f d>2.  d4
    %54
    <bf g ef~ >2 <c a ef> <bf~  g f ef>1 < bf f d> |
    %57
    g4. f8 ef4 f < g ef bf> <bf g ef> <ef bf g> <d bf g> d2\arpeggio c
    c8 bf af g s2
    %61
    g4. f8 ef4 f < g ef bf> <bf g ef> f' d d\arpeggio ef c bf <c af ef>2. q4 |
    %65
    c4\arpeggio d bf af <bf g ef c>1 \arpeggio bf4 c af g af bf <ef,c> <f d> |
    %69
    < g e c g>2 q <g fs d a>1 \key c \major < g e c g>2 q <g fs d a>1
    %73
    < g e c g>2 q <g fs d a>1 < g e c g>2 q <g fs d a>1
    %77
    < bf g ef >2 q < bf a ef>1 < bf g ef >2 q < bf a ef>1  |
    %81
    <c g e c>2 q <d a fs d>1 < ef bf g ef> <f d bf g> <g e c g> |
    %86
    <fs d a fs>1 <g e c g> <fs d a fs>1 r1 r1 |
    < c' g e c g c,>1
    \bar "|."
  }
}

rightTwo = \relative c'' {
  \global
  \set Staff.connectArpeggios = ##t
  \new Voice {
    \voiceTwo
    s1 s2 c,4 bf
    %5
    s1*14
    %17
    <bf' f>1 <g ef>1 <f' d bf f>2 <g d bf g> g,1 <bf f>
    %22
    s1*3
    %25
    <ef, bf>2 <c af> s1 < bf' g ef>1 \arpeggio
    <af ef>2 <f ef c>4 < ef c>8 < f d>
    %29
    <ef bf>2 <c af> s2 <bf' g> < bf g ef>1 \arpeggio s1 |
    %33
    <f d>1 \arpeggio s1 <g ef c>1  <ef c>2 s2
    %37
    s1*12
    %49
    <bf' f>1 <g ef>1 <f' d bf f>2 <g d bf g> g,1 <bf f>
    %54
    s1*3
    %57
    <ef, bf>2 <c af> s1 < bf' g ef>1 \arpeggio
    <af ef>2 <f ef c>4 < ef c>8 < f d>
    %61
    <ef bf>2 <c af> s2 <bf' g> < bf g ef>1 \arpeggio s1 |
    %65
    <f d>1 \arpeggio s1 <g ef c>1  <ef c>2 s2
    %69
    s1*23 %% tacet to end

  }
}

leftOne = \relative c {
  \global
  \set Staff.connectArpeggios = ##t
  ef,8  bf' ef g bf2 f,8 c' f4 < f g, >8 d g4 |

  af2 g f < ef af,>
  %5
  < bf ef, >2 < bf' g ef> < bf a ef >1
  %7
  < bf, ef, >2 < bf' g ef>  < bf a ef >1
  %9
  < bf, ef, >2 < bf' g ef> < bf a ef >1
  %11
  < bf, ef, >2 < bf' g ef>  < bf a ef >1
  %13
  < bf, ef, >2 < bf' g ef>  < bf a ef >1
  %15
  < bf, ef, >2 < bf' g ef>  < bf a ef >2 bf4 c
  %17
  c2 d c d < d bf f>2 q c2 d4 c |
  %21
  c2 d s1 s1  s1 |
  %25
  %  \time 4/4
  ef,,8 bf' d ef f4 f, g8 ef' g bf d4 ef |
  af,,8 ef' bf' c d c bf af f, c' af' bf <af bf,>2 |
  %29
  ef,8 bf' d ef f4 f, g8 ef' g bf d4 ef |
  af,,8 ef' c'2 g,4 f8 c' g' af bf4 c
  %33
  g,8 d' bf' c d2 c,,8 g' d' ef g4 bf |
  af,8 ef' af bf c bf af g f, c' af'4 < af bf,>2 |
  %37
  %  \time 2/2
  < e g, c,>2 q < d g, c,>1 < e g, c,>2 q < d g, c,>1
  %41
  < e g, c,>2 q < d g, c,>1 < e g, c,>2 q < d g,>1 |
  %45
  < bf ef, >2 < bf' g ef>  < bf a ef >1
  < bf, ef, >2 < bf' g ef>  < bf a ef >2 bf4 c
  %49
  c2 d c d < d bf f> q c2 d4 c |
  %53
  c2 d s1 s1  s1 |
  %57
  %  \time 4/4
  ef,,8 bf' d ef f4 f, g8 ef' g bf d4 ef |
  af,,8 ef' bf' c d c bf af f, c' af' bf <af bf,>2 |
  %61
  ef,8 bf' d ef f4 f, g8 ef' g bf d4 ef |
  af,,8 ef' c'2 g,4 f8 c' g' af bf4 c
  %65
  g,8 d' bf' c d2 c,,8 g' d' ef g4 bf |
  af,8 ef' af bf c bf af g f, c' af'4 < af bf,>2 |
  %69
  < e g, c,>2 q < d g, c,>1
  \key c \major < e g, c,>2 q < d g, >1
  < e g, c,>2 q < d g, c,>1 < e g, c,>2 q < d g, >1
  %77
  < bf ef, >2 < bf' g ef> < bf a ef >1
  < bf, ef, >2 < bf' g ef> < bf a ef >1
  %81
  < g, c,>2 <g' e c> < a d,>1 <ef, ef,>2
  <bf'' g ef> <bf f d>1 <c,, c,>2 <g'' e c> |
  %86
  <a fs d>1 <c, c,>2 <g'' e c> <a fs d>1 r1
  <c g e c g c,>1 r1
  \bar "|."
}

leftTwo = \relative c {
  \global
  \set Staff.connectArpeggios = ##t
  s1*2  < ef af,>1~ q2 s2
  %5
  s1   r2 < ef, ef,>
  %7
  s1   r2 < ef ef,>
  %9
  s1   r2 < ef ef,>
  %11
  s1   r2 < ef ef,>
  %13
  s1   r2 < ef ef,>
  s1*2
  %17
  < f' d >1 < bf ef,> s1 < bf ef,> |
  %21
  <bf f>1 < c~ bf f~ >2 < c a f> bf1~ < bf bf,>
  %25
  % \time 4/4
  s1*19
  %44
  c,,2 d  s1   r2 < ef ef,> s1*2 |
  %49
  < f' d >1 < bf ef,> s1 < bf ef,> |
  %53
  <bf f>1 < c~ bf f~ >2 < c a f> bf1~ < bf bf,>
  %57
  s1*19
  %76
  c,,2 d
  %77
  s1   r2 < ef ef,> s1   r2 < ef ef,>
  %81
  s1   r2 < g g,> s1   r2 < g g,> s1
  %86
  r2 < g g,> s1  r2 < g g,>
  s1*3 \bar "|."
}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "voice oohs"
    midiMinimumVolume = #0.6
    midiMaximumVolume = #0.9
    instrumentName = \markup \center-column { "Soprano" "Alto" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \set Staff.soloText = #""
    \set Staff.soloIIText = #""
    \set Staff.aDueText = #""
    \partcombine \soprano \alto
  >>
  %{
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verse
  %}
  \new Dynamics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } { \dyntempi }

  \new Staff \with {
    midiInstrument = "voice oohs"
    midiMinimumVolume = #0.6
    midiMaximumVolume = #0.9
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<

    \set Staff.soloText = #""
    \set Staff.soloIIText = #""
    \set Staff.aDueText = #""

    \clef bass
    % \tenor \\ \bass
    \partcombine   \tenor \bass
  >>
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
  midiMinimumVolume = #0.3
  midiMaximumVolume = #0.6
}
<<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
    midiMinimumVolume = #0.3
    midiMaximumVolume = #0.6
    \consists "Span_arpeggio_engraver"
  }
  {
    \global
    <<
      \relative c''  \rightOne
      \\
      \relative c'' \rightTwo
    >>
  }

  \new Dynamics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } { \dyntempi }

  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
    midiMinimumVolume = #0.3
    midiMaximumVolume = #0.6
    \consists "Span_arpeggio_engraver"
  } {
    \global \clef bass
    <<
      \relative c, \leftOne
      \\
      \relative c \leftTwo
    >>
  }
>>

\score {

  <<
    \choirPart
    \pianoPart
  >>
  \layout { }
  \midi { }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}

