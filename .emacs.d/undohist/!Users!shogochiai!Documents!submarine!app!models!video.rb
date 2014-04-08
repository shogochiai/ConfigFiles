
((digest . "65bc6a7023a7b6c965d2068bb9c782e5") (undo-list (#("
" 0 1 (fontified t)) . -721) (t 21278 48954 0 0) ((marker . 721) . -1) ((marker . 721) . -1) ((marker) . -1) ((marker) . -1) nil (#("  def converted_url
    sites = ['Youtube', 'Xvideo', 'Fc2']

    case type
    when sites[0]
      url.sub('watch?v=', 'embed/').sub('&feature=youtu.be', '?rel=0')
    when sites[1]
      \"http://flashservice.xvideos.com/embedframe/\" + /\\d{7}/.match(url).to_s
    when sites[2]
      url.sub('.com', '.com/en').sub('&tk=', '')
    else
      \"\"
    end
  end
" 0 2 (fontified t) 2 5 (fontified t face font-lock-keyword-face) 5 6 (fontified t) 6 18 (fontified t face font-lock-function-name-face) 18 19 (fontified t syntax-table nil face font-lock-function-name-face) 19 33 (fontified t) 33 42 (fontified t face font-lock-string-face) 42 44 (fontified t) 44 52 (fontified t face font-lock-string-face) 52 54 (fontified t) 54 59 (fontified t face font-lock-string-face) 59 60 (fontified t syntax-table nil) 60 66 (fontified t) 66 70 (fontified t face font-lock-keyword-face) 70 74 (fontified t) 74 75 (fontified t syntax-table nil) 75 80 (fontified t) 80 84 (fontified t face font-lock-keyword-face) 84 92 (fontified t) 92 93 (fontified t syntax-table nil) 93 108 (fontified t) 108 118 (fontified t face font-lock-string-face) 118 120 (fontified t) 120 128 (fontified t face font-lock-string-face) 128 134 (fontified t) 134 153 (fontified t face font-lock-string-face) 153 155 (fontified t) 155 163 (fontified t face font-lock-string-face) 163 164 (fontified t syntax-table nil) 164 169 (fontified t) 169 173 (fontified t face font-lock-keyword-face) 173 181 (fontified t) 181 182 (fontified t syntax-table nil) 182 189 (fontified t) 189 195 (fontified t face font-lock-string-face) 195 196 (fontified t syntax-table (7 . 47) face font-lock-string-face) 196 197 (fontified t syntax-table (7 . 47) face font-lock-string-face) 197 234 (fontified t face font-lock-string-face) 234 259 (fontified t) 259 260 (fontified t syntax-table nil) 260 265 (fontified t) 265 269 (fontified t face font-lock-keyword-face) 269 277 (fontified t) 277 278 (fontified t syntax-table nil) 278 293 (fontified t) 293 299 (fontified t face font-lock-string-face) 299 301 (fontified t) 301 310 (fontified t face font-lock-string-face) 310 316 (fontified t) 316 322 (fontified t face font-lock-string-face) 322 324 (fontified t) 324 326 (fontified t face font-lock-string-face) 326 327 (fontified t syntax-table nil) 327 328 (fontified t) 328 332 (fontified t) 332 335 (fontified t face font-lock-keyword-face) 335 336 (fontified t syntax-table nil face font-lock-keyword-face) 336 343 (fontified t) 343 344 (fontified t face font-lock-string-face) 344 345 (fontified t syntax-table nil face font-lock-string-face) 345 350 (fontified t) 350 352 (fontified t face font-lock-keyword-face) 352 353 (fontified t syntax-table nil face font-lock-keyword-face) 353 356 (fontified t) 356 358 (fontified t face font-lock-keyword-face) 358 359 (fontified t syntax-table nil face font-lock-keyword-face) 359 360 (fontified t)) . -723) (t 21278 38581 0 0) ((marker . 548) . -360) ((marker . 548) . -360) ((marker . 722) . -61) ((marker . 722) . -61) ((marker . 722) . -360) ((marker . 722) . -20) ((marker . 548) . -20) ((marker . 722) . -360) nil (#("  def self.by_type arg
    where(type: arg)
  end

" 0 2 (fontified t) 2 5 (face font-lock-keyword-face fontified t) 5 6 (fontified t) 6 18 (face font-lock-function-name-face fontified t) 18 21 (fontified t) 21 22 (syntax-table nil fontified t) 22 42 (fontified t) 42 43 (syntax-table nil fontified t) 43 46 (fontified t) 46 48 (face font-lock-keyword-face fontified t) 48 49 (face font-lock-keyword-face syntax-table nil fontified t) 49 51 (fontified t)) . -723) (t 21278 34735 0 0)))
