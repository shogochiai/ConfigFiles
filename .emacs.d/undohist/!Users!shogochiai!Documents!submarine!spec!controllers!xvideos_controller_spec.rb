
((digest . "4701f9627dea586a3c267482c32e4dcc") (undo-list (#("
    it '.publicメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Xvideo.should_receive(:public)
      get :index
    end

    it '.by_recencyメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Xvideo.should_receive(:by_recency)
      get :index
    end
" 0 8 (fontified t) 8 28 (fontified t face font-lock-string-face) 28 29 (fontified t) 29 30 (fontified t face font-lock-keyword-face) 30 31 (fontified t syntax-table nil face font-lock-keyword-face) 31 46 (fontified t) 46 83 (fontified t face font-lock-string-face) 83 84 (fontified t syntax-table nil face font-lock-string-face) 84 91 (fontified t) 91 97 (fontified t face font-lock-type-face) 97 113 (fontified t) 113 120 (fontified t face font-lock-constant-face) 120 121 (fontified t syntax-table nil) 121 122 (fontified t) 122 132 (fontified t) 132 137 (fontified t face font-lock-constant-face) 137 138 (fontified t syntax-table nil face font-lock-constant-face) 138 143 (fontified t) 143 145 (fontified t face font-lock-keyword-face) 145 146 (fontified t syntax-table nil face font-lock-keyword-face) 146 155 (fontified t) 155 179 (fontified t face font-lock-string-face) 179 180 (fontified t) 180 181 (fontified t face font-lock-keyword-face) 181 182 (fontified t syntax-table nil face font-lock-keyword-face) 182 197 (fontified t) 197 234 (fontified t face font-lock-string-face) 234 235 (fontified t syntax-table nil face font-lock-string-face) 235 242 (fontified t) 242 248 (fontified t face font-lock-type-face) 248 264 (fontified t) 264 275 (fontified t face font-lock-constant-face) 275 276 (fontified t syntax-table nil) 276 287 (fontified t) 287 292 (fontified t face font-lock-constant-face) 292 293 (fontified t syntax-table nil face font-lock-constant-face) 293 298 (fontified t) 298 300 (fontified t face font-lock-keyword-face) 300 301 (fontified t syntax-table nil face font-lock-keyword-face) 301 302 (fontified t)) . -387) (t 21279 16892 0 0) ((marker) . -302) ((marker) . -302) ((marker) . -294) ((marker) . -294) ((marker) . -277) ((marker) . -277) ((marker) . -236) ((marker) . -236) ((marker) . -183) ((marker) . -183) ((marker) . -148) ((marker) . -148) ((marker) . -147) ((marker) . -147) ((marker) . -139) ((marker) . -139) ((marker) . -1) ((marker) . -1) ((marker) . -32) ((marker) . -32) ((marker) . -85) ((marker) . -85) ((marker) . -122) ((marker) . -122) ((marker . 387) . -83) ((marker . 387) . -83) ((marker . 387) . -83) ((marker . 387) . -83) ((marker . 387) . -83) ((marker . 387) . -83) ((marker . 387) . -83) ((marker . 387) . -83) ((marker . 387) . -83) ((marker . 387) . -83) ((marker . 387) . -83)))
