\version "2.18.0"
\include "deutsch.ly"

\header {
  composer = "Frank Bosch"
  style = "Psalam 108,4-6"
  title = "DO NEBA"
  titlex = "Na putu"
}

\include "s02_frbo.ily"

note = \relative c' {
  \once \override Score.MetronomeMark #'outside-staff-priority = #1 
  \once \override Score.MetronomeMark.Y-offset = #3
  \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \tempo 4 = 120
  \key a \minor
  %    \set Score.markFormatter = #format-mark-box-letters
  
  %dio A
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.6
  \once \override Score.RehearsalMark.Y-offset = #3.4
  \mark \default
  %    \repeat volta 2 {
  %    \partial8
  r8 e8 e c d4 f8 e ~ |
  e2 r2 |
  r8 e4 f8 g4\( f8\) f\( ~ |
  f8 e ~ e4\) r2 |
  r8 e8\( e\) c d4\( f8\) e ~ |
  e2 r2 |
  r8 e8 e8 c8 d4\( c8\) a ~ |
  a2 r8 \breathemoj a'4 h8 |
  %\bar ".|:"
  \repeat volta 2 {
    c4 e, r4. c'8 |
    c8\( h a\) h ~ h h4 a8 |
    h4 e, r8 d'8 d c |
    h8( a) a4 r4. g8 |
    g4 f f2 |
    g4 g8( a) g4 f8 f( |
    e1) |
  }
  \alternative {
    {r2 r8 a4 h8}
    {r1 \bar "|."}
  }
}

akordi = \chordmode {
  \set chordChanges = ##t
  a2:m d:m | a:m e:7 | a:m g | c  e:7 |
  a2:m d:m | a:m e:7 | a:m e:7 | a1:m |
  a1:m | g | e:7 | a:m |
  f1 | g | c | e:7 |
  \set chordChanges = ##f
  e:7 |
}

kiticaA = \lyricmode {
  \set stanza = #"1. "
  %\skip4 \skip4
  Hva -- lit ću te, Bo -- že, __ me -- đu na -- ro -- di -- ma,
  me -- _ đu pu -- ci -- ma __ te -- bi ću pje -- va -- ti, __
}

ref = \lyricmode {
  jer do ne -- ba, do ne -- _ _ ba je do -- bro -- ta,
  do -- bro -- ta tvo -- ja, do o -- bla -- ka tvo -- ja __ vjer -- nost je. __
  Jer do
}

kiticaB = \lyricmode {
  \set stanza = #"2. "
  Uz -- vi -- si se, Bo -- že, __ nad ne -- be -- _ sa, __ _  
  nek sla -- va tvo -- _ ja __ je nad svom ze -- _ mljom,
}

%kiticaC = \lyricmode {
%\set stanza = #"3. "
%\skip4 \skip4
%}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \kiticaA \ref }
    \addlyrics { \kiticaB }
    %        \addlyrics { \kiticaC }
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
