\version "2.17.14"
\language "english"

\header {
  title = "Lyric volta bug"
}

<<
  \new Staff  {
    \new Voice = "sop" {
      \repeat volta 2 { ef'1 }
      \alternative {
        { bf4 bf bf bf   }
        { r2 r4 r8 bf8  }
      }
      ef'4 r4 r2
    }
  }
  
  \new Lyrics { \lyricsto "sop" { 
    \repeat volta 2 { gu. }
    \alternative {
      {  bla bla bla bla }
      {  bleh }
    }
    gu.
                }
  }
>>