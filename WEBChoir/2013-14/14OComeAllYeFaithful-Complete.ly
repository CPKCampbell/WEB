\version "2.19.0"
\header {
  filename = "OComeAllYeFaithful-Complete.ly"
  enteredby = "Gordon Gilbert"
  composer = "J.F. Wades' Cantus Diversi"
  poet = "from the Latin"
  date="1751"
  title = "O Come All Ye Faithful"
  metre = "Adeste Fideles PM"
  meter = \metre
  copyright = "Public Domain"
  style = "Hymn"
  mutopiacomposer = \composer
  mutopiapoet=\poet
  maintainer = "Gordon Gilbert"
  maintainerEmail = "gord@angel.eicat.ca"
  lastupdated = "2011/Dec/11"
}


\language "english"
\paper {
  #(set-paper-size "letter")
  % ragged-bottom=##f
  % ragged-last-bottom=##f
}
#(set-global-staff-size 18)
global= {
  
  \time 4/4
  \key af \major
  
  \partial 4
  \skip 1 * 20 \bar "||"
  
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats
   <<
     \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
     \new Staff = "lead" \new Voice = "lead" { s1*0\f \lead }
     \new Staff = "bari" \new Voice = "bari" { s1*0\f \bari }
     \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 92/2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

sop = \context Voice = "sop"    \relative c'' {
  \voiceOne
  af4 af2 ef4 af bf2 ef,
  c'4 bf c df c2 bf4 af
  af2 g4 f g( af) bf c g2( f4.) ef8 ef1
  ef'2 df4 c df2 c bf4 c af bf g2 ef4
  ^ \markup{ \large \italic Refrain }
  af4 af g af bf af2 ef4 
  c' c bf c df c2 bf4
  c df c bf af g2 af4( df)
  c2( bf4.) af8 af2.
  
  
}

alto=\context Voice = "alto"   \relative c' {
  \voiceTwo
  ef4 ef2 ef4 c ef2 ef ef4 ef ef f ef2 ef4 c
  c( d) ef d ef2 ef4 ef ef2 d4. ef8 ef1
  ef2 f8 g af4 af( g) af2 ef4 ef f f ef2 ef4
  ef4 ef1 ~ ef2. ef4 ef ef ef ef ef2 ef4 af g 
  af ef ef8 d ef2 ef4( f) ef2 ~ ef4. c8 c2. 
  
}	

tenor = \context Voice = "tenor"   \relative c' {
  \voiceOne
  c4 c2 c4 c df2 bf af4 bf af af af2 g4 af
  af2 bf4 bf bf( af) g ef bf'2( af4.) g8 g1
  c2 df4 ef df2 ef ef4 af, c df bf2 g4 
  c c bf c df c2. af4 af g af bf af2 g4
  ef' ef ef bf bf bf2 af af( g4.) af8 af2.
}

bass = \context Voice = "bass"   \relative c {
  \voiceTwo
  af4 af2 c4 af ef'2 g af4 g af df, ef2 ef4
  f4 f2 ef4 bf ef c g af bf2 bf4. bf8 ef1
  c'2 bf4 af bf2 af g4 af f df ef2 ef4 r4
  r1 r2. af4 af g af df, ef2 ef4 af bf af g f ef df c df
  ef2 ef4. af,8 af2.
}

accomp=\chordmode {
  
}



stanzaa = \lyricmode {
  O come, all ye faith -- ful, Joy -- ful and tri -- um -- phant,
  O come ye, O come ye to Beth -- le -- hem;
  Come and be -- hold Him Born the King of An -- gels:
  
  O come, let us a -- dore Him,
  O come, let us a -- dore Him,
  O come, let us a -- dore Him, __ Christ __ the Lord!
}

stanzab = \lyricmode {
  _ God of _ God, _ Light _ of _ Light, _ _ 
  Lo, He ab -- hors not the Vir -- gin's womb;
  Ve -- ry _  God, Be -- got -- ten, not cre -- a -- ted;
}

stanzac = \lyricmode {
  _ Sing, choirs of an -- gels, Sing in ex -- ul -- ta -- tion, _
  Sing, all ye ci-ti -- zens of heav'n a -- bove,
  Glo -- ry to God _ In _ the _ high -- est;
}

stanzad = \lyricmode {
  _ See how the Shep -- herds, sum -- moned to His cra -- dle,
  _ Lea -- ving their flocks-draw nigh with low -- ly fear;
  We too will thi -- ther Bend our joy -- ful foot -- steps;
}

stanzae = \lyricmode {
  _ Yea, Lord, we greet Thee, Born this hap -- py mor -- ning,
  _ Je -- su, to Thee be _ glo -- ry given;
  Word of the Fa -- ther, Now in flesh ap -- pear -- ing;
}

stanzaf = \lyricmode {
  _ Lo! star -- led chief -- tains, Ma -- ji, Christ a -- dor -- ing
  _ Of -- fer Him frank-in -- cense and gold and myrrh;
  We to the Christ Child Bring our hearts' o -- bla -- tions:
}

\score {
  \transpose af f
  \context ChoirStaff <<
    \context ChordNames \accomp
    \unset ChoirStaff.melismaBusyProperties 
    \context Staff ="upper"  { \clef "G" <<
      \global
      \sop
      \alto
    >>}
    
    \lyricsto "sop" \context Lyrics = "stanza-1" {
      \set stanza = "1."
      \stanzaa }
    \lyricsto "sop" \context Lyrics = "stanza-2" {
      \set stanza = "2."
      \stanzab }
    \lyricsto "sop" \context Lyrics = "stanza-3" {
      \set stanza = "3."
      \stanzac }
    %{	\lyricsto "sop" \context Lyrics = "stanza-4" {
        \set stanza = "4."
        \stanzad }
        \lyricsto "sop" \context Lyrics = "stanza-5" {
        \set stanza = "5."
        \stanzae }
        %	\lyricsto "sop" \context Lyrics = "stanza-6" {
        %		\set stanza = "6."
        %			\stanzaf }
    %}
    \context Staff = "lower"  { \clef "F"<<
      \global
      \tenor
      \bass
    >>}
  >>
  \layout{
    
    indent = 0.0\pt
    \context {
      \ChordNames
      \override ChordName.style = #'american
      chordChanges = ##t
    }
  }
  
  \midi {
    \tempo 4 = 120
  }
  
  
}



%{
  convert-ly (GNU LilyPond) 2.19.0  convert-ly: Processing `'...
  Applying conversion: 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
  2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
  2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
