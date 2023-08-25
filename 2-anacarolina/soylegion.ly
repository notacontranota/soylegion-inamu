%Generado automáticamente por 'soylegion.py'
%para el juego "Ana Carolina", de Pablo Herrera.
\version "2.22.0"
\pointAndClickOff

global = {
  \key d \minor
  \time 6/8
  \tempo "Lento"
  \repeat volta 2 {
    s2.*8
  }
  \repeat volta 2 {
    s2.*8
  }
}

violin = {
  f''4 ( _\mf  d''8 )  a'4 (  d''8 )
  bes'16 (  a'16  bes'4 )  bes'16 ( a'16  bes'4 )
  a'16 ( _\<  bes'16  a'16  bes'16 a'16  bes'16 )  g'16 (  a'16  g'16 a'16  g'16  a'16 ) _\!
  g'8. ( _\>  a'8. )  f'4. _\!
  d''4 _\f  e''8  f''4  g''8
  f''8  f''8  f''8  f''8 f''8  f''8
  e''8.  e''16  g''8  e''8. e''16  g''8
  f''4 ~  f''16  f'16  f'4 r8
  e''4. _\mf  d''8.  a'8.
  bes'16 (  a'16  bes'4 )  bes'16 (    a'16  bes'4 )
  a'16 (  cis'16  d'16  e'16  bes'16 a'16 )  g'4 (  a'8 )
  f'8  a'8  d''8  f''4.
  e''2. \trill _\markup{ \italic {cresc.} }
  d''4 ~  d''16  d''16  d''4.
  a''16 ( _\f  e''16  d''16 ) cis''8.  bes''16 (  e''16  d''16 ) cis''8.
  d''8. _\f  d'''16 _\p  d'''8 d'''4.
}
viola = {
  a'4 ( _\mf  f'8 )  f'4 (  a'8 )
  e'16  d'16  c'16  a16 c'16  d'16  e'4.
  cis'4. _\<  a4. _\!
  a8. ( _\>  f8. )  a4. _\!
  f'4 _\f  a'8  bes'4  c''8
  a'8  a'8  a'8  a'8  a'8 a'8
  bes'4 (  bes8 )  bes'4 (  bes8 )
  a'4 ~  a'16  a16  a4 r8
  r8  g'4 _\mf  g'8  f'4
  e'4  e'16 (  f'16 )  e'4 e'16 (  d'16 )
  cis'8 (  bes8  cis'8 )  a8 ( bes8  a8 )
  a8.  d'8.  a'4.
  bes'4 ~ _\markup{ \italic {cresc.} }  bes'16 bes'16  bes'4.
  f'4 ~  f'16  f'16  f'4.
  a'8. _\f  a'16 (  bes'16  a'16 )  g'8.  g'16 (  a'16  g'16 )
  f'8. _\f  d''16 _\p  d''8  d''4.
}

violoncello = {
  d16 ( _\mf  e16  d4 )  d16 ( e16  d4 )
  g,4.  g16  f16  e16  d16 c16  bes,16
  a,8. _\<  bes,8.  cis8.  cis8. _\!
  d8. ( _\>  d8. )  d4. _\!
  bes,8. _\f  bes,16  c8  d8. c16  d8
  c2. \trill
  c,4 (  e,8 )  c,4 (  e,8 )
  f,4 ~  f,16  f,16  f,4 r8
  r4  cis'8 _\mf  d'4  d8
  g,16  f,16  g,16  a,16  bes,16 e16  g4.
  a,4.  cis16 (  d16  e16 a16  g16  e16 )
  d4.  d'4.
  g4 ~ _\markup{ \italic {cresc.} }  g16 g16  g4.
  a2. \trill
  a16 ( _\f  g16  e16  d16 cis16  b,16 )  a,8.  a,8.
  d8. _\f  d,16 _\p  d,8  d,4.
}

\bookpart {
  \header {
    dedication = \markup { \italic "de «Soy Legión»" }
    title = "Ana Carolina"
    subtitle = "(Trío de cuerdas)"
    subsubtitle = "Dados: [5, 3, 6, 3, 6, 2, 2, 3, 6, 3, 4, 4, 5, 5, 6, 5]"
    instrument = "Partitura general"
    composer = "Pablo Herrera"
    copyright = \markup {\with-url #"https://github.com/notacontranota/soylegion-inamu" {
      \center-column {
        \concat { \epsfile #0 #11 #"recursos/soyinamu.eps"
        \epsfile #0 #15 #"recursos/soyncn.eps" }
        \bold {"Instituto Nacional de la Música & Nota contra Nota"}
        "https://github.com/notacontranota/soylegion-inamu"
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
    \midi {\tempo 4=60}
  }
}
%particellas
\bookpart {
  \header {
    dedication = \markup { \italic "de «Soy Legión»" }
    title = "Ana Carolina"
    subtitle = "(Trío de cuerdas)"
    instrument = "Violín, Flauta u Oboe"
    subsubtitle = "Dados: [5, 3, 6, 3, 6, 2, 2, 3, 6, 3, 4, 4, 5, 5, 6, 5]"
    composer = "Pablo Herrera"
    copyright = \markup {\with-url #"https://github.com/notacontranota/soylegion-inamu" {
      \center-column {
        \concat { \epsfile #0 #11 #"recursos/soyinamu.eps"
        \epsfile #0 #15 #"recursos/soyncn.eps" }
        \bold {"Instituto Nacional de la Música & Nota contra Nota"}
        "https://github.com/notacontranota/soylegion-inamu"
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
    title = "Ana Carolina"
    subtitle = "(Trío de cuerdas)"
    instrument = \markup { \concat {"Viola o Clarinete en Si" \flat} }
    subsubtitle = "Dados: [5, 3, 6, 3, 6, 2, 2, 3, 6, 3, 4, 4, 5, 5, 6, 5]"
    composer = "Pablo Herrera"
    copyright = \markup {\with-url #"https://github.com/notacontranota/soylegion-inamu" {
      \center-column {
        \concat { \epsfile #0 #11 #"recursos/soyinamu.eps"
        \epsfile #0 #15 #"recursos/soyncn.eps" }
        \bold {"Instituto Nacional de la Música & Nota contra Nota"}
        "https://github.com/notacontranota/soylegion-inamu"
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
    title = "Ana Carolina"
    subtitle = "(Trío de cuerdas)"
    instrument = "Violoncello o Fagot"
    subsubtitle = "Dados: [5, 3, 6, 3, 6, 2, 2, 3, 6, 3, 4, 4, 5, 5, 6, 5]"
    composer = "Pablo Herrera"
    copyright = \markup {\with-url #"https://github.com/notacontranota/soylegion-inamu" {
      \center-column {
        \concat { \epsfile #0 #11 #"recursos/soyinamu.eps"
        \epsfile #0 #15 #"recursos/soyncn.eps" }
        \bold {"Instituto Nacional de la Música & Nota contra Nota"}
        "https://github.com/notacontranota/soylegion-inamu"
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
      
