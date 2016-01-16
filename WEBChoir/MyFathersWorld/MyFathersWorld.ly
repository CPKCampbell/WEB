\version "2.17.14"
\language "english"

\header {
  title = "My Maker's World"
  composer = "Trad. English - Terra Beata"
  arranger = "Sheldon Curry"
  poet = "Maltbie Davenport Babcock/S. Curry"
}

\paper {
  #(set-paper-size "letter")
  line-width = 7.5\in
  ragged-bottom = ##f
  ragged-right = ##f
  ragged-last-bottom = ##t
  systems-per-page = #2
}


bn = { \mark \default }
abf = {\autoBeamOff }
abo = {\autoBeamOn }

global = {
  \key d \major
  \time 2/2
  \tempo "With hushed intensity, in two"
}

descant = \relative c' {
  \global
  \dynamicUp
  s1*70 \key ef \major s1*6
  R1 r2 ef4\f (f) \bn g2 bf g f ef1 |
  r2 f4 (g) af2 c bf g f1 |
  r2 c' bf g g f4 (ef) g2 f ef <bf' bf,> 
  ef4 (f) g (af) bf2 f4 (g) ef1  r2 bf |
  %95
  \repeat volta 2 {
    ef2 bf c d ef1 r2 ef4^"2nd time stomp" (d)
    c2 ef d c bf1 r2 c2
    bf2 g g f4 ef g2 f ef <bf' bf,> 
    ef,4 (f) g af bf2 f4 (g) 
  }
  \alternative {
    {ef1 r2 bf'\ff }
    {ef1~ ef2 r2 }
  }
  R1*5
  bf1\mp bf af R1 f~ (f~ f ef~\> ef\!\pp )
  R1 R1
}

verse = \lyricmode {
  This is my Fath -- er's world,
  Oh __ let me ne'er for -- get
  that though the wrong 
  seems __ oft so strong,
  God is __ the __ ru --ler __ yet.
  This 
  \repeat volta 2 {
    is my Fath -- er's world:
    why __ should my heart be sad?
    The Lord is King; 
    let the heav -- ens ring!
    God reigns; __ let the earth be __ 
  }
  \alternative {
    {glad! This }
    { glad! __ }
  }
  My Fath -- er's world __
  
}

soprano = \relative c' {
  \global
  R1*3  r2 d4\p (e) fs2 \bn a fs e d1 r2 e4 (fs) g2 b a fs e1 |
  r2 b'2 \bn a fs fs e4 (d) fs2 e d <a' a,> d,4 (e) fs (g) a2 e4 (fs) d1 r2 a'2 |
  %21
  \bn  d2 a b cs d1 r2 d4 (cs) b2 d cs b a1
  r2 b2 a \bn  fs fs e4 (d) fs2 e d <a' a,> d,4 (e) fs (g) a2 e4 (fs) d1\>~ d\!
  R1 r2 d4\mp (e) fs2 \bn a fs e d1 r2 e4 (fs) g2 b a fs e1 |
  r2 b'2 a fs fs e4 (d) fs2 e d <a' a,> d,4 (e) fs (g) a2 e4 (fs) d1 r2 a'\mf 
  %55
  d2 \bn a b cs d1 r2 d4 (cs) b2 d cs b a1 r2 b4 b 
  %63
  a2 \bn fs fs e4 (d) fs2 e d a d4 (e) fs (g) a2 e4 fs d1~ d2 r2 |
  %71
  \key ef \major \bn %71
  R1 R1 r2 r4 r8 bf8\mf ef4 ef8 f~ f f c4 ef-. r4 r2 |
  r2 bf'4 (c bf2) r4 r8 bf,8 
  ef4 ef8 f~ f f c4 ef-. r4 r2 |
  r2 bf'4 (c bf2) r4 r8 bf,8
  ef4 ef8 f~ f f c4 ef-. r4 r2 |
  r2 bf'4 (c bf2) r4 r8 bf,8
  ef4 ef8 f~ f f c4 ef-. r4 r2 |
  r2 bf'4 (c bf2) r4 r8 bf,8
  ef4 ef8 f~ f f c4 ef-. r4 r2 |
  r2 bf'4 (c bf2) r4 r8 bf,8
  ef4 ef8 f~ f f c4\f  |
  %95
  \bn  \repeat volta 2 {
    ef-. r4 r2 r2 bf'2 df4. c8~ c4 bf~ bf r4 af (bf)
    af2 bf bf r gf4. f8~ f4 af~ af g f2 \bn ef1 |
    r4 bf'2-> bf4 c (bf) af (g) bf2 bf |
    ef,1~ ef 
  }
  \alternative {
    { r2 r4 r8 bf8 ef4 ef8 f~ f f c4\ff }
    { r2 r4 r8 bf8 ef4 ef8 f~ f f c4 }
  }
  ef4-. r4 r2
  r2 ef4 (f ef2 ) r2 R1 
  r2 r4 r8 bf8 ef4 ef8 f~ f f c4
  ef4-. r4 r2
  r2 ef4 (f ef1 ) r2 df2\mp df c bf1~\> bf~ bf\!\pp
  R1 R1
  
}

bass = \relative c {
  \global
  s1*19
  r2 a2 |
  d2 a b cs d1 r2 d4 (cs) b2 d cs b a1
  r2 b'2 a \bn  fs fs e4 (d) fs2 e d r2 R1
  r2 r4 r8 a8\p a'4 a8 a~ a fs b4 a-. r4 r2 |
  fs4 fs8 e~ e e d4~ d d-. r4 r8 a8 |
  a'4 a8 a~ a fs b4 a-. r4 r2 |
  fs4 fs8 e~ e e d4~ d d-. r4 r8 a8 |
  e'4 e8 e~ e fs g4 fs-. r4 r2 |
  g4 g8 b~ b b a4~ a a-. r4 r8 a,8 
  a'4 a8 a~ a fs b4 a-. r4 r2 |
  fs4 fs8 e~ e e d4~ d d-. r4 r8 a8
  a'4 a8 a~ a fs b4 a-. r4 r2 |
  fs4 fs8 e~ e e d4~ d d-. a'2\mf
  %55
  d2 a b cs d a4 a b a8 b~ b a4. (g1~ g) |
  r2 d4 d e b8 d r4 r8 a8 |
  a'4 a8 a~ a fs b4 a-. r4 r2 |
  fs4 fs8 e~ e e d4~ d d-. r4r8 a8 |
  a'4 a8 a~ a fs b4 a-. r4 r2 |
  fs4 fs8 e~ e e d4~ d d-. r4 r8 bf8\mf |
  %71
  \key ef \major
  bf'4 bf8 bf~ bf g c4 bf-. r4 r2 |
  g4 g8 f~ f f ef4~ ef ef-. r4 r8 bf8 |
  bf'4 bf8 bf~ bf g c4 bf-. r4 r2 |
  g4 g8 f~ f f ef4~ ef ef-. r4 r8 bf8 |
  bf'4 bf8 bf~ bf g c4 bf-. r4 r2 |
  g4 g8 f~ f f ef4~ ef ef-. r4 r8 ef8
  ef4 ef8 ef~ ef ef f4 ef-. r4 r2
  %85
  f4 f8 g~ g g bf4~ bf bf-. r4 r8 bf,
  bf'4 bf8 bf~ bf g c4 bf-. r4 r2 
  g4 g8 f~ f f ef4~ ef ef-. r4 r8 bf8 |
  bf'4 bf8 bf~ bf g c4 bf-. r4 r2 
  g4 g8 f~ f f ef4~ ef ef-. bf2\f
  %95
  \repeat volta 2 {
    ef2 bf c d ef ef4 ef g f8 g~ g f4. (ef1~ ef)
    r2 ef4 ef f c8 ef r4 r8 bf8 |
    bf'4 bf8 bf~ bf g c4 bf-. r4 r2 
    g4 g8 f~ f f ef4~ ef ef-. r4 r8 bf8 |
    bf'4 bf8 bf~ bf g c4 bf-. r4 r2 
  }
  \alternative {
    { g4 g8 f~ f f ef4~ ef ef-. bf2\ff }
    { g'4 g8 f~ f f ef4~ ef ef-. r4 r8 bf8 }
  }
  \bn
  bf'4 bf8 bf~ bf g c4 bf-. r4 r2
  g4 g8 f~ f f ef4~ ef ef-. r4 r8 bf8 |
  bf'4 bf8 bf~ bf g c4 bf-. r4 r2
  g4 g8 f~ f f ef4~ ef ef-. r4 r8 bf8 |
  bf'4 bf8 bf~ bf g c4 bf-. r4 r2
  g4 g8 f~ f f ef4~ ef ef-. r4 r8 bf8 |
  bf'4 bf8 bf~ bf g c4 bf-. r4 r2
  g4\p\> g8 f~ f f ef4~ ef ef-.\pp\! r2
}

sopranoVerse = \lyricmode {
  This is my Fath -- er's world,
  and to my lis -- t'ning ears
  all na -- ture sings,
  and 'round me rings
  the mu -- sic __ of the spheres.
  %
  This is my Fath -- er's world:
  I rest me in the thought
  of rocks and trees,
  of skies and seas;
  God's hand __ the __ won -- ders __ wrought __
  %
  This is my Fath -- er's world:
  the __ birds their ca -- rols raise;
  the morn -- ing light,
  the __ lil -- y bright
  de -- clare __ their __ Mak -- er's praise.
  %
  This is my Fath -- er's world:
  He __ shines in all that's fair;
  in the rus -- tling grass
  I hear Him pass;
  God speaks __ to __ me 
  ev -- 'ry -- where __ 
  %
  A -- san -- te sa -- na Mun -- gu. 
  Oh __ A -- san -- te sa -- na Mun -- gu. 
  Oh __ A -- san -- te sa -- na Mun -- gu.
  Oh __ A -- san -- te sa -- na Mun -- gu.
  Oh __ A -- san -- te sa -- na Mun -- gu.
  Oh __ A -- san -- te sa -- na Mun -- 
  %95
  gu. My Fath -- er's world,
  why  should my heart, why should my  heart be sad?
  Let the heav  ens  ring!
  God reigns __
  A -- san -- te sa -- na Mun -- 
  
  A -- san -- te sa -- na Mun -- gu.    
  Oh __  A -- san -- te sa -- na Mun -- gu.
  
  Oh __  My Fath -- er's world __
  
}

bassVerse = \lyricmode {
  This is my Fath -- er's world:
  I rest me in the thought
  of rocks and trees,
  of skies and seas;
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we! 
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  %55
  This is my Fath -- er's world, Tuim -- be Hal -- le -- lu -- jah! __
  Tuim -- be Hal -- le -- lu!
  %63
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  This 
  %95
  \repeat volta 2 {
    is my Fath -- er's world, Tuim -- be Hal -- le -- lu -- jah! __  
    Tuim -- be Hal -- le -- lu!
    A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
    A -- san -- te sa -- na Mun -- gu.
  }
  \alternative {
    {  Bwa -- na a -- si -- fi -- we! This }
    {  Bwa -- na a -- si -- fi -- we! A -- }
  }
  san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
  A -- san -- te sa -- na Mun -- gu. Bwa -- na a -- si -- fi -- we!
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "descant" \new Voice = "descant" { s1*0\f \descant }
     \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \soprano }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \new Staff = "right" \new Voice = "right" { s1*0\f \right }
     \new Staff = "left" \new Voice = "left" { s1*0\f \left }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.6
       \set Score.midiMaximumVolume = #0.7
       \set Score.tempoWholesPerMinute = #(ly:make-moment 96 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

right = \relative c'' {
  \global
  R1 r4 a8\pp d a'2~ a1
  r4 a,8 d a'2~ a1
  r4 a,8 d a'2~ a1
  r4 a,8 d a'2~ a1
  r4 a,8 d a'2~ a1
  r4 a,8 d a'2~ a1
  r4 a,8 d a'2~ a1
  r4 a,8 d a'2~ a1 
  r4 a,8 d a'2~ a1 
  r4 a,8 d a'2~ a1 
  %22
  r4 <d,, a>4 q-. r4
  r2 r4 r8 <d a>8 <e b>4-> <d a>-. <e b>4-> <d a>-. 
  R1 r4 <d a>4 q-. r4
  r2 r4 r8 <d a>8 <e b>4-> <d a>-. <e b>4-> <d a>-. 
  %29
  R1*7
  r4 a'8 d a'2~ a1
  \clef bass r4 <d,, a>8-.\mp d,-. r2 \clef "treble"
  R1 r4 a''8 d a'2~ a1
  \clef bass r4 <d,, a>8-.-> d,-. r2 \clef "treble"
  R1 r4 a''8 d a'2~ a1
  \clef bass r4 <d,, a>8-.-> d,-. r2 \clef "treble"
  R1 r4 a''8 d a'2~ a1
  \clef bass r4 <d,, a>8-.-> d,-. r2 \clef "treble"
  R1 r4 a''8 d a'2~ a1
  \clef bass r4 <d,, a>8-.-> d,-. r4 \clef "treble" <d''' a d,>4-.->
  %55
  r2 r4 <fs,, d>8 a,-. r4 <g' d>8 b,-. r4 <a' e>8 cs,-.
  r4 <d' a>8 d,-. r4 a'8 d a'4 a,8 d a'2 |
  r2 <g,d>8 g,4 <g' d>8-> (q) g, <g' d>4-> <g d>8-.-> g,-. r4
  r2 r4 a'8 d a'2 r4 <d a d,>4-.->
  %63
  R1 r4 a,8 d a'2~ a1 
  \clef bass r4 <d,, a>8-.-> d,-. r4 \clef "treble" <a'' d, a>8-> q-.
  R1 r4 a8 d a'2~ a1 
  \clef bass r4 <d,, a>8-.-> d,-. r2 \clef "treble"
  \key ef \major
  %71
  R1 r4 bf''8 ef bf'2~ bf1
  \clef bass r4 <ef,, bf>8-.-> ef,-. r2 \clef "treble" |
  R1 r4 bf''8 ef bf'2~ bf1
  \clef bass r4 <ef,, bf>8-.-> ef,-. r2 \clef "treble" |
  R1 r4 bf''8 ef bf'2~ bf1
  \clef bass r4 <ef,, bf>8-.-> ef,-. r2 \clef "treble" |
  R1 r4 bf''8 ef bf'2~ bf1
  \clef bass r4 <ef,, bf>8-.-> ef,-. r2 \clef "treble" |
  R1 r4 bf''8 ef bf'2~ bf1
  \clef bass r4 <ef,, bf>8-.-> ef,-. r4 <ef' bf>8-.-> ef,-. \clef "treble" |
  R1 r4 bf''8 ef bf'2~ bf1 |
  \clef bass r4 <ef,, bf>8 ef,-. r4 \clef "treble" <ef''' bf ef,>4-.->\f |
  %95
  \repeat volta 2 {
    r4 <ef,, bf> r4 <g ef>8 bf,-. |
    r4 <af' ef>8 c,-. r4 <bf' f>8 d,-. |
    r2 r4 bf'8 ef bf'4 bf,8 ef bf'2 |
    r2 <af,ef>8 af,4 <af' ef>8-> (q) af, <af' ef>4-> <af ef>8-.-> af,-. r4 |
    r2 r4 bf'8 ef bf'2-> r4 <ef bf ef,>4-.-> |
    %103
    R1 r4 bf,8 ef bf'2~ bf1 |
    \clef bass r4 <ef,, bf>8-.-> ef,-. r4 \clef "treble" <bf'' ef, bf>8-> q-. |
    R1 r4 bf8 ef bf'2~ |
  }
  \alternative {
    { bf1 \clef bass r4 <ef,, bf>8 ef, r4 \clef "treble" <bf'' ef bf,>4->\ff | }
    { bf1\repeatTie <ef, bf>8^^ ef,-. r4 <ef' bf>8^^ ef,-. r4 | }
  }
  %113
  <bf''' ef,>4. q8~ q\>^"dim poco a poco" bf, ef4 |
  df1 df4. df8~ df bf f'4 <ef bf> <bf ef,>-. q r4\!\mf |
  <bf' ef,>4. q8~ q bf, ef4 |
  df1 df4. df8~ df bf f'4 <ef bf> <bf ef,>-. q r4\!\mp |
  <bf' ef,>4. q8~ q bf, ef4 |
  df1 df4. df8~ df bf f'4 <ef bf> <bf ef,>-. q r4
  R1 r4\p bf8 ef bf'2~ bf1 R1
}

left = \relative c {
  \global
  d,4.\pp d8 r2 R1  d4. d8 r2 R1 
  d4. d8 r2 R1  d4. d8 r2 R1 
  d4. d8 r2 R1 d4. d8 r2 R1 
  d4. d8 r2 R1 d4. d8 r2 R1 
  d4. d8 r2 R1 d4. d8 r2 R1 
  d4. d8 r2 R1 d4. d8 r2 R1 
  d4. d8 r2 R1 d4. d8 r2 R1 
  d4. d8 r2 R1 d4. d8 r2 R1 
  d4. d8 r2 R1 d4. d8 r2 R1 
  d4. d8 r2 r2 r4 a'4 
  %39
  d,4. d8 r2 R1 d4. d8 r2 R1 
  d4. d8 r2 R1 d4. d8 r2 r2 r4 a'
  %47
  d,4. d8 r2 R1 d4. d8 r2 r2 r4 a'
  d,4. d8 r2 R1 d4. d8 r2 R1 d4. d8 r2 R1
  d2 r2 R1 d4 \ottava #-1 d,2.-> ( d2) \ottava #0 r4 a''8 b 
  d,4. d8 r2 r4 \ottava #-1 d,-> \ottava #0 d'-. r4 
  %63
  d4. d8 r2 R1 d4. d8 r4 r8 g d g r4 a, b 
  d4. d8 r2 R1 d4. d8 r2 d4 r bf-> c->
  %71
  \key ef \major
  ef4. ef8 r2  R1 ef4. ef8 r2 |
  ef8 bf' r4 bf, c ef4. ef8 r2  R1 ef4. ef8 r2 |
  ef8 bf' r4 bf, c 
  %79
  ef4. ef8 r2 R1 ef4. ef8 r2  ef8 bf' r4 bf, c ef4. ef8 r2 |
  R1  ef8 bf' r4 bf, c ef4. ef8 r2
  R1  ef8 bf' r4 bf, c ef4. ef8 r2
  R1  ef8 bf' r4 bf, c ef4. ef8 r2
  R1  ef8 bf' r4 bf, c\f |
  %95
  \repeat volta 2 {
    ef4. ef8 r2 ef'8 ef,-. r4 ef'8 ef,-. r4 ef8-> \ottava #-1 ef,4 \ottava #0 bf'8 ef2
    r2 bf'4 c ef,4-. \ottava #-1 ef,2. ~ ef2 \ottava #0 r4 bf''8 c 
    ef,4. ef8 r2 r4 \ottava #-1 ef,4->ef-> \ottava #0 r4
    %103
    ef'4. ef8 r2 R1  |
    ef4. ef8 r4 r8 bf'8 |
    ef, bf' r4 bf,4 c 
    ef4. ef8 r2 R1  }
  \alternative {
    { ef4. ef8 r4 r8 bf'8 ef, bf' r4 bf,4 c\ff }
    { ef4. ef8 r4 r8 bf'8 r4 ef, r4 bf' }
  }
  %113
  ef,4. ef8 r2 r4 bf8 c ef-> ef bf c |
  ef4. ef8 r2 r2 r4 c'8 bf |
  ef,4.\mf ef8 r2 r4 bf8 c ef-> ef bf c |
  R1 ef4. ef8 r2 r4 bf8\mp c ef-> ef bf c |
  R1  ef4. ef8 r2  R1  ef4.\p ef8 r2 R1  ef4. ef8 r2 R1
}

descantPart = \new Staff \with {
  instrumentName = "Descant"
  midiInstrument = "flute"
} { \descant }
\addlyrics { \verse }

choirPart = \new ChoirStaff <<
  \new Staff  \with {
    midiInstrument = "voice oohs"
    instrumentName = "Soprano"
  } 
  \new Voice = "sops" { \soprano }
  \new Lyrics { \lyricsto "sops" 
                { \sopranoVerse  }}
  
  \new Staff \with {
    midiInstrument = "voice oohs"
    instrumentName = "Bass"
  } { \clef bass \bass }
  \addlyrics { \bassVerse }
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  fontSize = #-5.0
  \override StaffSymbol #'staff-space = #(magstep -5)
  \override StaffGrouper.staff-staff-spacing.basic-distance = #3
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
    \descantPart
    \choirPart
    \pianoPart
  >>
  \layout {
    \set Score.markFormatter = #format-mark-box-barnumbers
    \context {
      \ChoirStaff
      \override StaffGrouper.staff-staff-spacing.padding = #8
    } 
    \context {
      \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  
}
\score {
  \unfoldRepeats
  <<
    \descantPart
    \choirPart
    \pianoPart
  >>
  
  \midi {
    
    \context {
      \Score
      
      tempoWholesPerMinute = #(ly:make-moment 96 2)
    }
  }
}
% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerse
    \midi { }
  }
}

