
((digest . "8cc34c118cc99ace244edfce61e61855") (undo-list (#("
    it '.publicメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Xhamster.should_receive(:public)
      get :index
    end

    it '.by_recencyメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Xhamster.should_receive(:by_recency)
      get :index
    end
" 0 8 (fontified t) 8 28 (fontified t face font-lock-string-face) 28 29 (fontified t) 29 30 (fontified t face font-lock-keyword-face) 30 31 (fontified t syntax-table nil face font-lock-keyword-face) 31 46 (fontified t) 46 83 (fontified t face font-lock-string-face) 83 84 (fontified t syntax-table nil face font-lock-string-face) 84 91 (fontified t) 91 99 (fontified t face font-lock-type-face) 99 115 (fontified t) 115 122 (fontified t face font-lock-constant-face) 122 123 (fontified t syntax-table nil) 123 124 (fontified t) 124 134 (fontified t) 134 139 (fontified t face font-lock-constant-face) 139 140 (fontified t syntax-table nil face font-lock-constant-face) 140 145 (fontified t) 145 147 (fontified t face font-lock-keyword-face) 147 148 (fontified t syntax-table nil face font-lock-keyword-face) 148 157 (fontified t) 157 181 (fontified t face font-lock-string-face) 181 182 (fontified t) 182 183 (fontified t face font-lock-keyword-face) 183 184 (fontified t syntax-table nil face font-lock-keyword-face) 184 199 (fontified t) 199 236 (fontified t face font-lock-string-face) 236 237 (fontified t syntax-table nil face font-lock-string-face) 237 244 (fontified t) 244 252 (fontified t face font-lock-type-face) 252 268 (fontified t) 268 279 (fontified t face font-lock-constant-face) 279 280 (fontified t syntax-table nil) 280 291 (fontified t) 291 296 (fontified t face font-lock-constant-face) 296 297 (fontified t syntax-table nil face font-lock-constant-face) 297 302 (fontified t) 302 304 (fontified t face font-lock-keyword-face) 304 305 (fontified t syntax-table nil face font-lock-keyword-face) 305 306 (fontified t)) . -393) (t 21279 17162 0 0) ((marker) . -306) ((marker) . -306) ((marker) . -298) ((marker) . -298) ((marker) . -281) ((marker) . -281) ((marker) . -238) ((marker) . -238) ((marker) . -185) ((marker) . -185) ((marker) . -150) ((marker) . -150) ((marker) . -149) ((marker) . -149) ((marker) . -1) ((marker) . -1) ((marker) . -32) ((marker) . -32) ((marker) . -85) ((marker) . -85) ((marker) . -124) ((marker) . -124) ((marker) . -141) ((marker) . -141)))
