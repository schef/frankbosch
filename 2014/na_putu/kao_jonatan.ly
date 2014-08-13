\version "2.18.0"
\include "deutsch.ly"

\header {
  composer = "Frank Bosch"
  title = "KAO JONATAN"
  titlex = "Na putu"
  broj = "9."
  style = "Dražen Radman"
}

\include "s02_frbo.ily"

note = \relative c' {
  \once \override Score.MetronomeMark.X-offset = #8
  \tempo 4 = 116
  \key f \major
  %    \set Score.markFormatter = #format-mark-box-letters
  
  %dio A
  \mark \default
  %    \repeat volta 2 {
  \partial4
  c8 d |
  \once \override Score.RehearsalMark.color = #black
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \once \override Score.BarNumber.break-visibility = #all-invisible
  \once \override Score.RehearsalMark.padding = #4
  \once \override Score.RehearsalMark.X-offset = #-12
  \rhythmMark #"Swing" \rhyMarkIIEighths \rhyMarkSlurredTriplets
  f8 f f d as' f ~ f4 |
  r2 r4 c8 d |
  f8 f f d as' f ~ f4 |
  r2 r4 f8 g ~ |
  g4 r4 r2 |
  f4 r4 r4 f8 f ~ |
  f4 r4 r2 |
  r2 r4 c8 d |
  \times 2/3 {f8\( f\) f} f8 d as' f ~ f4 |
  r2 r4 c8 d |
  f8 f f d as' f ~ f4 |
  r2 r4 f8 g ~ |
  g4 r4 r4 g8 f\( |
  f4\) r4 r4 f8 f ~ |
  f4 r4 r2 |
  r4 \breathemoj c8 d f g a a |
  c4 a a g8 a |
  g8 f4 f8 ~ f f f c |
  d8( c ~ c4) r4 r8 c8 |
  f8 f f g ~ g g ~ g4 |
  r8 a8 a8 b ~ b f f g |
  a8 a a b c8 a4 g8 ~ |
  g4 c,8 d f g a a |
  c4 a a g8 a |
  g8 f4 f8 ~ f f f c |
  d8( c ~ c4) r4 r8 c8 |
  f8 f f g ~ g4 g |
  a4 a8 b ~ b4 b8 c |
  c8 a a a a g4 f8 ~ |
  f2 r4 r8 \breathemoj c8 |
  f8 f f g ~ g4 g |
  a4 a8 b ~ b8 a8 b c |
  c8 a ~ a4 r8 a8 b c |
  c8 a ~ a4 r2 |
  as4 as g f8 f ~ |
  f2 ~ f4
  \bar "|."
}

akordi = \chordmode {
  \set chordChanges = ##t
  \skip 4
  f1 | f | f | f |
  c1 | b | f | f |
  f1 | f | f | f |
  c1 | b | f |
  f1 | f | b | f |
  f1 | b | f | c |
  f1 | b | f | f |
  b1 | f1 | f | f |
  b1 | f | f | c | f2 f4
}

kiticaA = \lyricmode {
  \set stanza = #"1. "
  %\skip4 \skip4
  Ne -- tko sla -- van že -- li po -- stat'
  zna -- ni glu -- mac i -- li pje -- vač,   aha! __ _  Wow!   Oh yeah!
  _ _ U -- či -- telj vr -- lo po -- znat,
  su -- dac bi -- ti, tre -- ner, i -- grač,  aha! __ _ "" "" Wow! Oh yeah! __
}

ref = \lyricmode {
  A -- li bi -- ti ka -- o Jo -- na -- tan,
  to je pra -- va, to __ je zla -- tna stvar. __
  Ne -- se -- bi -- čan, hra -- bar, jak i o -- dan,
  i za me -- ne to je Bo -- žji plan. __
  A -- li bi -- ti ka -- o Jo -- na -- tan,
  to je pra -- va, to __ je zla -- tna stvar. __
  Po -- bje -- dit' me ne -- će zlo ni strah,
  jer na Bo -- žji sta -- vljen ja sam dlan. __
  Po -- bje -- dit me ne -- će zlo ni strah,
  jer Bog i no -- ću, __ jer Bog i no -- ću, __
  svo -- ju ču -- va kap. __
}

kiticaB = \lyricmode {
  \set stanza = #"2. "
  Ne -- tko bo -- gat že -- li po -- stat'
  i -- mat' brod, ba -- zen  i vi -- lu, __    aha! __ _  Wow!  Oh yeah!
  Mi -- sli ta -- _ da bit' će sre -- tan __
  al' u to -- me ni -- je sre -- ća, __   ne ne, __ ne ne, __ _ ne ne! __
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \kiticaA \ref }
    \addlyrics { \kiticaB }
    %     \addlyrics { \kiticaC }
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


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}
