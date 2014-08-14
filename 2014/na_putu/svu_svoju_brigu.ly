\version "2.14.2"
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
jer se on bri -- ne za vas. __
Svu svo -- ju bri -- gu __ ba -- ci -- te na Nje -- ga,
jer se on bri -- ne za vas. __
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
			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic pripjev } }
			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny kitica }
			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic pripjev } }
			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny kitica }
			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic pripjev } }
			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) 3 \teeny \italic most }
			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \italic \teeny pripjev \bold \tiny ×2 } }
		}
	}
}
