\version "2.19.32"
\language "english"

\header {
  title = "Find Us Faithful"
  instrument = "Male Chorus - TBB"
  composer = "Jon Mohr"
  poet = "Jon Mohr"
  arranger = "arr. CPKCMusic"
}

\paper {
  #(set-paper-size "letter")
  left-margin = 2.5\cm
}

#(load"/Sandbox/music/tools/swing.scm")

global = {
  \key e\major
  \numericTimeSignature
  \time 4/4
  \tempo 4=86

}

tenorOne = \relative c
 %\applySwingWithOffset 16 #'(4 3 3 4) #(ly:make-moment 1/8)
 %\applySwing 8 #'(3 2)
 \tripletFeel 16
{
  \global
  % intro on piano 9 bars
  s1*7 \time 2/4 R2 \time 4/4 R1
  r2 r4 r8  b8 e b16 e~ e8 fs16 a~ a gs8. r8 fs16 e ds8 e16 cs~ cs2 r8 b |
  e8 b e fs16 a ~ a gs8. b b,16 cs2 r2 |
  a'8 gs16 fs~ fs8 e16 fs~ fs gs8. r8. e16 |
  a8 gs16 fs~ fs8 e16 fs~ fs gs8. r8. e16 |
  a8. gs16~ gs8 fs16 e a8 gs16 fs~ fs8. e16 |
  \time 2/4 a8 gs16 fs ~ fs8 e16 ( fs) \time 4/4 fs2. r8. b,16  \mark \markup { \musicglyph #"scripts.segno" } |
  e8 b16 e~ e8 fs16 a~ ( a gs8 ) gs16 fs8. e16 |
  ds8 e16 cs~ cs2 r8 cs16 ds e8 b16 e r8 fs a gs b8. b,16 |
  cs2 r4 r8 cs16 e a8 gs16 fs~ fs8 e16 fs ~ fs gs8.r8 b,16 e |
  a8. gs16 fs8 e16 fs~ fs8 gs4 r16 e |
  a8 gs16 fs~ fs8 e a gs16 fs r8 e \time 2/4 a8 gs16 a~ a8 b |
  \time 4/4 b1~ b2 r4 gs8 a16 (b ) |
  %chorus
  b8 b b b16 b~ b fs r8 fs gs a8. ( gs16 ) gs2 r8  gs16 a
  b8 b16 b~ b8 cs16 b~ b a8. gs8 fs16 (gs) gs2.r8 e16 e |
  cs'8 b a gs16 fs~ fs4. r8 b8 a16 ( gs~ gs ) gs fs (e) e4 r8 e16 e |
  cs'8 gs16 fs~ fs8 e cs' gs r8  fs16 e  \mark \markup { "to coda " \musicglyph #"scripts.coda" } |
  b'2 r4 gs8 a16 ( b) cs8 a gs fs16 cs'~ cs a8. gs8 fs  fs8. ( e16) e2 r4 |
  \time 3/4 R2.
  \time 4/4 R1 \time 3/4 r2 r8 r16 b^ "D.S. al Coda"   \bar "" \break
  |\mark \markup { "Coda " \musicglyph #"scripts.coda" }
\once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (parenthesize-stencil (ly:time-signature::print grob) 0.1 0.4 0.4 0.1 ))
\time 4/4  b'2 r4 b8 c16 ( d) |
  \key g \major d8 d d d16 d ( d) a r8 a8 b c8. ( b16) b2 r8 b16 c |
  d8 d16 d~ d8 e16 d~ d c r8 b8 a16 ( b) b2. r8 g16 g |
  e'8 d c b16 a~ a4. r8 d8 c16 ( b~ b ) b a ( g ) g4 r8 g16 g |
  e 'e b16 a~ a8 g e' b r8 a16 (g) d'2 r4 b8 c16 ( d ) |
  e8 c b a16 e'~ e c8. b8 a a4~ ( a8. g16 ) g2 |
  r2 r4 b8 e e c b a16 e'~ e c r8 b8 a |
  a2 g~ g1~ g1 \fermata
  \bar "|"

}

bassOne = \relative c {
  \global
% \applySwingWithOffset 16 #'(4 3 3 4) #(ly:make-moment 1/8)
% \applySwing 8 #'(3 2)
 \tripletFeel 16
  {
  s1*7 \time 2/4 R2 \time 4/4 R1*9
  \time 2/4 R2 \time 4/4 R1*8
  \time 2/4 R2 \time 4/4 R1
  %
  r2 r4 e8 e16 (fs) fs8 fs e e16 ds~ ds ds r8 ds ds e4 e2r8  e16 e |
  fs8 fs16 e~ e8 e16 ds~ ds16 ds8. ds8 ds16 (e) e2 ( ds4) r8 cs16 cs |
  cs8 cs cs e16  ds~ ds4. r8 ds8 cs16 (e~ e) e ds (cs) cs4 r8 cs16 cs |
  e8 e16 e~ e8 e e e r e16 e e2 (ds4) ds8 ds16 (e)  |
  e8 e ds ds16 e~ e e8. ds8 cs cs8. (b16) b2 r4 |
  \time 3/4 R2. \time 4/4 R1 \time 3/4 R2. \break
  %coda|
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (parenthesize-stencil (ly:time-signature::print grob) 0.1 0.4 0.4 0.1 ))
  \time 4/4 ds2 r4 g8 g
  \key g \major  a a g g16 fs~ fs8 r fs fs g4 g2r8  g16 g |
  a8 a g g16 fs~ fs8 fs fs fs g2 ( fs4) r8 e16 e |
  e8 e e g fs4. r8 fs8 e g fs e4 r8 e16 e |
  g16 g g g~ g8 g g g r g8 g2 (fs4) fs8 fs |
  g8 g fs fs16 g~ g g8. fs8 e e2 d2  |
  r2 r4  fs8 fs |
  g8 g fs fs16 g~ g8 r fs e e2 b~ b1~ b
  }
}
%}
bassTwo = \relative c {
  \global
%  \applySwingWithOffset 16 #'(4 3 3 4) #(ly:make-moment 1/8)
 %\applySwing 8 #'(3 2)
\tripletFeel 16
  {
  s1*7 \time 2/4 R2 \time 4/4 R1*9
  \time 2/4 R2 \time 4/4 R1*8
  \time 2/4 R2 \time 4/4 R1
  %
  r2 r4  b8 b16 (ds) ds8 ds cs cs16 b~ b b r8 b b e4 e2r8  e16 e  |
  ds8 ds16  cs~ cs8 cs16 b~ b b8. bs8 bs16 (cs) cs2 ( b4 ) r8 b16 b  |
  a8 a a a16 a~ a4. r8 gs8 a16  (b~ b) b bs (bs)  cs4  r8 cs16 cs  |
  fs8 fs16 fs~ fs8 fs fs fs r fs16 fs b,2 r4  b8 b16 (gs) |
  fs8 fs gs gs16 a~ a a8. b8 b b8. gs16~ gs2 r4 |
  \time 3/4 R2. \time 4/4 R1 \time 3/4 R2. \break
  %coda
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (parenthesize-stencil (ly:time-signature::print grob) 0.1 0.4 0.4 0.1 ))
  \time 4/4 b2 r4 e8 e |
  \key g \major g8 g fs  fs16 fs~ fs e16  r8 d d g4 g2r8  g16 g  |
  fs8 fs e e16 d~ d8 d ds ds e2 ( d4 ) r8 d16 d  |
  c8 c c c c4.r8 b8 c d ds  e4 r8 e16 e  |
  a,16 a a a~ a8  a a a r a16 (b) d2 r4  d8 d |
  a a b b16 c~ c c8. d8 d g2 g2  |
  r2 r4  d8 d |
  a a b b16 c~ c8 r8  d d g,2 g~ g1~ g |
  \bar "|"
  }
}
%}

verse = \lyricmode {
  % Lyrics follow here.
  We're pil -- grims on the jour -- ney of the nar -- row road,
  and those who've gone be -- fore us line the way.
  Cheer -- ing on the faith -- ful,
  en -- cour -- ag -- ing the wea -- ry,
  their lives a stir -- ring test -- a -- ment to God's sus -- tain -- ning grace.
  Sur -- round -- ed by so great a cloud of wit -- ness -- es,
  let us run the race not on -- ly for the prize.
  But as those who've gone be -- fore us,
  let us leave to those be -- hind us
  a her -- i -- tage of faith -- ful -- ness
  passed on through God -- ly lives.
  %chorus/V2
  O may all who come be -- hind us find us faith -- ful.
  May the fire of our de -- vo -- tion light their way.
  May the foot -- prints that we leave
  lead them to be -- lieve,
  and the lives we live in -- spire them to o -- bey.
  O may all who come be -- hind us find us faith -- ful.
  % Coda
   Sur --  bey. O may all who come be -- hind us find us faith -- ful.
  May the fire of our de -- vo -- tion light their way.
  May the foot -- prints that we leave
  lead them to be -- lieve,
  and the lives we live in -- spire them to o -- bey.
  O may all who come be -- hind us find us faith -- ful.
  O may all who come be -- hind us find us faith -- ful.
}

pianoR = \relative c' {
  \global
  %{
  \chordmode {
    f1:5 f g4:m7 f:9/a bf:maj9 bf:/c }
  %}
}

pianoL = \relative c {
  \global
}

accomp = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    \clef "treble"
    #(set-accidental-style 'piano)
    \pianoR
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    \pianoL
  }
>>

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenorOne }
%     \new Staff = "tenor2" \new Voice = "tenor2" { \tenorTwo }
     \new Staff = "bass1" \new Voice = "bass1" { \bassOne }
     \new Staff = "bass2" \new Voice = "bass2" { \bassTwo }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.4
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 88 4)
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
        instrumentName = "Tenor"
        shortInstrumentName = "Ten."
 %       \consists "Ambitus_engraver"
      } {
        \clef "bass"
        \new Voice = "tenor1" \tenorOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor1" \verse


      \new Staff \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Bar."
  %      \consists "Ambitus_engraver"
      } {
        \clef bass\once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (parenthesize-stencil (ly:time-signature::print grob) 0.1 0.4 0.4 0.1 ))
        \new Voice = "bass1" \bassOne
      }

      \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "Bass"
%        \consists "Ambitus_engraver"
      } {
        \clef bass
        \new Voice = "bass2" \bassTwo
      }

    >>
    \accomp
  >>
  \layout {
  \context {
    \Score
    \RemoveAllEmptyStaves
  }
  }
 \midi { }
}
%{MIDI only
\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Tenor"

      } {
        \clef "bass"
        \new Voice = "tenor1" \tenorOne
      }

      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Baritone"

      } {
        \clef bass
        \new Voice = "bass1" \bassOne
      }

      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Bass"

      } {
        \clef bass
        \new Voice = "bass2" \bassTwo
      }

    >>
    \accomp
  >>

  % \layout { }
  \midi { }
}
%}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor1"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \verse
    \midi { }
  }
}


\book {
  \bookOutputSuffix "bass1"
  \score {
    \rehearsalMidi "bass1" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass2"
  \score {
    \rehearsalMidi "bass2" "tenor sax" \verse
    \midi { }
  }
}

