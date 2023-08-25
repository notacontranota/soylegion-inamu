%Generado automáticamente por 'soylegion.py'
%para el juego "Minué", de Germán Mercado.
\version "2.20.0"
\pointAndClickOff

global = {
  \key c \major
  \time 3/4
  \tempo "Tempo di minuetto"
  \repeat volta 2 {
    s2.*8
  }
  \repeat volta 2 {
    s2.*8
  }
}

violin = {
  e'4. ( -\p  d'8 )  e'8. (  f'16 )
  g'8.  g'16  g'4 r4
  c''4 (  b'16  c''16  b'16 c''16 )  d''8 (  c''8 )
  c''8 (  g'16  a'16  b'16 c''16  d''16  e''16 ) \acciaccatura { f''8 g''8 }  f''4
  f'4 ( \acciaccatura {  a'8  b'8 }  a'4 ) \acciaccatura {  a'8  b'8 }  a'4
  g'8. ( -\markup{ \small\italic {cresc.} }  a'16  b'8  c''8 )  d''8 (  e''8 )
  \acciaccatura {  f''8 (  g''8 }  f''8. -\< e''16  d''8  c''8 )  b'8.\trill ( a'32  b'32 ) -\!
  c''4 -\f  c'4 -\p r4
  a'4 -\p  a'16 (  b'16  a'16  b'16 \acciaccatura {  c''8  d''8 }  c''4 )
  g'4. (  b8 )  d'8 (  g'8 )
  f'4 (  a'4 ) \acciaccatura { a'8  b'8 }  a'4
  g'4 \acciaccatura {  a'8  g'8  f'8 } g'4 r4
  f'4 (  a'8  d''8 ) \acciaccatura { f''8  g''8 }  f''4
  g'8. ( -\markup{ \small\italic {cresc.} }  a'16 g'4 ) \acciaccatura { d''8  e''8  f''8 }  g''4
  f''8 ( -\<  b'16  c''16 \acciaccatura { d''8  e''8 }  d''8.  c''16 ) b'8.\trill (  a'32  b'32 ) -\!
  c''4 -\f  c'4 -\p r4
}
viola = {
  g4. ( -\p  b8 )  c'8. (  d'16 )
  d'8.  c'16 \acciaccatura { b8  c'8 }  b4 r4
  f'4 (  g'16  a'16  g'16 a'16 )  f'8 (  e'8 )
  d'2.
  a4 (  c'4 )  c'8 (  d'8 )
  c'4 -\markup{ \small\italic {cresc.} }  c'2
  b8. -\<  b16  b8.  b16  d'4 -\!
  e'4 -\f  e4 -\p r4
  c'4 -\p  c'16 (  d'16  c'16 d'16  c'4 )
  d'4  e'4 r4
  a4 (  f4 )  f4
  c'4  c'4 r4
  d'8. (  e'16  d'8  c'8 ) b8 (  a8 )
  c'4 ( -\markup{ \small\italic {cresc.} }  e'8. d'16 )  e'4
  d'4 ( -\<  b4 )  d'4 -\!
  << { \textLengthOn \parenthesize e'4_\f^\markup { \italic \magnify #0.6 "cercana a la anterior"}^\markup { \italic \magnify #0.6 "Tocar la nota más" } } \\ { \parenthesize e4 } >> c_\p r
}

violoncello = {
  c8. ( -\p  b,16 )  c4 r4
  e4  f8 -.  fis8 -.  g8 -. gis8 -.
  a4 (  a,4 )  f,4
  g2.
  f4 (  c4 )  a,4
  e4 -\markup{ \small\italic {cresc.} }  e,2
  d4 ( -\<  g4 )  g,4 -\!
  c4 -\f  c,4 -\p r4
  f2 -\p  f4
  e8. (  f16 ) \acciaccatura { g8  a8 }  g4 r4
  d4 (  a,4 )  d4
  e4  e,4 r4
  f2  f4
  e4 ( -\markup{ \small\italic {cresc.} }  c4 ) cis4
  d4 -\<  g,4 r4 -\!
  c4 -\f  c,4 -\p r4
}

\bookpart {
  \header {
    dedication = \markup { \italic "de «Soy Legión»" }
    title = "Minué"
    subtitle = "(Trío de cuerdas)"
    subsubtitle = "Dados: [6, 3, 3, 1, 2, 4, 1, 1, 3, 6, 5, 5, 4, 2, 5, 6]"
    instrument = "Partitura general"
    composer = "Germán Mercado"
    copyright = \markup {\with-url #"http://lecturayescrituramusical.blogspot.com/" {
  \center-column {
    \epsfile #0 #15 #"recursos/soyncn.eps"
    \bold {"Nota contra Nota"}
    "http://lecturayescrituramusical.blogspot.com/"
    \null
    }
                       }
  }
    tagline = ""
  }

  \markup { \vspace #1 }
  #(set-global-staff-size 20)
  \score {
    \new StaffGroup <<
      \overrideTimeSignatureSettings 3/4 1/4 1,1,1 #'() %para dividir beats.
      \new Staff \with {
        instrumentName = \markup { \caps "Violín" }
        midiInstrument = "string ensemble 1"
        midiPanPosition = #-0.5
      }{
        \clef treble
        \accidentalStyle StaffGroup.modern-voice-cautionary
        << \global \compressMMRests {\violin} >>
      }
      \new Staff \with {
        instrumentName = \markup { \caps "Viola" }
        midiInstrument = "string ensemble 1"
        midiPanPosition = #0.5
      }{ 
        \clef alto 
        << \global \viola >>
      }
      \new Staff \with{
        instrumentName = \markup { \caps "Violoncello" }
        midiInstrument = "string ensemble 1"
        midiPanPosition = #0.0
      }{ 
        \clef bass
        << \global \violoncello >>
      }
    >>
    \layout {
      indent = 3\cm
      #(layout-set-staff-size 17 )
    }
    \midi {\tempo 4=70}
  }
}
%particellas
\bookpart {
  \header {
    dedication = \markup { \italic "de «Soy Legión»" }
    title = "Minué"
    subtitle = "(Trío de cuerdas)"
    instrument = "Violín, Flauta u Oboe"
    subsubtitle = "Dados: [6, 3, 3, 1, 2, 4, 1, 1, 3, 6, 5, 5, 4, 2, 5, 6]"
    composer = "Germán Mercado"
    copyright = \markup {\with-url #"http://lecturayescrituramusical.blogspot.com/" {
  \center-column {
    \epsfile #0 #15 #"recursos/soyncn.eps"
    \bold {"Nota contra Nota"}
    "http://lecturayescrituramusical.blogspot.com/"
    \null
    }
                       }
  }
    tagline = ""
  }

  \markup { \vspace #1 }
  \score {
    \new Staff {
      \overrideTimeSignatureSettings 3/4 1/4 1,1,1 #'() %para dividir beats.
      \accidentalStyle Staff.modern-cautionary
      \clef treble
      <<\global \compressMMRests{\violin}>>
    }
    \layout {
      indent = 0\cm
    }
  }
}

\bookpart {
  \header {
    dedication = \markup { \italic "de «Soy Legión»" }
    title = "Minué"
    subtitle = "(Trío de cuerdas)"
    instrument = \markup { \concat {"Viola o Clarinete en Si" \flat} }
    subsubtitle = "Dados: [6, 3, 3, 1, 2, 4, 1, 1, 3, 6, 5, 5, 4, 2, 5, 6]"
    composer = "Germán Mercado"
    copyright = \markup {\with-url #"http://lecturayescrituramusical.blogspot.com/" {
  \center-column {
    \epsfile #0 #15 #"recursos/soyncn.eps"
    \bold {"Nota contra Nota"}
    "http://lecturayescrituramusical.blogspot.com/"
    \null
    }
                       }
  }
    tagline = ""
  }

  \markup { \vspace #1 }
  \score {
    \new Staff {
      \overrideTimeSignatureSettings 3/4 1/4 1,1,1 #'() %para dividir beats.
      \accidentalStyle Staff.modern-cautionary
      \clef alto
      <<\global \compressMMRests{\viola}>>
    }
    \layout {
      indent = 0\cm
    }
  }

  \markup { \vspace #8 }
  \score {
    \new Staff {
      \overrideTimeSignatureSettings 3/4 1/4 1,1,1 #'() %para dividir beats.
      \accidentalStyle Staff.modern-cautionary
      \clef treble
      \transpose c d <<\global \compressMMRests{\viola}>>
    }
    \layout {
      indent = 0\cm
    }
  }
}
}

\bookpart {
  \header {
    dedication = \markup { \italic "de «Soy Legión»" }
    title = "Minué"
    subtitle = "(Trío de cuerdas)"
    instrument = "Violoncello o Fagot"
    subsubtitle = "Dados: [6, 3, 3, 1, 2, 4, 1, 1, 3, 6, 5, 5, 4, 2, 5, 6]"
    composer = "Germán Mercado"
    copyright = \markup {\with-url #"http://lecturayescrituramusical.blogspot.com/" {
  \center-column {
    \epsfile #0 #15 #"recursos/soyncn.eps"
    \bold {"Nota contra Nota"}
    "http://lecturayescrituramusical.blogspot.com/"
    \null
    }
                       }
  }
    tagline = ""
  }

  \markup { \vspace #1 }
  \score {
    \new Staff {
      \overrideTimeSignatureSettings 3/4 1/4 1,1,1 #'() %para dividir beats.
      \accidentalStyle Staff.modern-cautionary
      \clef bass
      <<\global \compressMMRests{\violoncello}>>
    }
    \layout {
      indent = 0\cm
    }
  }
}

\bookpart {
  \header {
    dedication = \markup { \italic "de «Soy Legión»" }
    title = "Minué"
    subtitle = "(Trío de cuerdas)"
    instrument = \markup { \concat {"Clarinete en Si" \flat} }
    subsubtitle = "Dados: [6, 3, 3, 1, 2, 4, 1, 1, 3, 6, 5, 5, 4, 2, 5, 6]"
    composer = "Germán Mercado"
    copyright = \markup {\with-url #"http://lecturayescrituramusical.blogspot.com/" {
  \center-column {
    \epsfile #0 #15 #"recursos/soyncn.eps"
    \bold {"Nota contra Nota"}
    "http://lecturayescrituramusical.blogspot.com/"
    \null
    }
                       }
  }
    tagline = ""
  }

  \markup { \vspace #1 }
  \score {
    \new Staff {
      \overrideTimeSignatureSettings 3/4 1/4 1,1,1 #'() %para dividir beats.
      \accidentalStyle Staff.modern-cautionary
      \clef treble
      \transpose c d <<\global \compressMMRests{\viola}>>
    }
    \layout {
      indent = 0\cm
    }
  }
}
      
