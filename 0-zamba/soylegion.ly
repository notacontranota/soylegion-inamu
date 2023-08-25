%Generado automáticamente por 'soylegion.py'
\version "2.18.2"
\header {
  dedication = \markup { \italic "de «Soy Legión»" }
  title = "Zamba para un exorcismo"
  subtitle = "(Aire de zamba)"
  subsubtitle = "Dados: [7, 6, 7, 5, 4, 9, 8, 7, 4, 9, 8, 7, 6, 4, 6, 7, 10, 4, 9, 4, 9, 10, 11, 4]"
  composer = "Pablo Herrera & Legión"
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

#(define ((dos-compases numuno denuno numdos dendos) grob)
   (grob-interpret-markup grob
     (markup #:override '(baseline-skip . 0) #:number
       (#:line (
                 (#:column (numuno denuno))
                 (#:column (numdos dendos))
                 )
         )
       )
     )
   )

manoderecha = {
  g'8. ees'8 f'16 g'8. aes'8 g'16
  \appoggiatura fis''8 g''4 \appoggiatura cis''8 d''4 \appoggiatura fis'8 g'4
  f'4 aes'8[ g'] f'4
  r8. ees''16 c'' g' ees'4 ees'8
  aes'16 g' bes' c'' ees'' f'' ees'' d'' c'' bes' aes' g'
  <bes' ees''>4. <bes' ees''>4 bes'16 d''
  ees'16 c'' d'' c'' bes' c'' aes' bes'aes' g' f' aes'
  <ees' g'>2.
  aes'16 g' bes' c'' ees'' f'' ees'' d'' c'' bes' aes' g'
  <bes' ees''>4. <bes' ees''>4 bes'16 d''
  c''16 aes'' bes'' aes'' g'' aes'' f'' g'' f'' ees'' d'' f''
  <c'' ees''>2.
  << {f''4. f''4 c''16 d''} \\ {r8 aes'4 aes'8 aes4} >>
  << {c''16 b' c''4 c'' b'16 c''} \\ {r8. ees''16 c'' aes' d'8 ees'4} >>
  << {f'16 bes' d''4 f''16 f' d''4} \\ {\repeat unfold 2 {\stemDown \appoggiatura e'8 \stemDown f'4. \stemNeutral} } >>
  << {<c' f' aes' c''>2.\arpeggio} \\ {r4 aes'8 c'' aes'4} >>
  << {f'8 des''4 aes'8 f''4} \\ {r4 aes16 f' des'4 aes8} >>
  << {\repeat unfold 2 {\appoggiatura g''8 \stemUp aes'' aes'4}\stemNeutral} \\ {ees'8. c'16 ees'8 c' ees' c'} >>
  << {d''8 c'' bes' f''8. bes'} \\ {f'8. d' d'4 f'16 d'} >>
  << {e'16[ dis' e'8] g'16[ fis' g'8] bes'16[ a' bes'8] } \\ {r8 \repeat unfold 2 {c'16[ b c'8]} d'16 c' } >>
  << {bes'8 aes'4~ aes'4.} \\ {f'8. c'8 e'16 f'8. g'8 f'16} >>
  << {c''8.[ c'''16] g''8.[ f''16] ees''8.[ d''16]} \\ {ees'8 ees'' c'' ees' c'' g'} >>
  << {<d''f''>4 <c'' ees''> <b' d''>} \\ {f'16 e' f'4 f' g'16 f'} >>
  << {b'4 c''8 c''4.} \\ {\appoggiatura fis'8 g' ees'4 ees'4.} >>
}
manoizquierda = {
  <c ees g c'>2\arpeggio r4
  b,8 g16 g, b, d g4 b,8
  aes16 f ees d c bes, aes, bes, c f aes8
  b,8 c4 b8 c'4
  r8 <aes, c ees aes>4\arpeggio~ <aes, c ees aes>4.
  r16 g, aes, bes, c d ees f g4
  \appoggiatura g8 aes4 \appoggiatura a8 bes4 \appoggiatura a,8 bes,4
  r8. ees'16 bes g ees4 ees'8
  r8 <aes, c ees aes>4~\arpeggio <aes, c ees aes>4.
  r16 g, aes, bes, c d ees f g4
  \appoggiatura e8 f4 \appoggiatura d8 ees4 \appoggiatura fis8 g4
  r8. c'16 g ees c4 r8
  \repeat unfold 3 {\appoggiatura e8 f4}
  <aes, c ees aes>2.\arpeggio
  \appoggiatura a8 bes4 \appoggiatura e8 f4 \appoggiatura a,8 bes,4
  \ottava #-1 f,,16 e,, f,,4 f, aes,16 f, \ottava #0
  des2 <f des'>4
  c8. aes ees c
  d8. d,16 d8 d, d4
  <e, e>8. <e,, e,> <e,, e,> <e, e>
  \repeat unfold 3 {\appoggiatura e8 f4}
  r8 <g c' ees'>8 <g c' ees'>16 r r8. <g c' ees'>8 r16
  <g,, g,>4. <g b d'>
  c16 b, c d ees g c'4 r8
}

#(set-global-staff-size 18)
\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \set PianoStaff.connectArpeggios = ##t 
    \new Staff = "MD" {
      \time 6/8
      \set Staff.midiInstrument = #"acoustic grand"
      \override Staff.TimeSignature.stencil = #(dos-compases "6" "8" "3" "4")
      \tempo "Tempo di zamba" 4. = 45
      \clef treble
      \key c \minor
      \manoderecha
      \bar "|."      
    }
    \new Staff =
      "MI" {
      \set Staff.midiInstrument = #"acoustic grand"
      \override Staff.TimeSignature.stencil = #(dos-compases "6" "8" "3" "4")
      \clef bass
      \key c \minor
      \manoizquierda
    }
  >>
  \layout{}
  \midi{}  
}