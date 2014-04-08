
((digest . "784fbde11c861bd8d1cb7f9add84c4d0") (undo-list (#("
    it '.publicメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      PornStation.should_receive(:public)
      get :index
    end

    it '.by_recencyメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      PornStation.should_receive(:by_recency)
      get :index
    end
" 0 8 (fontified t) 8 28 (fontified t face font-lock-string-face) 28 29 (fontified t) 29 30 (fontified t face font-lock-keyword-face) 30 31 (fontified t syntax-table nil face font-lock-keyword-face) 31 46 (fontified t) 46 83 (fontified t face font-lock-string-face) 83 84 (fontified t syntax-table nil face font-lock-string-face) 84 91 (fontified t) 91 102 (fontified t face font-lock-type-face) 102 118 (fontified t) 118 125 (fontified t face font-lock-constant-face) 125 126 (fontified t syntax-table nil) 126 127 (fontified t) 127 137 (fontified t) 137 142 (fontified t face font-lock-constant-face) 142 143 (fontified t syntax-table nil face font-lock-constant-face) 143 148 (fontified t) 148 150 (fontified t face font-lock-keyword-face) 150 151 (fontified t syntax-table nil face font-lock-keyword-face) 151 160 (fontified t) 160 184 (fontified t face font-lock-string-face) 184 185 (fontified t) 185 186 (fontified t face font-lock-keyword-face) 186 187 (fontified t syntax-table nil face font-lock-keyword-face) 187 202 (fontified t) 202 239 (fontified t face font-lock-string-face) 239 240 (fontified t syntax-table nil face font-lock-string-face) 240 247 (fontified t) 247 258 (fontified t face font-lock-type-face) 258 274 (fontified t) 274 285 (fontified t face font-lock-constant-face) 285 286 (fontified t syntax-table nil) 286 297 (fontified t) 297 302 (fontified t face font-lock-constant-face) 302 303 (fontified t syntax-table nil face font-lock-constant-face) 303 308 (fontified t) 308 310 (fontified t face font-lock-keyword-face) 310 311 (fontified t syntax-table nil face font-lock-keyword-face) 311 312 (fontified t)) . -404) (t 21279 16892 0 0) ((marker) . -312) ((marker) . -312) ((marker) . -304) ((marker) . -304) ((marker) . -287) ((marker) . -287) ((marker) . -241) ((marker) . -241) ((marker) . -188) ((marker) . -188) ((marker) . -153) ((marker) . -153) ((marker) . -152) ((marker) . -152) ((marker) . -1) ((marker) . -1) ((marker) . -32) ((marker) . -32) ((marker) . -85) ((marker) . -85) ((marker) . -127) ((marker) . -127) ((marker) . -144) ((marker) . -144)))
