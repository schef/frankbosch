\version "2.18.0"
\include "deutsch.ly"

\header {
  composer = "Frank Bosch"
  title = "BAŠ JE FORA ŠTO TE VIDIM"
  titlex = "Na putu"
  broj = "3."
}

\include "s02_frbo.ily"

note = \relative c' {
  \once \override Score.MetronomeMark #'outside-staff-priority = #1 
  \once \override Score.MetronomeMark.Y-offset = #5.8
  \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \tempo 4 = 148
  \key d \major
  %\set Score.markFormatter = #format-mark-box-letters
  
  %dio A
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.6
  \once \override Score.RehearsalMark.Y-offset = #3
  \mark \default
  %\repeat volta 2 {
  \partial2
  a4 h4 |
  d8 d4 e8 ~ e8 fis4 e8 ~ |
  e8 e ~ e4 fis a8 h ~ |
  h4 a4 fis e8 d ~ |
  d2 a4 h4 |
  d4 d4 e8 fis4 e8 ~ |
  e8 e ~ e4 fis4 a8 h ~ |
  h4 a4 fis8 e4 d8 ~ |
  d2 \breathemoj fis4 a |

  h4 h h cis8 h ~ |
  h8 a ~ a4 fis4 a8 g ~ |
  g8 fis4 e8 ~ e d4 h8 ~ |
  h2 a4 h4 |
  d4 d4 e8 fis4 e8 ~ |
  e8 e ~ e4 d8 e4 fis8 ~ |
  fis4 e4 d e8 d ~ |
  d2
  \bar "|."
}

akordi = \chordmode {
  \set chordChanges = ##t
  \skip 2
  d1 | a | g2 a | d1 |
  d1 | a | g2 a | d1 |
  h1:m | fis:m | g | e:m |
  d | a | g2 a | d2
}

kiticaA = \lyricmode {
  \set stanza = #"1. "
  %\skip4 \skip4
  Baš je fo -- ra __ što te vi -- dim,         
  sad ću te __ po -- zdra -- vi -- ti. __
  Da -- jem ti svoj to -- pli os -- mijeh,
  mi smo stvar -- no sre -- tni -- ci. __
}

ref = \lyricmode {
  Bog nas ta -- ko žar -- ko lju -- bi, __
  da je do -- ša -- o __ na svijet. __
  Da nam da -- de sre -- tan ži -- vot,
  ti i ja __ smo lju -- blje -- ni. __
}

kiticaB = \lyricmode {
  \set stanza = #"2. "
  Ma -- šem te -- bi __ "s ka" -- ži -- pr -- stom,
  tak ću te __ po -- zdra -- vi -- ti. __
  Ma -- šem on -- da __ des -- nom ru -- kom,
  mi smo stvar -- no sre -- tni -- ci. __
}

kiticaC = \lyricmode {
  \set stanza = #"3. "
  %\skip4 \skip4
  Vr -- tim se tad __ o -- ko se -- be, __
  tak ću te __ po -- zdra -- vi -- ti. __
  Da -- jem sva -- kom svo -- ju ru -- ku, __
  mi smo stvar -- no sre -- tni -- ci. __
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


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}
