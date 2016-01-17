% Version 1.0
% Last edit: March 30, 2006
% The music and words produced by this source code are believed
% to be in the public domain in the United States. The source
% code itself is covered by the Creative Commons Attribution-
% NonCommercial license, 
% http://creativecommons.org/licenses/by-nc/2.5/
% Attribution: Geoff Horton

\version "2.17.11"
\include "english.ly"

#(set-default-paper-size "letter")
#(set-global-staff-size 20)
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'delete-intermediate-files #t)

title = "O Sacred Head Now Wounded"
composer = "Hans Leo Hassler"
poet = "ascr. St. Bernard of Clairvaux"
translator = "trans. Robert Bridges"
meter = "76.76.D"
arranger = "Arr. J.S. Bach"
piece = "Passion Chorale"

world = {
  \key a \minor
  \time 4/2
  \partial 2*1
}

melody = \relative c' {
  \world
  e2 |
  a g f e |
  d1 e2 b' |
  c c b4( a) b2 |
  a1. % end line 1
  e2 |
  a g f e |
  d1 e2 b' |
  c c b4( a) b2 |
  a1. % end line 2
  c2 |
  b4( a) g2 a b |
  c1 c2 g |
  a g f f |
  e1. % end line 3
  c'!2 |
  b4( c) d2 c b |
  a1 b2 e, |
  f e d g |
  e1. \bar "|."
}


alto = \relative c' {
  \world
  c2 |
  c c c4( d) d( c) |
  c2( b) c d |
  c4( d) e2 e2. d4 |
  c1. % end line 1
  c2 |
  c c c4( d) d( c) |
  c2( b) c d |
  c4( d) e2 e2. d4 |
  c1. % end line 2
  e2 |
  d4( f) e( d) c2 f |
  f2( e4 d) e2 e |
  f e e d |
  cs1. % end line 3
  d2 |
  d d e4( fs) g2 |
  g( fs) g c,4( b) |
  a( b) c2 c4( a) b2 |
  c1. \bar "|."
}

tenor = \relative c' {
  \world
  g2 |
  f2 g a4( g) g2 |
  a( g) g gs |
  a a a gs |
  a1. % end line 1
  g2 |
  f2 g a4( g) g2 |
  a( g) g gs |
  a a a gs |
  a1. % end line 2
  a4( g) |
  f( a) c( b) a( g) f( g) |
  a2( g4 f) g2 c |
  c bf a a |
  a1. % end line 3
  a=2 |
  g a g4( a) b( a) |
  e'2( d) d g, |
  f g g g |
  g1. \bar "|."
}

bass = \relative c {
  \world
  c2 |
  f e a,4( b) c2 |
  f,( g) c b |
  a4( b) c( d) e2 e, |
  a1. % end line 1
  c2 |
  f e a,4( b) c2 |
  f,( g) c b |
  a4( b) c( d) e2 e, |
  a1. % end line 2
  a2 |
  d e f4( e) d2 |
  c1 c2 c |
  f4( e) d( cs) d( e) f( g) |
  a1. % end line 3
  fs2 |
  g fs e d |
  cs2( d) g, c= |
  d e4( f) g2 g, |
  c1. \bar "|."
  
}

verseOne = \lyricmode {
  \set stanza = "1. "
  O sa -- cred head, now wound -- ed,
  with grief and shame weighed down,
  Now scorn -- ful -- ly sur -- round -- ed 
  With thorns Thine on -- ly crown;
  O sac -- red head, what glo -- ry, 
  what bliss 'til now was Thine?
  Yet though des -- pised and go -- ry
  I joy to call Thee mine!
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  What Thou, my Lord, hast suf -- fered,
  Was all for sin -- ners gain;
  Mine, mine was the trans -- gres -- sion,
  But Thine the dead -- ly pain;
  Lo here I kneel, my Sav -- iour,
  'Tis I de -- serve Thy place;
  Look on me with Thy fav -- our,
  And save me by Thy grace.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  What lan -- guage shall I bor -- row,
  To thank Thee, dear -- est Friend?
  For this Thy dy -- ing sor -- ow,
  Thy pi -- ty with -- out end?
  O make me Thine for -- ev -- er!
  And should I faint -- ing be,
  Lord, let me nev -- er, nev -- er
  Out live my love to Thee!
}
\markup {
  \column {
    \fill-line { \large \bold \title } % title
    \fill-line { \caps \piece               % piece
           \caps \composer      % composer
    }
    \fill-line { \meter          % meter
           \arranger           % arranger
    }
  }
}

\score {
  \context ChoirStaff <<
    \context Staff = upper <<
      \context Voice =
         sopranos { \voiceOne << \melody >> }
      \context Voice =
         altos { \voiceTwo << \alto >> }
      \context Lyrics = one \lyricsto sopranos \verseOne
      \context Lyrics = two \lyricsto sopranos \verseTwo
      \context Lyrics = three \lyricsto sopranos \verseThree
    >>
    \context Staff = lower <<
      \clef bass
      \context Voice =
        tenors { \voiceOne << \tenor >> }
      \context Voice =
        basses { \voiceTwo << \bass >> }
    >>
>>
  \layout {
    \context {
      \Score
      % **** Turns off bar numbering
      \remove "Bar_number_engraver"
    }
    \context {
      \Lyrics
      % **** Prevents lyrics from running too close together
      \override LyricSpace.minimum-distance = #0.6
      % **** Makes the text of lyrics a little smaller
      \override LyricText.font-size = #-1
      % **** Moves lines of lyrics closer together
      \override VerticalAxisGroup.minimum-Y-extent = #'(-1 . 1)
    }
  }
}


\paper {
  ragged-bottom = ##t
  top-margin = 0.25\in
  bottom-margin = 0.25\in
}

%{
  _The Hymnal 1940_, #75. Note that the _Hymnal_ itself is wrong
  about the author, as _The Hymnal Companion_ states that Bridge's
  translation is from the Latin original and not from Paulus Gerhardt's
  German translation.

  Revision history: 
  3-30-06 New hymn
%}




%{
convert-ly (GNU LilyPond) 2.17.14  convert-ly: Processing `'...
Applying conversion: 2.9.4, 2.9.6, 2.9.9, 2.9.11, 2.9.13, 2.9.16,
2.9.19, 2.10.0, 2.11.2, 2.11.3, 2.11.5, 2.11.6, 2.11.10, 2.11.11,
2.11.13, 2.11.15, 2.11.23, 2.11.35, 2.11.38, 2.11.46, 2.11.48,
2.11.50, 2.11.51, 2.11.52, 2.11.53, 2.11.55, 2.11.57, 2.11.60,
2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3, 2.13.0, 2.13.1, 2.13.4,
2.13.10,  Not smart enough to convert minimum-Y-extent. Vertical
spacing no longer depends on the Y-extent of a VerticalAxisGroup.
Please refer to the manual for details, and update manually. 2.13.16,
2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31, 2.13.36, 2.13.39,
2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7,
2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25,
2.15.32, 2.15.39, 2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4,
2.17.5, 2.17.6, 2.17.11
%}
