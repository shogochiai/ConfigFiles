
((digest . "e6a7204b3d7149fdb315ce7cd37e3937") (undo-list (#("
    it '.publicメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Dmm.should_receive(:public)
      get :index
    end

    it '.by_recencyメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Dmm.should_receive(:by_recency)
      get :index
    end
" 0 8 (fontified t) 8 28 (fontified t face font-lock-string-face) 28 29 (fontified t) 29 30 (fontified t face font-lock-keyword-face) 30 31 (fontified t syntax-table nil face font-lock-keyword-face) 31 46 (fontified t) 46 83 (fontified t face font-lock-string-face) 83 84 (fontified t syntax-table nil face font-lock-string-face) 84 91 (fontified t) 91 94 (fontified t face font-lock-type-face) 94 110 (fontified t) 110 117 (fontified t face font-lock-constant-face) 117 118 (fontified t syntax-table nil) 118 129 (fontified t) 129 134 (fontified t face font-lock-constant-face) 134 135 (fontified t syntax-table nil face font-lock-constant-face) 135 136 (fontified t) 136 140 (fontified t) 140 142 (fontified t face font-lock-keyword-face) 142 143 (fontified t syntax-table nil face font-lock-keyword-face) 143 152 (fontified t) 152 176 (fontified t face font-lock-string-face) 176 177 (fontified t) 177 178 (fontified t face font-lock-keyword-face) 178 179 (fontified t syntax-table nil face font-lock-keyword-face) 179 194 (fontified t) 194 231 (fontified t face font-lock-string-face) 231 232 (fontified t syntax-table nil face font-lock-string-face) 232 239 (fontified t) 239 242 (fontified t face font-lock-type-face) 242 258 (fontified t) 258 269 (fontified t face font-lock-constant-face) 269 270 (fontified t syntax-table nil) 270 281 (fontified t) 281 286 (fontified t face font-lock-constant-face) 286 287 (fontified t syntax-table nil face font-lock-constant-face) 287 292 (fontified t) 292 294 (fontified t face font-lock-keyword-face) 294 295 (fontified t syntax-table nil face font-lock-keyword-face) 295 296 (fontified t)) . -378) (t 21279 16892 0 0) ((marker) . -296) ((marker) . -296) ((marker) . -288) ((marker) . -288) ((marker) . -271) ((marker) . -271) ((marker) . -233) ((marker) . -233) ((marker) . -180) ((marker) . -180) ((marker) . -145) ((marker) . -145) ((marker) . -144) ((marker) . -144) ((marker) . -1) ((marker) . -1) ((marker) . -32) ((marker) . -32) ((marker) . -85) ((marker) . -85) ((marker) . -119) ((marker) . -119) ((marker) . -136) ((marker) . -136)))
