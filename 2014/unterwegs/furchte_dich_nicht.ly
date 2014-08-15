\version "2.18.0"
\include "deutsch.ly"

%\language "deutsch"

\header {
  title = "FÜRCHTE DICH NICHT"
  titlex = "Unterwegs"
  composer = "Frank Bosch"
  style = "Jesaja 41,10"
  broj = "7"
}

\include "s02_frbo.ily"

\paper {
 \aFourR
}

note = \relative c' {
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \once \override Score.MetronomeMark.padding = #3
  \tempo 4 = 111
  \key d \major
  \time 3/4  
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.7
  \once \override Score.RehearsalMark.padding = #1.4
  \mark \default
  d4 d d8 e |
  d2 d8 e |
  fis4 e4. d8 |
  d2. |
  e4 e e8 fis  |
  e2 d8 e |
  fis4 e4. d8 |
  e2. |
  d4 d d8 e |
  d2 d8 e |
  fis4 e4 d4 |
  d2 e8 fis |
  g4 g g |
  fis4 g fis |
  e2. |
  r2. |
  
  \once \override Score.RehearsalMark.self-alignment-X = #0.6
  \once \override Score.RehearsalMark.padding = #0
  \mark \default a4 g fis |
  e2. |
  d4 e fis |
  fis8( e ~ e2) |
  a4( g) fis |
  e2 r8 d8 |
  h'4 a g |
  a2 r8 cis8 |
  d4( cis) h |
  a2. |
  r2. |
  r2 r8 cis8 |
  d4 cis h |
  a2. |
  r2. |
  r2 r8 a8 |
  a4( g) fis |
  e2 d8 d |
  h'4( a) g |
  fis2. |
  fis4 g fis |
  e2 d4 |
  d2. |
  r2. |
  \bar "|."
}

tekst = \lyricmode {
%\set stanza = "1."
Manch -- mal fehlt der Mut, wirk -- lich vor -- wärts zu gehen.
Vor dir ist dann nur ei -- ne Mau -- er zu sehen.
Hil -- fe fin -- dest du bei dem e -- wi -- gen Gott.
Sei -- ne Wor -- te sind Trost in der Not:

„Fürch -- te dich nicht, Ich bin mit dir; __ 
wei -- che nicht, denn ich bin dein Gott. 
Ich stär -- ke dich, Ich hel -- fe dir auch, 
Ich hal -- te dich durch die rech -- te Hand 
mei -- ner Ge -- rech -- tig -- keit.“



%„Fürchte dich nicht, ich bin mit dir; 
%weiche nicht, denn ich bin dein Gott. 
%Ich stärke dich, ich helfe dir auch, 
%ich halte dich durch die rechte Hand meiner Gerechtigkeit.“ 2x Jes. 41,10
}

tekstDva = \lyricmode {
%\repeat unfold 45 {\skip 8}
Manch -- mal fragst du dich, was hat Gott mit mir vor?
Zwei -- felnd fühlst du dich, wie auf We -- gen durchs Moor.
Ängst -- lich rufst du aus: Herr ich seh´ den Weg nicht.
Doch ver -- giss nicht was Gott dir ver -- spricht:

}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  d2. | d:maj7 | g | d | e:m | e:m |
  g2. | a | d | d:maj7 | g | d |
  e2.:m | g/d | a:sus4 | a | d | a/d | g |
  a2. | d | a | g | a | g | 
  fis2.:m | g | a | g | fis:m | g | a |
  d2. | a | g | d | g | a | d | d |
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
  \midi { \tempo 4 = 111 }
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
