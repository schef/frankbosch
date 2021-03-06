\version "2.18.0"

%\language "deutsch"

\header {
  title = "VREMEPLOV"
  titlex = "Na putu"
  composer = "Frank Bosch"
  %style = ""
  broj = "1"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
}

note = \relative c' {
  \key f \major
  \once \override Score.MetronomeMark.Y-offset = #6.2
  \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \tempo 4 = 80  
    \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.6
  \once \override Score.RehearsalMark.Y-offset = #3.3
  \mark \default
  \partial 16*3
  a'16 a a |
  a8 g g f16 f ~ f4 r8 f16 f |
  e8 f e f16 e ~ e8 d8 r16 g g g |
  b8 a a g16 g ~ g4 r8 r16 f |
  f8 e d c16 c ~ c4 r16 a' a a |
  a8 g g f16 f ~ f4 r8 f16 f |
  e8 f e f16 e ~ e8 d8 r16 a' a a |
  b8 a a g16 g ~ g4 r8 r16 f |
  f8 e d c16 c ~ c4 r8 r16 \breathemoj c'16 |
  c16 b8 a16 ~ a8 g16 g ~ g8 f8 r8 r16 a |
  a8 b g f16 g ~ g4 r8 r16 c |
  c16 b8 a16 ~ a8 g16 g ~ g8 f8 r8 r16 a |
  a8 b g f16 g ~ g4 r |
  \break
  \mark \default
  c2 c4 ( ~ c8 b ) |
  b2. r4 |
  r8 c8 c8 c16 \( c \)\( c8\) b16 a ~ a8 b |
  a4 g8 g ~ g4 r4 |
  c2 c4 ( ~ c8 b ) |
  b2. r4 |
  r4 r8 c8 c b16 a ~ a8 b |
  a4 g8 g ~ g4 r8 
  \breathemoj
  f |
  f8 f f a g4 \( f8 \) f ~ |
  f2 r4 r16
  \bar "|."
}

tekst = \lyricmode {
 Je -- si li i -- kad že -- li -- o __ "" pu -- to -- va -- ti kroz vrije -- me?
 U -- ži -- vo vi -- dje -- ti baš sve, __ ne u -- vijek kroz T -- V. __
 O -- tić' u do -- ba vi -- te -- za __ "" i pre -- kra -- snih prin -- ce -- za.
 Po -- sje -- tit' dvo -- re kra -- ljev -- ske __ i sjest' na prije -- sto -- lje. __
 %
 Da ba -- rem i -- ma na -- čin, i -- spu -- nit že -- lju tu. __
 Pu -- to -- va -- ti __ kroz vrije -- me i vi -- djet' i -- sti -- nu. __
 %
 Vre -- me -- plov, __ _ _ u _ šta -- li -- cu za -- vi -- ri -- ti. __
 Vre -- me -- plov, i du -- bo -- ko do -- ži -- vje -- ti __
 ro -- đe -- nje si -- na Bo -- žje -- ga. __
}

tekstDva = \lyricmode {
 Po -- sto -- ji knji -- ga ču -- de -- sna ko -- ja vo -- di te kroz vrije -- me.
 Jer o -- na taj -- ne ot -- kri -- va __ i sr -- ce o -- tva -- ra. __
 Sa njom se mo -- žeš vra -- ti -- ti __ gdje je po -- če -- lo spa -- se -- nje.
 I tad u -- po -- zna -- ti kroz nju, __ tog kra -- lja kra -- lje -- va. __
 %
 Sad znam da i -- ma na -- čin, i -- spu -- nit že -- lju tu. __
 Pu -- to -- va -- ti __ kroz vrije -- me i vi -- djet' i -- sti -- nu. __
 %
 Vre -- me -- plov, __ ka -- o i Ši --  _ mun že -- lim re -- ći gle: __
 Vre -- me -- plov, "\"Sad" o -- či mo -- je vi -- dje -- še __
 o, -- Bo -- že, tvo -- ga Me -- si -- "ju!\"" __ % { "Luka 2:30" }
}

akordi = \chordmode {
 s16*3
   f1 |
   d:m |
   g:m |
   b2 c |
   f1 |
   d:m |
   g:m |
   b2 c |
   %
   a2:m d:m
   b2/g c4:sus4 c |
   a2:m d:m
   b2/g c4:sus4 c |
   %
   f1 |
   g1:m/f |
   f1 |
   c/e |
   f1 |
   g1:m/f |
   d1:m |
   c2:sus4 c2 |
   b2/d c/e
   f2 f4 f16
   %prelaz
   %b2/g f/a | b c | 

}

\score {
  <<
  \new ChordNames { \jazzChords \akordi }
  \new Staff { \note }
  \addlyrics { \tekst }
  \addlyrics { \tekstDva }
  >>
  \layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 79 }
}

\markup {
  \vspace #2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [4]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse 1.} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \teeny \italic bridge }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3-4 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse 2.} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \teeny \italic bridge }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3-4 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {modulation+1 [G]} }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3-4 \teeny \italic chorus } \bold \teeny \italic 2.}
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3-4 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic chorus } \bold \teeny \italic {end x2}}
    }
  }
}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}
