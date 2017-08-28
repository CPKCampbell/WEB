\version "2.19.40"
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
  right-margin = 1\cm
}

#(load"/Sandbox/music/tools/swing.scm")

global = {
  \key d\major
  \numericTimeSignature
  \time 4/4
  \tempo 4=86
  \dynamicUp
\clef "bass"
}

tenorOne = \relative c
%\applySwingWithOffset 16 #'(4 3 3 4) #(ly:make-moment 1/8)
%\applySwing 8 #'(3 2)
\tripletFeel 16
{
  \global
  % intro on piano 9 bars
  s1*7 \time 2/4 R2 \time 4/4 R1
  r2 r4 r8  a8^\mf d a16 d~ d8 e16 g~ g fs8. r8 e16 d cs8 d16 b~ b2 r8 a |
  d8 a d e16 g ~ g fs8. a a,16 b2 r2 |
  g'8^\cresc fs16 e~ e8 d16 e~ e fs8. r8. d16 |
  g8 fs16 e~ e8 d16 e~ e fs8. r8. d16 |
  g8. fs16~ fs8 e16 d g8 fs16 e~ e8. d16 |
  \time 2/4 g8 fs16 e ~ e8 d16 ( e) \time 4/4 e2.^\f r8. a,16^\mf   |
  d8 a16 d~ d8 e16 g~ ( g fs8 ) fs16 e8. d16 |
  cs8 d16 b~ b2 r8 b16 cs d8 a16 d r8 e g fs a8. a,16 |
  b2 r4 r8 b16 d g8 fs16 e~ e8 d16 e ~ e fs8.r8 a,16\cresc d |
  g8. fs16 e8 d16 e~ e8 fs4 r16 d |
  g8 fs16 e~ e8 d g fs16 e r8 d \time 2/4 g8 fs16 g~ g8 a |
  \time 4/4 a1\ff~ a2 r4 fs8\f g16 (a ) |
  %chorus
  a8 a a a16 a~ a e r8 e fs g8. ( fs16 ) fs2 r8  fs16 g
  a8 a16 a~ a8 b16 a~ a g8. fs8 e16 (fs) fs2.r8 d16 d |
  b'8 a g fs16 e~ e4. r8 a8 g16 ( fs~ fs ) fs e (d) d4 r8 d16 d |
  b'8 fs16 e~ e8 d b' fs r8  e16 d  |
  a'2 r4 fs8\mf g16 ( a) b8 g fs e16 b'~ b g8. fs8 e  e8. ( d16) d2. |
  \time 3/4 R2.
  \time 4/4 R1 \time 3/4 R2. \time 4/4
  d8\mp a16 d~ d8 e16 g~ ( g fs8 ) fs16 e8. d16 |
  cs8 d16 b~ b2 r8 b16 cs d8 a16 d r8 e g fs a8. a,16 |
  b2 r4 r8 b16 d g8 fs16 e~ e8 d16 e ~ e fs8. r8 a,16 d |
  g8. fs16 e8 d16 e~ e8 fs4 r16 d |
  g8\cresc  fs16 e~ e8 d g fs16 e r8 d \time 2/4 g8 fs16 g~ g8 a |
  \time 4/4 a1\mf~ a2 r4 fs8 g16 (a ) |
  %chorus
  a8 a a a16 a~ a e r8 e fs g8. ( fs16 ) fs2 r8  fs16 g
  a8 a16 a~ a8 b16 a~ a g8. fs8 e16 (fs) fs2.r8 d16 d |
  b'8 a g fs16 e~ e4. r8 a8 g16 ( fs~ fs ) fs e (d) d4 r8 d16\cresc d |
  b'8 fs16 e~ e8 d b' fs r8  e16 d
  %
  a'2 r4 a8 bf16 ( c) |
  \time 4/4   \key f \major
  c8\f c c c16 c ( c) g r8 g8 a bf8. ( a16) a2 r8 a16 bf |
  c8 c16 c~ c8 d16 c~ c bf r8 a8 g16 ( a) a2. r8 f16 f |
  d'8 c bf a16 g~ g4. r8 c8 bf16 ( a~ a ) a g ( f ) f4 r8 f16 f |
  d '8  a16  g~ g8 f d' a r8 g16 f c'2 r4 a8 bf16 ( c ) |
  d8 bf a g16 d'~ d bf8. a8 g g4~ ( g8. f16 ) f2 |
  r2 r4 a8\mf d d bf a g16 d'~ d bf r8 a8 g |
  g2 f~ f1~ f1 \fermata
  \bar "|"

}

bassOne = \relative c {
  \tripletFeel 16
  {
    \global
    % intro on piano 9 bars
    s1*7 \time 2/4 R2 \time 4/4 R1
    r2 r4 r8  a8^\mf d a16 d~ d8 e16 g~ g fs8. r8 e16 d cs8 d16 b~ b2 r8 a |
    d8 a d e16 g ~ g fs8. a a,16 b2 r2 |
    g'8 \cresc fs16 e~ e8 d16 e~ e fs8. r8. d16 |
    g8 fs16 e~ e8 d16 e~ e fs8. r8. d16 |
    g8. fs16~ fs8 e16 d g8 fs16 e~ e8. d16 |
    \time 2/4 g8 fs16 e ~ e8 d16 ( e) \time 4/4 e2.\f r8. a,16\mf   |
    d8 a16 d~ d8 e16 g~ ( g fs8 ) fs16 e8. d16 |
    cs8 d16 b~ b2 r8 b16 cs d8 a16 d r8 e g fs a8. a,16 |
    b2 r4 r8 b16 d g8 fs16 e~ e8 d16 e ~ e fs8.r8 a,16\cresc d |
    g8. fs16 e8 d16 e~ e8 fs4 r16 d |
    g8 fs16 e~ e8 d g fs16 e r8 d \time 2/4 g8 fs16 g~ g8 a |
    \time 4/4 a1\ff~ a2 r4 d,8\f d16 (e) |
    e8 e d d16 cs~ cs cs r8 cs cs d4 d2r8  d16 d |
    e8 e16 d~ d8 d16 cs~ cs16 cs8. cs8 cs16 (d) d2 ( cs4) r8 b16 b |
    b8 b b d16  cs~ cs4. r8 cs8 b16 (d~ d) d cs (b) b4 r8 d16 d |
    a'8 a16 a~ a8 a gs gs r gs16 gs g2 r4 cs,8\mf cs16 (d)  |
    d8 d cs cs16 d~ d d8. cs8 b b8. (a16 ) g2.  |
    \time 3/4 R2. \time 4/4 R1  \time 3/4 R2. \time 4/4
    d'8\mp a16 d~ d8 e16 g~ ( g fs8 ) fs16 e8. d16 |
    cs8 d16 b~ b2 r8 b16 cs d8 a16 d r8 e g fs a8. a,16 |
    b2 r4 r8 b16 d g8 fs16 e~ e8 d16 e ~ e fs8.r8 a,16 d |
    g8. fs16 e8 d16 e~ e8 fs4 r16 d |
    g8\cresc  fs16 e~ e8 d g fs16 e r8 d \time 2/4 g8 fs16 g~ g8 a |
    \time 4/4 a1\mf~ a2 r4 d,8 d16 (e) |
    e8 e d d16 cs~ cs cs r8 cs cs d4 d2r8  d16 d |
    e8 e16 d~ d8 d16 cs~ cs16 cs8. cs8 cs16 (d) d2 ( cs4) r8 b16 b |
    b8 b b d16  cs~ cs4. r8 cs8 b16 (d~ d) d cs (b) b4 r8 b16\cresc b |
    a'8 a16 a~ a8 a gs gs r gs16 gs g2 r4 f8 f |
    %coda|
    \key f \major a8\f a g g16 g~ g16 f r8 e e f4 f2r8  f16 f |
    g8 g f f16 e~ e8 e e e f2 ( e4) r8 d16 d |
    d8 d d f e4. r8 e8 d f e d4 r8 d16 d |
    f8 f16 f~ f8 f f f r f16 f f2 (e4) e8 e |
    f8 f e e16 f~ f f8. e8 d d2 c2  |
    r2 r4  e8\mf e |
    f8 f e e16 f~ f f r8 e8 d d2 c~ c1~ c
  }
}


bassTwo = \relative c {
  %\applySwingWithOffset 16 #'(4 3 3 4) #(ly:make-moment 1/8)
  %\applySwing 8 #'(3 2)
  \tripletFeel 16
  {
    \global
    % intro on piano 9 bars
    s1*7 \time 2/4 R2 \time 4/4 R1
    r2 r4 r8  a8^\mf d a16 d~ d8 e16 g~ g fs8. r8 e16 d cs8 d16 b~ b2 r8 a |
    d8 a d e16 g ~ g fs8. a a,16 b2 r2 |
    g'8^\cresc fs16 e~ e8 d16 e~ e fs8. r8. d16 |
    g8 fs16 e~ e8 d16 e~ e fs8. r8. d16 |
    g8. fs16~ fs8 e16 d g8 fs16 e~ e8. d16 |
    \time 2/4 g8 fs16 e ~ e8 d16 ( e) \time 4/4 e2.^\f  r8. a,16\mf   |
    d8 a16 d~ d8 e16 g~ ( g fs8 ) fs16 e8. d16 |
    cs8 d16 b~ b2 r8 b16 cs d8 a16 d r8 e g fs a8. a,16 |
    b2 r4 r8 b16 d g8 fs16 e~ e8 d16 e ~ e fs8.r8 a,16\cresc d |
    g8. fs16 e8 d16 e~ e8 fs4 r16 d |
    g8 fs16 e~ e8 d g fs16 e r8 d \time 2/4 g8 fs16 g~ g8 a |
    \time 4/4 a1\ff~ a2 r4 a,8\f a16 (cs )
    %29
    cs8 cs b b16 a~ a a r8 a a d4 d2r8  d16 d  |
    cs8 cs16  b~ b8 b16 a~ a a8. as8 as16 (b) b2 ( a4 ) r8 a16 a  |
    g8 g g g16 g~ g4. r8 fs8 g16  (a~ a) a as (as)  b4  r8 b16 b  |
    e8 e16 e~ e8 e e e r e16 e a,2 r4  a8\mf a16 (g) |
    g8 g fs fs16 g~ g g8. a8 a d4 d2. |
    \time 3/4 R2. \time 4/4 R1 \time 3/4 R2.   \time 4/4
    %V3
    d8\mp a16 d~ d8 e16 g~ ( g fs8 ) fs16 e8. d16 |
    cs8 d16 b~ b2 r8 b16 cs d8 a16 d r8 e g fs a8. a,16 |
    b2 r4 r8 b16 d g8 fs16 e~ e8 d16 e ~ e fs8.r8 a,16 d |
    g8. fs16 e8 d16 e~ e8 fs4 r16 d |
    g8\cresc fs16 e~ e8 d g fs16 e r8 d \time 2/4 g8 fs16 g~ g8 a |
    \time 4/4 a1\mf~ a2 r4 a,8 a16 ( cs) |
    cs8 cs b b16 a~ a a r8 a8 a d4 d2 r8 d16 d
    cs8 cs16 b~ b8 b16 a~ a a8. as8 as b2 ( a4 ) r8 a16 a |
    g8 g g g16 g~ g4. r8 fs8 g16 ( a16~ a ) a as8 b4 r8 b16\cresc b |
    e8 e16 e~  e8 e e e r8 e16 e |
    %coda
    a,2 r4 d8 d |
    \key f \major f8\f f e  e16 e~ e d16  r8 c c a4 a2 r8  f'16 f  |
    e8 e d d16 c~ c8 c cs cs d2 ( c4 ) r8 c16 c  |
    bf8 bf bf bf bf4.r8 a8 bf c cs  d4 r8 d16 d  |
    g,8 g16  g~ g8  g g g r g16 a c2 r4  c8 c |
    g g a a16 bf~ bf bf8. c8 c f2 f2  |
    r2 r4  c8\mf c |
    g g a a16 bf~ bf bf r8  c c f,2 f~ f1~ f |
    \bar "|"
  }
}


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
  % V3
  Af -- ter all our hopes and dreams have come and gone,
  and our chil -- dren sift through all we've left be -- hind,
  may the clues that they dis -- cov -- er
  and the mem -- 'ries they un -- cov -- er
  be -- come the light that leads them
  to the road we each must find.
  %
  O may all who come be -- hind us find us faith -- ful.
  May the fire of our de -- vo -- tion light their way.
  May the foot -- prints that we leave
  lead them to be -- lieve,
  and the lives we live in -- spire them to o -- bey.
  O may all who come be -- hind us find us faith -- ful.
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
    \new ChoirStaff \with {
      \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #20
    }
    <<
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
        \clef "bass"
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
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bass2" \verse

    >>
    \accomp
  >>
  \layout {
    \context {
      \Score
      \RemoveAllEmptyStaves
      \override StaffGrouper.staff-staff-spacing.padding = #2
      \override StaffGrouper.staff-staff-spacing.basic-distance = #1
    }
  }
  \midi {}
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

