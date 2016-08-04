\version "2.18.2"



\layout {
  indent = 0
}

\include "deutsch.ly"

note = \relative c' {
  \set Score.markFormatter = #format-mark-box-alphabet
  \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \default
  r4 r8 h8 ~ h g4 e8 |
  g4. e8 f d ~ d4 |
  r4 r8 c8 ~ \times 2/3 { c8 e g } a8 g |
  b4 ~ \times 2/3 { b8 g a } g8 e r4 |
  r4 r8 cis' e4 ~ \times 2/3 { e8 d e } |
  d8 c ~ \times 2/3 { c a b } h8 a g ges |
  f8 a e d g f ~ f4 |
  \times 2/3 { r8 d f } \times 2/3 { a8 c a } h4. a8 |
  b8 g a g ~ g c,4. |
  r4 r8 g'8 a g4 a8 |
  b8 g a4 g8 c,4. ~ |
  c4. g'8 a g r4 |
  r4 r8 fis8 d4 \times 2/3 { h8 c d } |
  h4 r8 fis a fis g a |
  b8 c d e f a b h ~ |
  \times 2/3 { h8 c8 ~ c } a8 b h a r4 |
  r4 r8 e h' a ~ \times 2/3 { a8 e c } |
  h4 ~ h8 a h a r4 |
  r8 a \times 2/3 { c8 e g } h b a h |
  c8 cis ~ \times 2/3 { cis8 d8 ~ d } r8 d,4 d'8 |
  g,8 g r4 g a8 b |
  g4. g8 r4 r8 e |
  g8 g4 g8 ~ g4 a8 b |
  g4. e8 ~ e d \times 2/3 { g8 a b } | \bar "||" \break
  \mark \default
  h8 g r4 r4 r8 a |
  b8 g ~ g4 r2 |
  r8 g e'4 c8 b g f |
  e8 c4 b8 cis e4 cis8 |
  d8 h ~ h4 r2 |
  r4 r8 d g a h c |
  cis4 e d8 e d e |
  f8 g, cis e d h ~ \times 2/3 { h8 g d } |
  e8 g r4 r8 g d' c ~ |
  c4 ~ \times 2/3 { c8 g e } d8 c r4 |
  r8 g c d e fis g a |
  b2 fis8 a g e |
  fis8 d ~ \times 2/3 { d8 h c } d8 h4 fis8 |
  a4. fis8 g a h c |
  d8 e fis g ~ \times 2/3 { g a ~ a } fis d |
  gis4 f8 d f a ~ \times 2/3 { a8 f ~ f } |
  g8 e ~ e4 h'8 a ~ \times 2/3 { a8 e c } |
  h8 c ~ c4 a8 h r4 |
  \times 2/3 { r8 d' des } c8 b a e c a |
  d8 a d e f g a f |
  g8 d e c d h4 d8 |
  c4 e8 c cis4 e8 cis |
  d8 h ~ h4 h'8 b a d |
  cis8 g h4 a8 f e d | \bar "|."
  \pageBreak
 
 
}

akordi = \chordmode {
  \semiGermanChords
  \set chordChanges = ##t
  g1:7 q c:7 cis:dim \break
  g:7 q q q
  c:7 q q q
  g:7 q q e:7
  a:m7 q d:7 q
  g:7 q q q
  g1:7 q c:7 cis:dim
  g:7 q q q
  c:7 q q q
  g:7 q q e:7
  a:m7 q d:7 q
  g:7 q q q

}

\book {
  \header {
    title = "Early Morning Mood"
    subtitle = "Double bass transcription"
    composer = "Chet Baker"
    opus = "Paul Chambers"
    poet = "1959"

  }
  \bookpart {
    \header {
      piece = "Bass"
    }
    \score {
      <<
        \new ChordNames { \akordi }
        \new Staff { \clef bass \note }
      >>
    }
  }
  \bookpart {
    \header {
      piece = "C"
    }
    \score {
      <<
        \new ChordNames { \akordi }
        \new Staff { \transpose c c'' \note }
      >>
    }
  }
  \bookpart {
    \header {
      piece = "Bb"
    }
    \score {
      <<
        \new ChordNames { \transpose b c \akordi }
        \new Staff { \transpose b c''' \note }
      >>
    }
  }
  \bookpart {
    \header {
      piece = "Eb"
    }
    \score {
      <<
        \new ChordNames { \transpose es c \akordi }
        \new Staff { \transpose es c'' \note }
      >>
    }
  }
}