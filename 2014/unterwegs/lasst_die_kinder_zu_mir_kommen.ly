\version "2.18.0"
\include "deutsch.ly"

\header {
  composer = "Frank Bosch"
  style = "Markus 10,14+16"
  title = "LASST DIE KINDER"
  titlex = "Unterwegs"

}

\include "s02_frbo.ily"

note = \relative c'' {
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \once \override Score.MetronomeMark.padding = #3
  \tempo 4 = 140
  \key e \minor
  %    \set Score.markFormatter = #format-mark-box-letters

  %dio A
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.6
  \once \override Score.RehearsalMark.padding = #1.4
  \mark \default
  
  
  %    \repeat volta 2 {
      \partial8 \tiny \parenthesize e,8 \normalsize
  
  g4 fis e r4 |
  a4 g fis r8 fis |
  h4 a g a  |
  h2 h4 r8 fis8 |
  g4 fis e r4 |
  a4 g fis r8 d8 |
  d2 fis4 d |
  e2 e4 r8 e8 |
  \bar ":..:"

  \once \override Score.RehearsalMark.padding = #0
  \mark \default
  c'4 c h a |
  a4 g2. |
  fis4 fis g a |
  a4 h2. |
  c4 c h a |
  a4 g2. |
  fis4 fis e d |
  e2. r4 |
  \bar ":..:"
 
  \once \override Score.RehearsalMark.padding = #0
  \mark \default
  g4 fis e r4 |
  a4 g fis r4 |
  h4 a g a |
  h2. r4 |
  g4 fis e r4 |
  a4 g fis r4 |
  d2 fis4 d |
  e2. r4 |
  \bar ":|."
}

akordi = \chordmode {
  \set chordChanges = ##t
  \skip8
  e1:m | a:m | d | g | e:m |
  a1:m | d | e:m | a:m | e:m |
  d1 | g | a:m | e:m | d | e:m |
  e1:m | a:m | d | g | e:m |
  a1:m | d | e:m |
}

kiticaA = \lyricmode {
  %\set stanza = #"1. "
  %\skip4 \skip4

_ Lasst doch die, lasst doch die, __ _ Kin -- der zu mir kom -- men.
und hin -- dert sie, nicht da -- ran, __ _ hin -- dert sie nicht. __ _ Denn
}

ref = \lyricmode {
Das sag -- te uns Je -- sus, der die Kind -- er lieb hat, 
der sie in den Arm nahm und sie se -- gne --  te.
}

kiticaB = \lyricmode {
  %\set stanza = #"2. "
  Laj laj laj, laj laj laj, laj laj laj laj laj.
  Laj laj laj, laj laj laj, laj laj laj laj.
}

kiticaC = \lyricmode {
  %\set stanza = #"3. "
  %\skip4 \skip4
  \tiny "(Denn)" \normalsize sol __ _ -- chen, sol __ _ -- chen ge -- hört das Hi -- mmel -- reich __ _ _ 
Sol __ _ -- chen, sol __ _ -- chen ge -- hört das Reich Go -- ttes. __ _
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \kiticaA \ref \kiticaB }
    %        \addlyrics { \kiticaB }
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
