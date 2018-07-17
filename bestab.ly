\version "2.8.12"

#(define-markup-command (whistle layout props fingering upper-register)
  (list? boolean?)
  (interpret-markup layout props
    (markup (#:override '(size . 0.5)
             (#:center-column
              (#:null
               #:lower 8
               (#:woodwind-diagram 'tin-whistle
                ((cons 'cc fingering)
                 ('lh . ())
                 ('rh . ())))
               (if upper-register (markup #:musicglyph "scripts.stopped") (markup #:null))
              )
            )
          )
    )
  )
)

btab = \markup \whistle #'(one two three four five six) ##f
ctab = \markup \whistle #'(one two three four five) ##f
dtab = \markup \whistle #'(one two three four) ##f
etab = \markup \whistle #'(one two three) ##f
ftab = \markup \whistle #'(one two) ##f
gtab = \markup \whistle #'(one) ##f
atab = \markup \whistle #'(two three) ##f
bhitab = \markup \whistle #'(two three four five six) ##t
chitab = \markup \whistle #'(one two three four five) ##t
dhitab = \markup \whistle #'(one two three four) ##t
ehitab = \markup \whistle #'(one two three) ##t
