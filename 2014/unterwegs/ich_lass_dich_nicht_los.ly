\version "2.18.0"
\include "deutsch.ly"

%\language "deutsch"

\header {
  title = "ICH LASS DICH NICHT LOS"
  titlex = "Unterwegs"
  composer = "Frank Bosch"
  style = "1. Mose 32,27"
  broj = "2"
}

\include "s02_frbo.ily"

\paper {
 \aFourR
}

note = \relative c'' {
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \once \override Score.MetronomeMark.padding = #3
  \tempo 4 = 94
  \key c \major
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.7
  \once \override Score.RehearsalMark.padding = #1.4
  \mark \default
  g2( a) |
  g8 f e d ~ d4. d8 |
  e4 c8 a ~ a f'4 e8( |
  e2) r2 |
  g2( a) |
  g8 f e d( d4.)
  % \breathemoj
  
  d8 |
  e4 c8 a ~ a8 d4 c8( |
  \break
  c2) r4 r8 
  \breathemoj  
  c |
  c4 c8 c ~ c d4 c8 ~ |
  c8 h ~ h h ~ h4. h8 |
  c4 c8 d ~ d c d e |
  e2 r8 c8 d e |
  f4 g8 e ~ e e4 d8 ~ |
  d2 r8 c8 c h |
  r8 c4 e8 d4 c8 c ~ |
  c2 r2 |
  \bar "|."

}

tekst = \lyricmode {
%\set stanza = "1."
Ich __ lass Dich nicht los, __ bis Du mich se -- gnest Herr. __
Ich __ lass Dich nicht los, __ bis Du mich se -- gnest Herr. __ 
Du Va -- ter in dem Him -- mel sprich
Dein Wort des Se -- gens ü -- ber mich,
auf dass ich froh den neu -- en Tag __
be -- gi -- nnen, und be -- en -- den mag. __
}

tekstDva = \lyricmode {
%\repeat unfold 45 {\skip 8}

}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  c2 f | c g | a:m f | c g |
  c2 f | c g | a:m f | c1 |
  a1:m | g | f2 g |
  c1 | f2 c | g1 |
  f2 g | c1 |
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
  \midi { \tempo 4 = 94 }
}

\markup {
  \vspace #2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [12]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } \teeny \bold \italic x3}
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic :7-8 } \teeny \bold \italic x2}			
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {outro [9]} }
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
