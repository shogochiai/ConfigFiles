
((digest . "6595b2744fc6dcbc33a98a7399fe8121") (undo-list (#("
    it '.publicメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Youku.should_receive(:public)
      get :index
    end

    it '.by_recencyメソッドを実行すること' do
      pending 'test時にModel.publicがNilClassになるので一次保留'
      Youku.should_receive(:by_recency)
      get :index
    end
" 0 8 (fontified t) 8 28 (fontified t face font-lock-string-face) 28 29 (fontified t) 29 30 (fontified t face font-lock-keyword-face) 30 31 (fontified t syntax-table nil face font-lock-keyword-face) 31 46 (fontified t) 46 83 (fontified t face font-lock-string-face) 83 84 (fontified t syntax-table nil face font-lock-string-face) 84 91 (fontified t) 91 96 (fontified t face font-lock-type-face) 96 112 (fontified t) 112 119 (fontified t face font-lock-constant-face) 119 120 (fontified t syntax-table nil) 120 121 (fontified t) 121 131 (fontified t) 131 136 (fontified t face font-lock-constant-face) 136 137 (fontified t syntax-table nil face font-lock-constant-face) 137 142 (fontified t) 142 144 (fontified t face font-lock-keyword-face) 144 145 (fontified t syntax-table nil face font-lock-keyword-face) 145 154 (fontified t) 154 178 (fontified t face font-lock-string-face) 178 179 (fontified t) 179 180 (fontified t face font-lock-keyword-face) 180 181 (fontified t syntax-table nil face font-lock-keyword-face) 181 196 (fontified t) 196 233 (fontified t face font-lock-string-face) 233 234 (fontified t syntax-table nil face font-lock-string-face) 234 241 (fontified t) 241 246 (fontified t face font-lock-type-face) 246 262 (fontified t) 262 273 (fontified t face font-lock-constant-face) 273 274 (fontified t syntax-table nil) 274 285 (fontified t) 285 290 (fontified t face font-lock-constant-face) 290 291 (fontified t syntax-table nil face font-lock-constant-face) 291 296 (fontified t) 296 298 (fontified t face font-lock-keyword-face) 298 299 (fontified t syntax-table nil face font-lock-keyword-face) 299 300 (fontified t)) . -384) (t 21279 16892 0 0) ((marker) . -300) ((marker) . -300) ((marker) . -292) ((marker) . -292) ((marker) . -275) ((marker) . -275) ((marker) . -235) ((marker) . -235) ((marker) . -182) ((marker) . -182) ((marker) . -147) ((marker) . -147) ((marker) . -146) ((marker) . -146) ((marker) . -138) ((marker) . -138) ((marker) . -1) ((marker) . -1) ((marker) . -32) ((marker) . -32) ((marker) . -85) ((marker) . -85) ((marker) . -121) ((marker) . -121)))
