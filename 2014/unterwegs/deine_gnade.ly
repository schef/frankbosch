\version "2.18.0"
\include "deutsch.ly"

\header {
    composer = "Frank Bosch"
    style = "Psalm 108,4-6"
    title = "DEINE GNADE"
    titlex = "Unterwegs"
}

\include "s02_frbo.ily"

note = \relative c' {
    \tempo 4 = 120
    \key a \minor
%    \set Score.markFormatter = #format-mark-box-letters
    
    %dio A
    \mark \default
%    \repeat volta 2 {
%    \partial8
r8 e8 e c d4 f8\( e ~ |
e2\) r2 |
r8 e8 e8 f8 g4\( f8\) f\( ~ |
f8 e ~ e4\) r2 |
r8 e8 e c d4 f8 e ~ |
e2 r2 |
r8 e8\( e8\) c8 d4\( c8\) a ~ |
a2 r8 \breathemoj a'8 a8 h8 |
%\bar ".|:"
\repeat volta 2 {
c4 e, r8 c'4 c8 |
c8\( h a\) h ~ h h ~ h a |
h4 e, r8 d'4 c8 |
h8\(( a) a4\) r8 a8 a8 g8 |
g8( f8) f2 r8 f8 |
g4 a4 g4 f8 f( |
e1) |
}
\alternative {
{r2 r8 a8 a8 h8}
{r1 \bar "|."}
}
}

akordi = \chordmode {
   \set chordChanges = ##t
a2:m d:m | a:m e:7 | a:m g | c  e:7 |
a2:m d:m | a:m e:7 | a:m e:7 | a1:m |
a1:m | g | e:7 | a:m |
f1 | g | c | e:7 | e:7 |
}

kiticaA = \lyricmode {
\set stanza = #"1. "
%\skip4 \skip4
Ich will dir dan -- ken, Herr, __ un -- ter den Völ -- _ kern, __ _
Ich will dir lob -- sin -- gen __  un -- ter den Leu -- _ ten. __
}

ref = \lyricmode {
Denn dei -- ne Gna -- de, Dei -- ne Gna -- _ _ de
reicht so weit der Hi -- mmel ist. __ _
Und dei -- ne Treu -- e, so weit die Wol -- ken gehn'. __
Denn dei -- ne
}

kiticaB = \lyricmode {
\set stanza = #"2. "
Er -- he -- be Dich, Gott, __ _ ü -- ber den Hi -- _ mmel __ _
und dei -- ne Herr -- lich -- keit __ ü -- _ ber a -- lle Welt. __
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
