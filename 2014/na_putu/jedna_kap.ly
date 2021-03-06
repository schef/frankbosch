\version "2.18.0"

%\language "deutsch"

\header {
  title = "JEDNA KAP"
  titlex = "Na putu"
  composer = "Frank Bosch"
  style = "Dražen Radman"
  broj = "4"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
}

note = \relative c' {
  \key c \major
  \once \override Score.MetronomeMark.Y-offset = #3
  \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \tempo 4 = 120  
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.6
  \once \override Score.RehearsalMark.Y-offset = #2.95
  \mark \default
  e4 e e e | f f f g8 g( |
  e2) r2 |
  r1 |
  e4 e e e |
  a4 g f e8 e ~ |
  e2 r2 |
  r1 |
  f4 f f f8 f ~ |
  f2 g4 a8 a( |
  e8) e ~ e4 r2 |
  r1 |
  f4 f f f ~ |
  f4 f8 f f e4 d8( |
  d2) r2 |
  r2 r4
  \noBreak
  \breathemoj
  
  e8 e16 e16 ~ |
  e8 c' c c c8 a4 a8 ( |
  g2 ) r4 r8 e8 |
  e8 c' c d ~ d c h a |
  a8( g ~ g4) r4 r8 f8 |
  e8 c' c c d8 c4 h8( ~ |
  h8 a g f) e4 d8 e |
  f4 f8 f a8 f4 f8 ( |
  e8) e ~ e4 r2 |
  \bar "|."
}

tekst = \lyricmode {
\set stanza = "1."
Kad sam to -- ga da -- na ču -- o riječ, __
ma -- kar dije -- te, ja sam zna -- o tad, __
da i -- zgu -- bljen sam, __ a -- li vo -- ljen, __
da spas tre -- bam __ od Go -- spo -- di -- na. __

Sad u -- mi -- vam o -- braz sr -- ca svog, __
na i -- zvo -- ru bi -- strom, Bo -- že, tvom, __
da o -- draz rije -- či bu -- dem vje -- ran,
je -- dna kap gdje je ne -- tko že -- dan.

sad u -- mi -- vam o -- braz sr -- ca svog
na i -- zvo -- ru bi -- strom bo -- že tvom
jer dra -- go -- cje -- na ti si vo -- da
ži -- va rije -- ka mir sr -- ca mo -- ga
}

tekstDva = \lyricmode {
%\repeat unfold 45 {\skip 8}
\set stanza = "2."
Kad sam to -- ga da -- na ču -- o riječ, __
ma -- kar dije -- te, ja sam zna -- o tad, __
da sam Kri -- stu drag, __ da sam vo -- ljen, __
i što i -- mam __ da je nje -- gov dar. __

Sad u -- mi -- vam o -- braz sr -- ca svog, __
na i -- zvo -- ru bi -- strom, Bo -- že, tvom, __
jer dra -- go -- cje -- na ti si vo -- da,
ži -- va rije -- ka, mir sr -- ca mo -- ga. __
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  a1:m | f | c | g | a:m | f |
  c1 | g | d:m | d:m | a:m | a:m |
  d1:m | d1:m | g | g | a2:m f |
  c2 g | a:m f | c2 g2 | a2:m f |
  g2 c | d1:m | e:7 |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
%    \addlyrics { \tekstTri }
  >>
  \layout {}
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
  >>
  \midi { \tempo 4 = 120 }
}

\markup {
  \vspace #2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [2]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse 2.} }     
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic chorus } \bold \italic \tiny x2}
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic chorus} \tiny \bold \italic 2. }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {solo [8]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {outro [5]} }
    }
  }
}
%\markup {
%\vspace #2
%\smaller \italic Leadsheet: \hspace #2
%		\huge {
%		\rounded-box {
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(0 . 2.05) 3 \teeny \italic bridge }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold { 1 \italic \teeny chorus \bold \tiny ×2 } }
%		}
%	}
%}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}
