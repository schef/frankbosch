\version "2.18.0"

%\language "deutsch"

\header {
  title = "BOG ĆE OBRISATI SVAKU SUZU"
  titlex = "Na putu"
  composer = "Frank Bosch"
  style = "Otkrivenje 20,4+5b+6"
  broj = "13"
}

\include "s02_frbo.ily"

\paper {
 \aFourR
}

%salsa ritam?

note = \relative c'' {
  \key f \major
  \once \override Score.MetronomeMark.Y-offset = #3.2
  \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
  \tempo 4 = 115
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-0.6
  \once \override Score.RehearsalMark.Y-offset = #4
  \mark \default
  b8. b16 ~ b8 b16 c ~ c8 b a g |
  a8. a16 ~ a4 r2 |
  g8. a16 ~ a8 g8 b4 a8 a8 ~ |
  a2 r2 |
  b8. b16( ~ b8 c) c8 b16 a ~ a8 g |
  a8. a16 ~ a4 r2 |
  g8 g16 g ~ g g8 a16 ~ a8 g4 f8 |
  e8. d16 ~ d4 r4 r8 f8 |
  \once \override Score.RehearsalMark.Y-offset = #0.3
  \mark \default
  
  \repeat volta 2 {
    e8. f16 ~ f8 g g8. f16 ~ f8 a |
    g8. a16 ~ a8 b a4. f8 |
    e8. f16 ~ f8 g g8. f16 ~ f8 a |
  }
  \alternative{
    {
      a8. f16 ~ f8 e d4. f8 |
    }
    {
      a8. f16 ~ f8 e d4 r4 |
    }
  }
  \once \override Score.RehearsalMark #'outside-staff-priority = #1 
  \once \override Score.RehearsalMark.Y-offset = #0.2
  \once \override Score.RehearsalMark.X-offset = #-1.5
  \mark \default
  
  g8 g g g g g f f ~ |
  f8 e ~ e4 r2 |
  a8 a a a a4 g8 g ~ |
  g8 f ~ f4 r4 d8 f |
  g4 g8 g8 g4 f8 e ~ |
  e2 r8 c8 c c |
  g'8. a16 ~ a4 r8 b ~ b8 a16 g ~ |
  g8 f ~ f4 r2 |
  \bar "|." 
}

tekst = \lyricmode {
  %\set stanza = "1."
  Bog će o -- bri -- sat´ sva -- ku su -- zu __
  "s o" -- či -- ju lju -- blje -- nih. __
  Smr -- ti __ vi -- še ne -- će bi -- ti; __
  ne -- će vi -- še bi -- ti ni tu -- ge, __
  ni jau -- ka, ni bo -- li, __ naj naj naj naj naj
  jer sta -- ri __ svijet pro -- đe __ naj naj naj naj naj ni
  naj naj naj naj
  I -- sus ta -- da svi -- ma će re -- ći: __
  „E -- vo sve sad či -- nim no -- vo, __
  Ja sam Al -- fa i O -- me -- ga. __
  Ja sam po -- če -- tak __ i svr -- še -- tak.“ __
}

tekstDva = \lyricmode {
  %\repeat unfold 45 {\skip 8}

}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  g2:m7 c:7 | f:maj7 b:maj7 | e:m7.5- a:7 | d1:m |
  g2:m7 c:7 | f:maj7 b:maj7 | e:m7.5- a:7 | d1:m |
  
  a2:7 d:m |
  c2 f | a:7 d:m | c d:m | c d:m |
  g1:m | c | f | b:maj7 |
  g1:m | c | c | f |
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
  \midi { \tempo 4 = 115 } %salsa
}

\markup {
  \vspace #2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [4]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 3 \italic \teeny {bridge} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } \bold \italic \tiny x2}
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic :1-4 } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {outro [2]} }
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
