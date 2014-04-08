
((digest . "fafa1a7278ec3be88107a0a3869e1483") (undo-list (#("  def create
    video.tags << new_tag unless video.tags.include? new_tag
  end

  def destroy
    video.tags_videos.where(tag_id: tag).first.destroy
  end
" 0 2 (fontified t) 2 5 (fontified t face font-lock-keyword-face) 5 6 (fontified t) 6 11 (fontified t face font-lock-function-name-face) 11 12 (fontified t syntax-table nil face font-lock-function-name-face) 12 13 (fontified t) 13 39 (fontified t) 39 45 (fontified t face font-lock-keyword-face) 45 72 (fontified t) 72 73 (fontified t syntax-table nil) 73 76 (fontified t) 76 78 (fontified t face font-lock-keyword-face) 78 79 (fontified t syntax-table nil face font-lock-keyword-face) 79 83 (fontified t) 83 86 (fontified t face font-lock-keyword-face) 86 87 (fontified t) 87 93 (fontified t face font-lock-function-name-face) 93 94 (fontified t syntax-table nil face font-lock-function-name-face) 94 148 (fontified t) 148 149 (fontified t syntax-table nil) 149 152 (fontified t) 152 154 (fontified t face font-lock-keyword-face) 154 155 (fontified t syntax-table nil face font-lock-keyword-face) 155 156 (fontified t)) . -62) (t 21270 44492 0 0) ((marker) . -156) ((marker) . -156) ((marker) . -150) ((marker) . -150) ((marker) . -95) ((marker) . -95) ((marker) . -81) ((marker) . -81) ((marker) . -80) ((marker) . -80) ((marker) . -74) ((marker) . -74) ((marker) . -13) ((marker) . -13) ((marker . 62) . -94) ((marker . 62) . -155) ((marker . 62) . -155) ((marker . 62) . -80) ((marker . 62) . -12) ((marker) . -156) nil undo-tree-canary))
