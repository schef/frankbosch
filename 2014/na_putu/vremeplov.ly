\version "2.18.0"

%\language "deutsch"

\header {
  title = "VREMEPLOV"
  titlex = "Na putu"
  composer = "Frank Bosch"
  %style = ""
}

\include "s02_frbo.ily"

note = \relative c' {
  \key f \major
  \partial 16*3
  a'16 a a |
  a8 g g f16 f ~ f4 r8 f16 f |
  e8 f e f16 e ~ e16 d8. r16 g g g |
  b8 a a g16 g ~ g4 r8 r16 f |
  f8 e d c16 c ~ c4 r16 a' a a |
  a8 g g f16 f ~ f4 r8 f16 f |
  e8 f e f16 e ~ e16 d8. r16 a' a a |
  b8 a a g16 g ~ g4 r8 r16 f |
  f8 e d c16 c ~ c4 r8 r16 \breathemoj c'16 |
  c8 b a g16 g ~ g f8. r8 r16 a |
  a8 b g f16 g ~ g4 r8 r16 c |
  c8 b a g16 g ~ g f8. r8 r16 a |
  a8 b g f16 g ~ g4 r |
  \break
  \mark \default
  c2 c4 ( ~ c8 b ) |
  b2. r4 |
  r8 c8 c8 c16 c\( c8\) b16 a ~ a8 b |
  a4 g8 g ~ g4 r4 |
  c2 c4 ( ~ c8 b ) |
  b2. r4 |
  r4 r8 c8 c b16 a ~ a8 b |
  a4 g8 g ~ g4 r8 
  \breathemoj
  f |
  f8 f f a g4 \( f8 \) f ~ |
  f2 r2 |
  %prelaz
  r1 | r1 |
  \bar "|."
}

tekst = \lyricmode {
 Je -- si li i -- kad že -- li -- o _ pu -- to -- va -- ti kroz vrije -- me?
 U -- ži -- vo vi -- dje -- ti baš sve ne u -- vijek kroz T -- V.
 O -- tić u do -- ba vi -- te -- za _ i pre -- kra -- snih prin -- ce -- za.
 Po -- sje -- tit dvo -- re kra -- ljev -- ske i sjest na prije -- sto -- lje.
 %
 Da ba -- rem i -- ma na -- čin i -- spu -- nit že -- lju tu.
 Pu -- to -- va -- ti kroz vrije -- me i vi -- djet i -- sti -- nu.
 %
 Vre -- me -- plov, _ _ u _ šta -- li -- cu za -- vi -- ri -- ti.
 Vre -- me -- plov, i du -- bo -- ko do -- ži -- vje -- ti
 ro -- đe -- nje si -- na Bo -- žje -- ga.
}

tekstDva = \lyricmode {
 Po -- sto -- ji knji -- ga ču -- de -- sna ko -- ja vo -- di te kroz vrije -- me.
 Jer o -- na taj -- ne ot -- kri -- va i sr -- ce o -- tva -- ra.
 Sa njom se mo -- žeš vra -- ti -- ti gdje je po -- če -- lo spa -- se -- nje.
 I tad u -- po -- zna -- ti kroz nju tog kra -- lja kra -- lje -- va.
 %
 Sad znam da i -- ma na -- čin i -- spu -- nit že -- lju tu.
 Pu -- to -- va -- ti kroz vrije -- me i vi -- djet i -- sti -- nu.
 %
 Vre -- me -- plov, ka -- o i Ši --  _ mun že -- lim re -- či gle:
 Vre -- me -- plov, "\"Sad" o -- či mo -- je vi -- dje -- še
 o -- Bo -- že tvo -- ga Me -- si -- "ju!\"" % { "Luka 2:30" }
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
   b2/g c |
   a2:m d:m
   b2/g c |
   %
   f1 |
   g1:m/f |
   f1 |
   c/e |
   f1 |
   g1:m/f |
   f1 |
   c |
   b2/d c/e
   f1
   %prelaz
   b2/g f/a | b c | 

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


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}
