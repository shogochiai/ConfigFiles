
((digest . "4dd4b3422415c1615ec5f14a907baf86") (undo-list (#("
    it '.publicメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      B10f.should_receive(:public)
      get :index
    end

    it '.by_recencyメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      B10f.should_receive(:by_recency)
      get :index
    end
" 0 8 (fontified t) 8 28 (fontified t face font-lock-string-face) 28 29 (fontified t) 29 30 (fontified t face font-lock-keyword-face) 30 31 (fontified t syntax-table nil face font-lock-keyword-face) 31 46 (fontified t) 46 83 (fontified t face font-lock-string-face) 83 84 (fontified t syntax-table nil face font-lock-string-face) 84 91 (fontified t) 91 95 (fontified t face font-lock-type-face) 95 111 (fontified t) 111 118 (fontified t face font-lock-constant-face) 118 119 (fontified t syntax-table nil) 119 130 (fontified t) 130 135 (fontified t face font-lock-constant-face) 135 136 (fontified t syntax-table nil face font-lock-constant-face) 136 137 (fontified t) 137 141 (fontified t) 141 143 (fontified t face font-lock-keyword-face) 143 144 (fontified t syntax-table nil face font-lock-keyword-face) 144 153 (fontified t) 153 177 (fontified t face font-lock-string-face) 177 178 (fontified t) 178 179 (fontified t face font-lock-keyword-face) 179 180 (fontified t syntax-table nil face font-lock-keyword-face) 180 195 (fontified t) 195 232 (fontified t face font-lock-string-face) 232 233 (fontified t syntax-table nil face font-lock-string-face) 233 240 (fontified t) 240 244 (fontified t face font-lock-type-face) 244 260 (fontified t) 260 271 (fontified t face font-lock-constant-face) 271 272 (fontified t syntax-table nil) 272 283 (fontified t) 283 288 (fontified t face font-lock-constant-face) 288 289 (fontified t syntax-table nil face font-lock-constant-face) 289 294 (fontified t) 294 296 (fontified t face font-lock-keyword-face) 296 297 (fontified t syntax-table nil face font-lock-keyword-face) 297 298 (fontified t)) . -381) (t 21279 16892 0 0) ((marker) . -298) ((marker) . -298) ((marker) . -290) ((marker) . -290) ((marker) . -273) ((marker) . -273) ((marker) . -234) ((marker) . -234) ((marker) . -181) ((marker) . -181) ((marker) . -146) ((marker) . -146) ((marker) . -145) ((marker) . -145) ((marker) . -1) ((marker) . -1) ((marker) . -32) ((marker) . -32) ((marker) . -85) ((marker) . -85) ((marker) . -120) ((marker) . -120) ((marker) . -137) ((marker) . -137)))
