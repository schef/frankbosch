\version "2.18.0"
\include "deutsch.ly"

\header {
    composer = "Frank Bosch"
    title = "ALL EURE SORGE"
    titlex = "Unterwegs"
    style = "1. Petrus 5,7; Matth. 6,8+26"
}

\include "s02_frbo.ily"

note = \relative c'' {
    \tempo 2 = 104
    \key f \major
    \time 2/2
%    \set Score.markFormatter = #format-mark-box-letters
    
    %dio A
    \mark \default
%    \repeat volta 2 {
%    \partial8
c4. b8 ~ b4 a4 |
g4. a8 ~ a4( b4) |
c4 c b a |
g4\(( f) f2\) |
r4 a4 ~ a8 b4. |
c4.( b8 ~ b4) a8 a ~ |
a2 r2 |
r1 |
c4. b8 ~ b4 a4 |
g4. a8( ~ a4  b4) |
c4.( b8 ~ b4) a4 |
g4\(( f) f2\) |
r4 a4 ~ a8 b4. |
a4.( g8 ~ g4) f8 f ~ |
f2 r2 |
r1 |
\bar "||"
\break

\mark \default
r4 f4 f4 f4 |
e4 e4 r4 f ~ |
f4 f f8 d4 c8 ~ |
c2 r2 |
r4 r8 f8 f8 f4 g8 ~ |
g4. f8 e4 f8 e( ~ |
e4 d2.) |
r1 |
r4 f4 f4 f |
e4 e f g |
a2 f |
d2 g4 a4 |
b4 b c b |
a4 g f a ~ |
a4 g2. |
r2 r4 d4 |
\bar "||"
%\break

\mark \default
b'2 b |
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
a( g2) f8 f~  |
f1 |
r1 |
\bar "|."
}

akordi = \chordmode {
   \set chordChanges = ##t
f1 | c | d:m | b | f | c |
d:m | b2 c2 |
f1 | c | d:m | b | f | c |
f1 | f |

d1:m | c | b | f | d:m | c | b | b |
d:m | c | f | b | g:m | f |
c1 | c | g1*2:m | c | f | d:m | g:m | c |
b1 | c | f1*2 |
}

kiticaA = \lyricmode {
%\set stanza = #"1. "
%\skip4 \skip4
Seht euch die Vö -- gel auf den Fel -- dern an! __
Sie sä -- hen nicht, sie ern -- ten nicht,
Sie hal -- ten sich auch kei -- ne Vor -- rä -- te,
Es ver -- sorgt sie eu -- er Va -- ter im Him -- mel.
}

ref = \lyricmode {
All eu -- re Sor -- ge __ werft doch auf den Herrn, __ _ denn Er sorgt für euch.
All eu -- re Sor -- ge __ werft  auf Ihn; __ _ denn Er sorgt für euch.
}

kiticaB = \lyricmode {
%\set stanza = #"2. "
So sor -- get euch doch nicht
Denn be -- vor ihr bi -- ttet weiß der Va -- ter schon
Was euch be -- drückt 
Und a -- lles was ihr braucht.

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
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0
%}
