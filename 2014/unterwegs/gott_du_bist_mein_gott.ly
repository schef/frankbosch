\version "2.18.0"
\include "deutsch.ly"

%\language "deutsch"

\header {
  title = "GOTT DU BIST MEIN GOTT"
  titlex = "Unterwegs"
  composer = "Frank Bosch"
  style = "Psalm 63,1-5"
  broj = "3"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
}

note = \relative c' {
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \once \override Score.MetronomeMark.padding = #3
  \tempo 4 = 99
  \key f \major
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.7
  \once \override Score.RehearsalMark.padding = #1.4
  \mark \default
  d8 a' g f e4 r4 |
  e8( f) g g ~ g f4 f8 |
  d'8 d d c c g g b( ~ |
  b8 a ~ a4) r4 r8 f8 |
  d'8 d d c c4 g8 a ~ |
  a8 b a g g f f4 |
  r8 f4 f8 g4 e8 e( |
  d2) r4 r8 \breathemoj a8 |
  
  \key d \major
  fis'8 fis fis fis ~ fis4 a8 a ~ |
  a4 g8 g ~ g d d e |
  e1 |
  r1 |
  fis8 fis fis fis fis a4 a8 ~ |
  a4 g8 g ~ g d d e |
  e1 | \break
  r2 r4 r8 \breathemoj a8 |
  
  \key f \major
  a8 a4 a8 ~ a b c c ~ |
  c8 b4 b8 b a a g |
  g8 g r8 c8 ~ c b4 b8( |
  a2) r4 r8 e8 |
  f8 f f f ~ f g a a ~ |
  a4 g8 g ~ g d d e |
  f8 f ~ f4 r4 f4 |
  f4 f8 f ~ f a d d ~ |
  d8 c ~ c2. |
  r1 |
  \bar "||"
  \once \override Score.RehearsalMark.X-offset = #'-1
  \once \override Score.RehearsalMark.Y-offset = #'0.4
  \mark \default
  d,8 a' g f e4 r4 |
  e8( f) g g ~ g f ~ f4 |
  d8 a' g f e4 r4 |
  e8( f) g g ~ g f ~ f4 |
  d8 a' g f e4 r4 |
  e8( f) g g ~ g f ~ f4 |
  \bar "|."
  
 
}

tekst = \lyricmode {
Gott, du bist mein Gott, den ich su -- che. 
Es dür -- stet mei -- ne See  -- le nach dir, __ mein gan -- zer 
Mensch ver -- langt nach dir __ aus trocke -- nem, 
dü -- rrem Land, 
wo kein Wa -- sser ist. __

So scha -- ue ich aus nach dir __ in dei -- nem Hei -- lig -- tum, 
woll -- te ger -- ne se -- hen dei -- ne Macht und Herr -- lich -- keit.
Denn dei -- ne Gü -- te ist be -- sser als Le -- ben; 
mei -- ne Li -- ppen prei -- sen dich. __
So will ich dich lo -- ben mein Le -- ben lang 
und mei -- ne Hän -- de __ 
in dei -- nem Na -- men auf -- he -- ben.

Gott, du bist mein Gott, den ich su -- che. 
Gott, du bist mein Gott, den ich su -- che. 
Gott, du bist mein Gott, den ich su -- che. 

}

%tekstDva = \lyricmode {
%
%}

akordi = \chordmode {
  d2:m a |
  a2:7/cis d:m |
  b2 c |
  f1 |
  b2 c |
  f1 |
  b2 a:7/cis |
  d1:m |
  d1/fis | g | a | a |
  d1 | g | a | a |
  f1 | b | c | f2 c/e |
  d1:m | b | g:m | f |
  c2/e d:m | c1 |
  d2:m a | a:7/cis d:m |
  d2:m c | a:7/cis d:m |
  d2:m c | a1:7/cis |
}

\score {
  <<
  \new ChordNames { \jazzChords \akordi }
  \new Staff { \note }
  \addlyrics { \tekst }
 % \addlyrics { \tekstDva }
  >>
  \layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 99 }
}

\markup {
  \vspace #2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [2]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 2 \teeny \italic bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 2 \teeny \italic bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic chorus } \teeny \bold \italic x2}
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 4 \teeny \italic ending  } }			
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {outro [5]} }
    }
  }
}

%\markup {
%\vspace #2
%\smaller \italic Leadsheet: \hspace #2
%		\huge {
%		\rounded-box {
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold { \teeny \italic {intro} Dm x3 } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \italic \teeny strophe }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) { \teeny \italic bridge } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold{\italic \teeny refrain }}
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \italic \teeny kitica }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) { \teeny \italic bridge } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold{ \italic \teeny refren} }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold { \teeny \italic refren } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \teeny \italic outro }
%		}
%	}
%}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}
