\version "2.18.0"
\include "deutsch.ly"

\header {
  title = "BUDI JAK I HRABAR"
  style = "Jošua 1,8-9"
  composer = "Frank Bosch"
  titlex = "Na putu"
}

\include "s02_frbo.ily"

note = {
  \key d \minor
  \once \override Score.MetronomeMark #'outside-staff-priority = #1 
  \once \override Score.MetronomeMark.Y-offset = #6.4
  \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \tempo 4 = 120
  \partial 8 d'8 |
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #5.45
  \once \override Score.RehearsalMark.Y-offset = #3.35
  \mark \default
  a' a' f' g' ~ g'4 e'8 f' ~ |
  f'2 r2 |
  c''2 c''4 b'8 b' ~ |
  b' a'4. r2 |
  a'8 a' f' g' ~ g' g' f' e' |
  f'2 r8 d' d' e' |
  f'4 f' g'8 f' e' f' ~ |
  f'4 r2. |
  e'8 e'4 e'8  e' e' f' g' |
  g' f' ~ f'4 r4 r8 f' |
  g' g' g' g' g' a' b' a' ~ |
  a'2 r2 |
  e'8 e' e' e' f' g'4 g'8 ~ |
  g' f' f'4 r2 |
  g'8 g' g' g' a' b'4 b'8 ~ |
  b' a' a'4 r g'8 a' |
  
  \once \override Score.RehearsalMark.Y-offset = #4
  \mark \default
  b'4 b' c''8 b' a' g' |
  a'4 a'8 f' b' a'4 f'8 |
  g' g' f' f' ~ f' e' d' e' |
  f'4 g' a' g'8 a' |
  b'4 b' c''8 b' a' g' |
  a'4 a'8 f' b' a' r f' |
  g' g' f' f' ~ f' e' d' e' |
  f'4 e' d' r8 
  \bar "|."

}

akordi = \chordmode {
  %\semiGermanChords
  s8 |
  d2:m a:7 | d1:m |
  c1 | f1 |
  d2:m g2:m | d1:m |
  b2 c2 | f1 |
  a1:7 | d1:m | c1 | f1 |
  a1:7 | d1:m | b1 | a:7 |

  g2:m c |
  f2 d:m |
  g2 a2:7 | d4:m a:7 d2:m |
  g2:m c |
  f d:m
  g2 a2:7 | d4:m a:7 d4.:m 
}

rijeci = \lyricmode {
  Raz -- mi -- šljaj o Bi -- bli -- ji  da -- nju i no -- ću, 
  ka -- ko bi vjer -- no dr -- ža -- o sve što je u njoj na -- pi -- sa -- no: __ 
  sa -- mo ćeš ta -- da bi -- ti sre -- tan __ i us -- pjet ćeš u pot -- hva -- ti -- ma. __ 
  Ni -- sam li ti za -- po -- vje -- di -- o, ni -- sam li ti za -- po -- vje -- di -- o: 

  Bu -- di jak i  hra -- bar, 
  ne boj se i ne stra -- huj, 
  jer ku -- da god po -- đeš, "s to" -- bom je Bog tvoj.
  Bu -- di jak i hra -- bar 
  Ne boj se i ne stra -- huj, 
  jer ku -- da god po -- đeš, "s to" -- bom je Bog tvoj.  
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    %\displayLilyMusic { \transpose g d \note }
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
