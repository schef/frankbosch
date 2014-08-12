%Lilypond test za Kao ruza
\version "2.18.0"
\include "deutsch.ly"

\header {
  %title = "MEIN HAUS SOLL EIN BETHAUS SEIN"
  title = "MEIN HAUS"
  %subtitle = "(kao ruža)"
  composer = "Frank Bosch"
  style = "Markus 11,17; Jesaja 56,7"
  titlex = "Unterwegs"
}

\include "s02_frbo.ily"
\include "deutsch.ly"

note = \relative c' {
  \key e \major
  \partial 4
  \time 3/4
  %kitica
  \mark \default
  e4 |
  e2. (|
  fis2 ) e8 fis |
  gis4 e2 |
  cis2 r8 e8
  gis 4 gis4 gis |
  gis4 ( fis ) e |
  gis2. |
  fis2  e4 |
  e2. (|
  fis2 ) e8 fis |
  gis4 h2 |
  h8 (a~ a4.) a8
  gis4 fis e  |
  gis4 ( fis   ) fis |
  e2. | \bar ".|:" 
  r2

  \breathemoj
  %refren

  \tuplet 3/2 {a8 gis a} |
  gis8 e4. \tuplet 3/2 {a8 gis a} |
  gis8 e4. \tuplet 3/2 {a8 gis a} |
  gis8 e4. \tuplet 3/2 {gis8 a h} |
  h8 e,4. ~ e8 cis |
  gis'4 fis e |
  fis gis fis |
  e2. | \bar ":|."
  \key f \major
  r2
  \breathemoj

  f4 |
  f2. (|
  g2 ) f8 g |
  a4 f2 |
  d2 r8 f8
  a 4 a4 a |
  a4 ( g ) f |
  a2. |
  g2  f4 |
  f2. (|
  g2 ) f8 g |
  a4 c2 |
  c8 (b~ b4.) b8
  a4 g f  |
  a4 ( g   ) g |
  f2. | \bar ".|:" 
  r2 
  
  \breathemoj
  \tuplet 3/2 {b8 a b} |
  a8 f4. \tuplet 3/2 {b8 a b} |
  a8 f4. \tuplet 3/2 {b8 a b} |
  a8 f4. \tuplet 3/2 {a8 b c} |
  c8 f,4. ~ f8 d |
  a'4 g f |
  g a g |
  f2. | \bar ":|."
  r2 r8

  \breathemoj
  %bridge
  f8  |
  f4 f f8 g |
  e2 f8 g |
  a4 a b |
  g2 a8 b |
  c2. (|
  b2 ) a4 |
  g2( a4) |
  a2 r8 d, 8 |
  f4 f f8 g |
  e4 e f8 g |
  a2( b4) |
  g4. g8 a b |
  c2.(  |
  b2 a4) |
  g2( a4) |

  a2
  \key a \major
  \breathemoj
  a4 |
  a2. (|
  h2 ) a8 h |
  cis4 a2 |
  fis2 r8 a8
  cis4 cis4 cis |
  cis4 ( h ) a |
  cis2. |
  h2  a4 |
  a2. (|
  h2 ) a8 h |
  cis4 e2 |
  e8 (d~ d4.) d8
  cis4 h a  |
  cis4 ( h   ) h |
  a2. ~|
  a2. \bar "|." 
}

akordi = \chordmode {
  s4 |
  e2. h/e e/gis a cis:m fis fis:m h
  e2. h/e e/gis a cis:m fis4 fis:m h e2 a4/e e2.
  e2. cis:m a e cis:m fis2 h4 e2. e2.
  %modulacija
  f2. c/f f/a b d:m g g:m c
  f2. c/f f/a b d:m g4 g:m c f2 b4/f f2.
  f2. d:m b f d:m g2 c4 f2. f
  %bridge
  d2.:m c f c/e f b2 g4:m c2.
  f d:m c f c/e f b2 g4:m c2. f2.
  %modulacija
  a2. e/a a/cis d fis:m h h:m e
  a2. e/a a/cis d fis:m h4 h:m e a2 d4/a a2.
}

rijeci = \lyricmode {
  Mein Haus soll ein Bet -- haus sein, ein Bet -- haus  für a -- lle Völ -- ker  
  Mein Haus soll ein Bet -- haus sein, ein Bet -- haus  für a -- lle Welt.

  \set stanza = "1." Geht an die Hec -- ken, geht an die Zäu -- ne,  geht auf die Stra -- ßen, geht auf die Plät -- ze
  Und la -- det sie ein in mein Haus.
  
  Mein Haus soll ein Bet -- haus sein, ein Bet -- haus  für a -- lle Völ -- ker  
  Mein Haus soll ein Bet -- haus sein, ein Bet -- haus  für a -- lle Welt.
  
  \set stanza = "3." Geht zu den Star -- ken, geht zu den Herr -- schern geht zu den Rei -- chen geht zu den Sa -- tten.
  Und la -- det sie ein in mein Haus.
  
  Das E -- van -- ge -- li -- um muss ver -- kün -- digt wer -- den un -- ter a -- llen Völ -- kern
  Und sie -- he ich bin bei Euch, a -- lle Ta -- ge bis an der Welt En -- de.
  
  Mein Haus soll ein Bet -- haus sein, ein Bet -- haus  für a -- lle Völ -- ker  
  Mein Haus soll ein Bet -- haus sein, ein Bet -- haus  für a -- lle Welt.
}

rijeciDva = \lyricmode {
  \repeat unfold 29 _
  Geht in die Dör -- fer, geht in die Städ -- te, geht in den Dschun -- gel, geht auf die In -- seln
  Und ich ge -- he euch selbst vor -- aus.
  
  \repeat unfold 29 _
  
    Geht zu den Schwa -- chen geht zu den Kran -- ken, gebt ih -- nen Hoff -- nung, heilt die Ge -- bre -- chen.
  Und ich ge -- he euch selbst vor -- aus.
}

rijeciTri = \lyricmode {
  \repeat unfold 29 _
  \set stanza = "2." Geht zu den Kin -- dern, gebt ih -- nen Hoff -- nung, gebt ih -- nen Glau -- ben, gebt ih -- nen Lie -- be
  Und la -- det sie ein in mein Haus.
}

rijeciCetiri = \lyricmode {
  \repeat unfold 29 _
  Gebt ih -- nen E -- ssen, gebt ih -- nen Klei -- der,  gebt ih -- nen Wär -- me und ein Zu -- hau -- se.
  Und ich ge -- he euch selbst vor -- aus.
}

\score {
  <<
    \new ChordNames {\jazzChords \akordi }
    \new Voice { \note }
    \addlyrics { \rijeci }
    \addlyrics { \rijeciDva }
    \addlyrics { \rijeciTri }
    \addlyrics { \rijeciCetiri }
  >>
  \layout {}
  \midi {\tempo 4 = 240}
}