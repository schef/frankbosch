\version "2.18.0"
\include "deutsch.ly"

\header {
  composer = "FRANK BOSCH"
  style = ""
  title = "EINFACH SUPER DICH ZU SEHEN"
  titlex = "Unterwegs"
}

\include "s02_frbo.ily"

note = \relative c' {
  \tempo 4 = 148
  \key d \major
  %\set Score.markFormatter = #format-mark-box-letters
  
  %dio A
  \mark \default
  %    \repeat volta 2 {
  \partial2
  a4 h |
  d8 d ~ d4 e fis8 e ~ |
  e8 e ~ e4 fis a8 h ~ |
  h4 a fis e8 d ~ |
  d2 a4 h8 d ~ |
  d4 d e fis8 e ~ |
  e8 e ~ e4 fis a8 h ~ |
  h4 a fis e8 d ~ |
  d2 \breathemoj fis4 a8 h ~ |
  h4 h h cis8 h ~ |
  h8 a ~ a4 fis4 a8 g ~ |
  g4 fis e8 d4 h8 ~ |
  h2 a4 h8 d ~ |
  d4 d e fis8 e ~ |
  e8 e ~ e4 d e8 fis ~ |
  fis4 e d8 e4. |
  d2 
  \bar "|."
}

akordi = \chordmode {
  \set chordChanges = ##t
  \skip 2
  d1 | a | g2 a | d1 |
  d1 | a | g2 a | d1 | h:m |
  fis1:m | g | e:m | d | a |
  g2 a | d2 
}

kiticaA = \lyricmode {
  \set stanza = #"1. "
  %\skip4 \skip4
  Ein -- fach su -- per Dich zu se -- hen komm und mach doch ein -- fach mit
  Ich schenk dir mein schön -- stes Lä -- cheln denn das ist doch echt der Hit!
}

ref = \lyricmode {
  Gott ist auf die Welt ge -- ko -- mmen weil er es nicht la -- ssen kann
  Uns zu lie -- ben und be -- schen -- ken, Leu -- te lasst Ihn an euch ran.
}

kiticaB = \lyricmode {
  \set stanza = #"2. "
  Mit dem Zei -- ge -- fin -- ger wink ich und be -- grü -- ße dich da -- mit
  Mit der rech -- ten Hand wink ich Dir Mensch das ist doch echt der Hit!
}

kiticaC = \lyricmode {
  \set stanza = #"3. "
  Nun dreh ich mich um mich sel -- ber und be -- grü -- ße dich da -- mit
  Je -- dem geb ich mei -- ne Hän -- de, Leu -- te das ist echt der Hit!
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \kiticaA \ref }
    \addlyrics { \kiticaB }
    \addlyrics { \kiticaC }
  >>
  %	\midi {}
}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97, 2.18.0
%}
