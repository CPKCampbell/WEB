\version "2.17.29"
\language "english"

\header {
  title = "Thou Shalt Know Him"
  instrument = "SATB Acapella"
  composer = "Mark Sirett"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key e \major
  % \time 4/4
}
bln = \bar "|"
soprano = \relative c'' {
  \global
  \cadenzaOn
  \repeat volta 2 {
    e,8 b' \bln b4. gs8 fs gs \bln e2 \bln e8 cs' cs b b8. gs16 \bln
    b2. cs8 e \bln e4. ds16 (cs) ds8 e \bln b2 \bln
    e,8 b' a gs \bln fs2 gs4 gs2. \bln
  }
  %9
  gs8 gs \bln cs4. b8 gs8 fs \bln gs4 \tuplet 3/2 {gs8 gs gs} \bln
  e'4. ds8 b a \bln cs4 ds cs \bln <gs' e>4. <fs ds>8 e8 cs \bln cs4 a cs \bln
  %16
  <e c>4 (<d b>) c \bln b8. g16 g4 g8 g \bln a4 e2. \breathe e4 d e2. \fermata \bln
  %19b
  e8 b' \bln b4. gs8 fs gs \bln e2. \breathe \bln e2 e \breathe \bln e1 e \bar "||"
  
  \cadenzaOff
  
}

alto = \relative c' {
  \global
  \cadenzaOn
  \repeat volta 2 {
    e8 ds \bln cs4 e ds8 ds \bln e4 (ds) \bln
    cs8 (ds e fs) ds (e) 
    ds4 (gs fs) e gs fs e e8 (fs) ds4
    cs e e8 (cs ds4) ds e2.
  }
  %9
  fs8 e fs4 fs fs8. fs16 e4 fs8 e 
  <a fs>2 fs8 <a fs>8 <gs es>4 q gs b b b8 gs a4 gs fs
  %16
  g2 a4 g8 fs e4 e8 e e4 cs2 \breathe b b4 b2. \fermata
  %19b
  e8 ds cs4 e ds8 ds ds4 (cs2) \breathe d2 d \breathe c1 b
  \cadenzaOff
  
}

tenor = \relative c' {
  \global
  \cadenzaOn
  \repeat volta 2 {
    gs8 gs \bln e4 b' a8 a \bln gs2 \bln e8 (fs a4) gs8 (a) \bln
    b4. (cs8 ds4) cs b a b8 (a) gs2
    e8 fs a b a2 b4 b2.
  }
  %9
  gs8 gs a4 a b8. b16 cs4 cs8 cs
  cs4. (b8) cs8 ds ds4 ds es e e e8 e e4 cs cs
  %16
  
  <e c>2 q4 b8 b b4 d8 d cs4 a2 \breathe a a4 gs2. \fermata
  %19b
  gs8 gs e4 b' a8 a gs2. \breathe <a fs>2 q \breathe <g e>1 gs1
  \cadenzaOff  
  
}

bass = \relative c {
  \global
  \cadenzaOn
  \repeat volta 2 {
    e8 e \bln a,4 a b8 b \bln cs4 (b) \bln a (fs) cs' \bln
    <fs b>2. <e a>4~ \bln <e a>2 <e gs>4 \bln cs b \bln
    a gs \bln b2 b4 \bln <e e,>2.
  }
  %9
  fs8 e \bln d4 d d8. d16 \bln cs4 cs8 cs \bln
  e4 (fs) a8 b \bln cs4 cs cs \bln b b cs8 b \bln a4 a a \bln
  % 16
  g2 g4 \bln e8 e e4 e8 e \bln  e4 e2 \breathe f2 f4 \bln e2. \fermata \bln
  %19b
  e8 e \bln a,4 a b8 b \bln cs2. \breathe \bln a2 a \breathe \bln g1 \bln <b e,>1 \bar "||"
  \cadenzaOff
}


verse = \lyricmode {
  % Lyrics follow here.
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

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol.staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \soprano \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 64/4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verse
      \new Staff \with {
        midiInstrument = "voice oohs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    \pianoReduction
  >>
  \layout { 
    \context {
      \Score
      \remove "Timing_translator"
      \remove "Default_bar_line_engraver"
      \remove "Bar_number_engraver"
      %    \override SpacingSpanner.uniform-stretching = ##t
      %    \override SpacingSpanner.strict-note-spacing = ##t
      %    proportionalNotationDuration = #(ly:make-moment 1/64)
    }
    \context {
      \Staff
      \consists "Timing_translator"
      \consists "Default_bar_line_engraver"
    }
    \context {
      \Voice
      \remove "Forbid_line_break_engraver"
      tupletFullLength = ##t
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 64/4)
    }
  }
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



%{
  convert-ly (GNU LilyPond) 2.17.24  convert-ly: Processing `'...
  Applying conversion: 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.15,
  2.17.18, 2.17.19, 2.17.20
%}


%{
  convert-ly (GNU LilyPond) 2.17.25  convert-ly: Processing `'...
  Applying conversion: 2.17.25
%}


%{
  convert-ly (GNU LilyPond) 2.19.0  convert-ly: Processing `'...
  Applying conversion: 2.17.27, 2.17.29
%}
