\version "2.18.0"

\include "deutsch.ly"


\header {
  title = "BUDI JAK I HRABAR"
  style = "Jošua 1,8-9"
  composer = "Frank Bosch"
  titlex = "Na putu"
}

\include "s02_frbo.ily"

note = \relative c' {
  \key g \minor
  \partial 8
  g'8 |
  \mark \default
  d'8 d h cis ~ cis4 a8 h8 ~ |
  h4 r2. |
  fis'2 e4 e8 d ~ |
  d8 d4. r2 |
  d8 d h cis ~ cis cis h a |
  h2 r8 g8 g a |
  h4 h cis8 cis a h ~ |
  h4 r2. |
  a8 a a a ~ a a h cis |
  cis8 h r2 r8 h8 |
  cis8 cis cis cis cis d e d ~ |
  d4 r4 r2 |
  a8 a a a h cis ~ cis cis ~ |
  cis8 h h4 r2 |
  cis8 cis cis cis d e ~ e e ~ |
  e8 d d4 r4 cis8 d |
  \mark \default
  e4 e fis8 e d cis |
  d4 d8 fis e d r8 h |
  cis8 cis cis8 h ~ h a g a |
  h4 cis d cis8 d |
  e4 e fis8 e d cis |
  d4 d8 fis e d r8 h |
  cis8 cis cis8 h ~ h a g a |
  h4 a g r4 | \bar "|."

}

akordi = \chordmode {
\semiGermanChords
s8 |
h2:m fis:7 | h1 |
a1 | d1 |
h2:m e2:m | h1:m |
g2 a2 | d1 |
fis1:7 | h1 | a1 | d1 |
fis1:7 | h1 | g1 | b:dim |

e2:m a |
d2 h:m |
e2 fis2:7 | h4:m fis:7 h2:m |
e2:m a |
d h:m
e2 fis2:7 | h4:m fis:7 h2:m |
}

rijeci = \lyricmode {
Raz -- mi -- šljaj o Bi -- bli -- ji  da -- nju i no -- ću, 
ka -- ko bi vjer -- no dr -- ža -- o sve što je u njoj na -- pi -- sa -- no: 
sa -- mo ćeš ta -- da bi -- ti sre -- tan i us -- pjet ćeš u pot -- hva -- ti -- ma. 
Ni -- sam li ti za -- po -- vje -- di -- o, ni -- sam li ti za -- po -- vje -- di -- o: 

Bu -- di jak i  hra -- bar 
Ne boj se i ne stra -- huj, 
jer ku -- da god po -- đeš, "s to" -- bom je Bog tvoj.
Bu -- di jak i hra -- bar 
Ne boj se i ne stra -- huj, 
jer ku -- da god po -- đeš, "s to" -- bom je Bog tvoj.  
}

\score {
  <<
  \new ChordNames { \jazzChords \transpose h d \akordi }
  \new Staff { \transpose g d \note }
  \addlyrics { \rijeci }
  >>
  \layout {}
}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97, 2.18.0
%}
