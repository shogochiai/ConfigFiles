
((digest . "da878cb606556ebd458460da8e37b92c") (undo-list (#("
    it '.publicメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      LaCoviluna.should_receive(:public)
      get :index
    end

    it '.by_recencyメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      LaCoviluna.should_receive(:by_recency)
      get :index
    end
" 0 8 (fontified t) 8 28 (fontified t face font-lock-string-face) 28 29 (fontified t) 29 30 (fontified t face font-lock-keyword-face) 30 31 (fontified t syntax-table nil face font-lock-keyword-face) 31 46 (fontified t) 46 83 (fontified t face font-lock-string-face) 83 84 (fontified t syntax-table nil face font-lock-string-face) 84 91 (fontified t) 91 101 (fontified t face font-lock-type-face) 101 117 (fontified t) 117 124 (fontified t face font-lock-constant-face) 124 125 (fontified t syntax-table nil) 125 126 (fontified t) 126 136 (fontified t) 136 141 (fontified t face font-lock-constant-face) 141 142 (fontified t syntax-table nil face font-lock-constant-face) 142 147 (fontified t) 147 149 (fontified t face font-lock-keyword-face) 149 150 (fontified t syntax-table nil face font-lock-keyword-face) 150 159 (fontified t) 159 183 (fontified t face font-lock-string-face) 183 184 (fontified t) 184 185 (fontified t face font-lock-keyword-face) 185 186 (fontified t syntax-table nil face font-lock-keyword-face) 186 201 (fontified t) 201 238 (fontified t face font-lock-string-face) 238 239 (fontified t syntax-table nil face font-lock-string-face) 239 246 (fontified t) 246 256 (fontified t face font-lock-type-face) 256 272 (fontified t) 272 283 (fontified t face font-lock-constant-face) 283 284 (fontified t syntax-table nil) 284 295 (fontified t) 295 300 (fontified t face font-lock-constant-face) 300 301 (fontified t syntax-table nil face font-lock-constant-face) 301 306 (fontified t) 306 308 (fontified t face font-lock-keyword-face) 308 309 (fontified t syntax-table nil face font-lock-keyword-face) 309 310 (fontified t)) . -401) (t 21279 16892 0 0) ((marker) . -310) ((marker) . -310) ((marker) . -302) ((marker) . -302) ((marker) . -285) ((marker) . -285) ((marker) . -240) ((marker) . -240) ((marker) . -187) ((marker) . -187) ((marker) . -152) ((marker) . -152) ((marker) . -151) ((marker) . -151) ((marker) . -1) ((marker) . -1) ((marker) . -32) ((marker) . -32) ((marker) . -85) ((marker) . -85) ((marker) . -126) ((marker) . -126) ((marker) . -143) ((marker) . -143)))
