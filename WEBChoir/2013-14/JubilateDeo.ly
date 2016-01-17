\version "2.19.4"
\language "english"

\header {
  title = "Jubilate Deo"
  instrument = "SATB"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=100

}

soprano =  \transpose c g {
  \relative c' {
    \global
    c2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    %   c'2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r

    c g'4 g c,2 g'4 g c,2 r
  }
}

alto =  \transpose c g {
  \relative c {
    \global

    R1  c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    %   c'2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r
    c g'4 g c,2 r
  }
}

tenor =  \transpose c g {
  \relative c {
    \global

    R1*2  c2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2
    %   c'2 d e4 c c b c4. a8 g4 f e f d2 c g4 g c2 r
    g'4 g c,2 r
  }
}

bass =  \transpose c g {
  \relative c, {
    \global

    R1*3  c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
    c'2 d e4 c c b c4. a8 g4 f e f d2 c g'4 g c,2 r
  }
}

verse = \lyricmode {
  Ju -- bi -- la -- te De -- o
  Ju -- bi -- la -- te De __ _ o
  Al -- le -- lu -- jah
  Ju -- bi -- la -- te De -- o
  Ju -- bi -- la -- te De __ _ o
  Al -- le -- lu -- jah
  Ju -- bi -- la -- te De -- o
  Ju -- bi -- la -- te De __ _ o
  Al -- le -- lu -- 

}
sops = \lyricmode {
  \verse
  jah 
  Al -- le -- lu 
  Al -- le -- lu -- jah
}

alts = \lyricmode {
  \verse
   jah
   Al -- le -- lu -- jah
}

tens = \lyricmode {
  \verse
 
  Al -- le -- lu -- jah
}

btags = \lyricmode {
  \verse
  jah
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
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

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "violin"
        instrumentName = "Soprano"
      } \new Voice = "soprano" \soprano
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \sops 
      \new Staff \with {
        midiInstrument = "viola"
        instrumentName = "Alto"
      } \new Voice = "alto" \alto
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "alto" \alts
      \new Staff \with {
        midiInstrument = "cello"
        instrumentName = "Tenor"
      } {
        \clef "treble_8"
        \new Voice = "tenor" \tenor
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor" \tens
      \new Staff \with {
        midiInstrument = "contrabass"
        instrumentName = "Bass"
      } {
        \clef bass
        \new Voice = "bass" \bass
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bass" \btags
    >>
    %   \pianoReduction
  >>
  \layout { }
  \midi { }
}
