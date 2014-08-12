\version "2.18.0"
\include "deutsch.ly"

\header {
  composer = "Frank Bosch"
  title = "DIE GÜTE GOTTES"
  titlex = "Unterwegs"
  broj = "1."
}

\include "s02_frbo.ily"

note = \relative c' {
  \once \override Score.MetronomeMark #'outside-staff-priority = #1 
  \once \override Score.MetronomeMark.Y-offset = #3.4
  \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \tempo 4 = 93
  \key cis \minor
  %\set Score.markFormatter = #format-mark-box-letters
  
  %dio A
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.6
  \once \override Score.RehearsalMark.Y-offset = #3
  \mark \default
  %\repeat volta 2 {
  %\partial2
  r4 cis8 cis16 dis ~ dis4 dis8 e16 dis ~ |
  dis16 e8. ~ e4 r2 |
  r4 cis8 cis16 dis ~ dis4 dis8 e16 dis ~ |
  dis16 e8. ~ e4 r2 |
  r4 h'8 cis16 gis ~ gis4 gis8 fis16 fis ~ |
  fis16 e8. r4 r2 |
  r8 h'8 h cis16 gis ~ gis fis8. fis8 e |
  gis8 fis ~ fis4 r2 |
  
  \once \override Score.RehearsalMark.X-offset = #-1.2
  \once \override Score.RehearsalMark.Y-offset = #0.3
  \mark \default
  r8 gis8 gis fis16 fis ~ fis e8. ~ e4 |
  a8 gis fis e16 e ~ e4 r4 |
  r8 gis16 gis gis8 fis16 fis ~ fis e8 e16 ~ e4 |
  e8. e16 ~ e16 dis8 cis16 ~ cis h8 h16 ~ h4 |
  r8 gis'16 gis gis8 fis16 fis ~ fis e8 e16 ~ e4 |
  h'4 a gis fis |
  r8 e8 e fis gis a gis fis ~ |
  fis4 e8 e4. r4 |
  \bar "|."
}

akordi = \chordmode {
  \set chordChanges = ##t
  %\skip 2
  cis1:m | a | cis:m | a |
  gis2:m7 cis:m | a:maj7 h |
  gis2:m7 cis:m | a:maj7 a4 h4 |
  
  e4 e/gis a2 | h e |
  e4 e/gis a2 | cis:m h |
  e4 e/gis a2 | h2 cis:m |
  a2 e | h e |
}

kiticaA = \lyricmode {
  \set stanza = #"1. "
  %\skip4 \skip4

}

ref = \lyricmode {

}

kiticaB = \lyricmode {
  \set stanza = #"2. "

}

kiticaC = \lyricmode {
  \set stanza = #"3. "
  %\skip4 \skip4

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
