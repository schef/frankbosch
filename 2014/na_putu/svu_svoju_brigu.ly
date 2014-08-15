\version "2.18.0"
\include "deutsch.ly"

\header {
    composer = "Frank Bosch"
    title = "SVU SVOJU BRIGU"
    titlex = "Na putu"
    style = "1. Petrova 5,7; Matej 6,26+6,8"
    broj = "7"
}

\include "s02_frbo.ily"

\paper {
 \aFourR
}

note = \relative c'' {
    \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
   \once \override Score.MetronomeMark.Y-offset = #3
    \tempo 4 = 208
    \key f \major
%    \set Score.markFormatter = #format-mark-box-letters
    
    %dio A
    \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.6
  \once \override Score.RehearsalMark.Y-offset = #3.8
    \mark \default
%    \repeat volta 2 {
%    \partial8
c2 b4 a4 |
g2 a4( b4) |
c4 c b a |
g4( f) f2 |
r4 a g a |
c2 b4 a8 a ~ |
a2 r2 |
r1 |
c2 b4 a4 |
g2 a4( b4) |
c4 c b a |
g4( f) f2 |
r4 a4 a b |
a2 g4 f8 f ~ |
f2 r2 |
r1 |
\bar "||"
\break

\once \override Score.RehearsalMark.Y-offset = #3.4
\mark \default
r4 f4 f8 f4 e8 ~ |
e2 r2 |
f4 f f8 d4 c8 ~ |
c2 r2 |
r2 f4 f8 g ~ |
g4 f e f |
e4 d2. |
r1 |
r2 f4 f |
e4 e f g |
a2 f |
d2 r4 a'4 |
a4 b c b |
a4 g f a ~ |
a4 g2. |
r2 r4 d4 |
\bar "||"
%\break

  \once \override Score.RehearsalMark.Y-offset = #0.4
\mark \default
b'1 |
b2 a |
g1 |
r2 a4 b |
c4 c c c |
c4 c b a |
f1 |
r1 |
r2 b2 |
b2 a |
g1 |
r1 |
r4 f4 g a |
a2 g4( f) |
f1 |
r1 |
\bar "|."
}

akordi = \chordmode {
   \set chordChanges = ##t
f1 | c | d:m | b | d:m | c |
f | b2 c2 |
f1 | c | d:m | b | d:m | c |
f1 | f |

d1:m | c | b | f | d:m | c | b | b |
d:m | c | f | b | g:m | f |
c1 | c | g1*2:m | c | f | d:m | g:m | c |
b1 | c | f1*2 |
}

kiticaA = \lyricmode {
%\set stanza = #"1. "
%\skip4 \skip4
Po -- gle -- daj -- te __ pti -- ce ne -- be -- ske! __
Ni -- ti si -- ju, ni -- ti ža -- nju,
ni -- ti sa -- bi -- ru u žit -- ni -- ce, 
i vaš ih O -- tac Ne -- be -- ski hra -- ni.
}

ref = \lyricmode {
Svu svo -- ju bri -- gu __ ba -- ci -- te na Bo -- ga,
jer se On bri -- ne za vas. __
Svu svo -- ju bri -- gu __ ba -- ci -- te na Nje -- ga,
jer se On bri -- ne za vas. __
}

kiticaB = \lyricmode {
%\set stanza = #"2. "
Ne bri -- ni -- te se
jer i pri -- je ne -- go ga za -- mo -- li -- te
zna O -- tac vaš,
što vam je po -- tre -- bno. 
}

%kiticaC = \lyricmode {
%\set stanza = #"3. "
%\skip4 \skip4
%}

\score {
	<<
	\new ChordNames { \semiGermanChords \jazzChords \akordi }
	\new Staff { \note }
        \addlyrics { \ref \kiticaA \kiticaB}
%        \addlyrics { \kiticaB }
%        \addlyrics { \kiticaC }
	>>
%	\midi {}
	}

\markup {
  \vspace #2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {intro [8]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny verse }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny verse }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 3 \teeny \italic bridge }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \italic \teeny chorus \bold \tiny \italic ×2 } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \italic \teeny :13-16} }
      %\line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {outro [2]} }

    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \italic \teeny :13-14} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {outro [2]} }
    }
  }
}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97, 2.18.0
%}
