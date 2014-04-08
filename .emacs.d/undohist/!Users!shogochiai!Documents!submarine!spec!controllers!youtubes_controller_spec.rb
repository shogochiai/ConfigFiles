
((digest . "a58535da0ba5ddb492afef8a26c19f92") (undo-list (#("
    it '.publicメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Youtube.should_receive(:public)
      get :index
    end

    it '.by_recencyメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Youtube.should_receive(:by_recency)
      get :index
    end
" 0 8 (fontified t) 8 28 (fontified t face font-lock-string-face) 28 29 (fontified t) 29 30 (fontified t face font-lock-keyword-face) 30 31 (fontified t syntax-table nil face font-lock-keyword-face) 31 46 (fontified t) 46 83 (fontified t face font-lock-string-face) 83 84 (fontified t syntax-table nil face font-lock-string-face) 84 91 (fontified t) 91 98 (fontified t face font-lock-type-face) 98 114 (fontified t) 114 121 (fontified t face font-lock-constant-face) 121 122 (fontified t syntax-table nil) 122 123 (fontified t) 123 133 (fontified t) 133 138 (fontified t face font-lock-constant-face) 138 139 (fontified t syntax-table nil face font-lock-constant-face) 139 144 (fontified t) 144 146 (fontified t face font-lock-keyword-face) 146 147 (fontified t syntax-table nil face font-lock-keyword-face) 147 156 (fontified t) 156 180 (fontified t face font-lock-string-face) 180 181 (fontified t) 181 182 (fontified t face font-lock-keyword-face) 182 183 (fontified t syntax-table nil face font-lock-keyword-face) 183 198 (fontified t) 198 235 (fontified t face font-lock-string-face) 235 236 (fontified t syntax-table nil face font-lock-string-face) 236 243 (fontified t) 243 250 (fontified t face font-lock-type-face) 250 266 (fontified t) 266 277 (fontified t face font-lock-constant-face) 277 278 (fontified t syntax-table nil) 278 289 (fontified t) 289 294 (fontified t face font-lock-constant-face) 294 295 (fontified t syntax-table nil face font-lock-constant-face) 295 300 (fontified t) 300 302 (fontified t face font-lock-keyword-face) 302 303 (fontified t syntax-table nil face font-lock-keyword-face) 303 304 (fontified t)) . -390) (t 21279 16892 0 0) ((marker) . -304) ((marker) . -304) ((marker) . -296) ((marker) . -296) ((marker) . -279) ((marker) . -279) ((marker) . -237) ((marker) . -237) ((marker) . -184) ((marker) . -184) ((marker) . -149) ((marker) . -149) ((marker) . -148) ((marker) . -148) ((marker) . -1) ((marker) . -1) ((marker) . -32) ((marker) . -32) ((marker) . -85) ((marker) . -85) ((marker) . -123) ((marker) . -123) ((marker) . -140) ((marker) . -140)))
