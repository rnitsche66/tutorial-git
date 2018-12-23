(TeX-add-style-hook "LitListe"
 (function
  (lambda ()
    (LaTeX-add-bibliographies
     "RainerLiteratur")
    (TeX-run-style-hooks
     "util"
     "a4"
     "graphicx"
     "babel"
     "ngerman"
     "fontenc"
     "T1"
     "inputenc"
     "latin1"
     "a4"
     "graphicx"
     "latex2e"
     "art11"
     "article"
     "a4paper"
     "11pt"
     "ae"
     "graphicx"
     "pdftex"
     "latex2e"
     "art11"
     "article"
     "a4paper"
     "pdftex"
     "11pt"
     "oneside"))))

