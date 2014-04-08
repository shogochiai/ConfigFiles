
((digest . "d03174ef0e275a1330687b3a9528eaf5") (undo-list (#(" -*-" 0 1 (fontified t face font-lock-comment-delimiter-face) 1 4 (fontified t face font-lock-comment-face)) . 2) ((marker . 2) . -4) nil (#(" -*-" 0 3 (fontified t face font-lock-comment-face) 3 4 (fontified t syntax-table nil face font-lock-comment-face)) . 20) (t 21269 46537 0 0) ((marker . 2) . -4) nil (#("
  def set_rating
    @rating = Rating.find(params[:id])
  end
" 0 1 (fontified t) 1 3 (fontified t) 3 6 (fontified t face font-lock-keyword-face) 6 7 (fontified t) 7 16 (fontified t face font-lock-function-name-face) 16 17 (fontified t syntax-table nil face font-lock-function-name-face) 17 18 (fontified t) 18 22 (fontified t) 22 29 (fontified t face font-lock-variable-name-face) 29 32 (fontified t) 32 38 (fontified t face font-lock-type-face) 38 44 (fontified t) 44 50 (fontified t face font-lock-builtin-face) 50 51 (fontified t) 51 54 (fontified t face font-lock-constant-face) 54 55 (fontified t) 55 56 (fontified t syntax-table nil) 56 57 (fontified t) 57 59 (fontified t) 59 61 (fontified t face font-lock-keyword-face) 61 62 (fontified t syntax-table nil face font-lock-keyword-face) 62 63 (fontified t)) . -246) (t 21269 46525 0 0) ((marker) . -63) nil (#("
  def edit
  end

  def update
    if @rating.update(rating_params)
      redirect_to @rating, notice: 'Rating was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @rating.destroy
    redirect_to ratings_url
  end
" 3 6 (face font-lock-keyword-face) 7 10 (face font-lock-function-name-face) 10 11 (syntax-table nil face font-lock-function-name-face) 12 14 (fontified t) 14 16 (fontified t face font-lock-keyword-face) 16 17 (fontified t syntax-table nil face font-lock-keyword-face) 17 18 (rear-nonsticky t fontified t) 18 19 (fontified t) 19 21 (fontified t) 21 24 (fontified t face font-lock-keyword-face) 24 25 (fontified t) 25 30 (fontified t face font-lock-function-name-face) 30 31 (fontified t syntax-table nil face font-lock-function-name-face) 31 32 (fontified t) 32 36 (fontified t) 36 38 (fontified t face font-lock-keyword-face) 38 39 (fontified t) 39 46 (fontified t face font-lock-variable-name-face) 46 67 (fontified t) 67 68 (fontified t syntax-table nil) 68 69 (fontified t) 69 75 (fontified t) 75 86 (fontified t face font-lock-builtin-face) 86 87 (fontified t) 87 94 (fontified t face font-lock-variable-name-face) 94 104 (fontified t) 104 137 (fontified t face font-lock-string-face) 137 138 (fontified t syntax-table nil face font-lock-string-face) 138 139 (fontified t) 139 143 (fontified t) 143 146 (fontified t face font-lock-keyword-face) 146 147 (fontified t syntax-table nil face font-lock-keyword-face) 147 148 (fontified t) 148 154 (fontified t) 154 160 (fontified t face font-lock-builtin-face) 160 161 (fontified t) 161 162 (fontified t face font-lock-constant-face) 162 165 (fontified t face font-lock-constant-face) 165 166 (fontified t syntax-table nil face font-lock-constant-face) 166 167 (fontified t) 167 171 (fontified t) 171 173 (fontified t face font-lock-keyword-face) 173 174 (fontified t syntax-table nil face font-lock-keyword-face) 174 175 (fontified t) 175 177 (fontified t) 177 179 (fontified t face font-lock-keyword-face) 179 180 (fontified t syntax-table nil face font-lock-keyword-face) 180 181 (fontified t) 181 182 (fontified t) 182 184 (fontified t) 184 187 (fontified t face font-lock-keyword-face) 187 188 (fontified t) 188 194 (fontified t face font-lock-function-name-face) 194 195 (fontified t syntax-table nil face font-lock-function-name-face) 195 196 (fontified t) 196 200 (fontified t) 200 207 (fontified t face font-lock-variable-name-face) 207 214 (fontified t) 214 215 (fontified t syntax-table nil) 215 216 (fontified t) 216 220 (fontified t) 220 231 (fontified t face font-lock-builtin-face) 231 242 (fontified t) 242 243 (fontified t syntax-table nil) 243 244 (fontified t) 244 246 (fontified t) 246 248 (fontified t face font-lock-keyword-face) 248 249 (fontified t syntax-table nil face font-lock-keyword-face) 249 250 (fontified t)) . -235) (t 21269 46525 0 0) ((marker . 227) . -161) ((marker . 17) . -250) ((marker . 17) . -250) ((marker . 1) . -244) ((marker . 1) . -244) ((marker . 227) . -19) ((marker . 1) . -12) nil (#("  def new
    @rating = Rating.new
  end

" 0 2 (fontified t) 2 5 (fontified t face font-lock-keyword-face) 5 6 (fontified t) 6 8 (fontified t face font-lock-function-name-face) 8 9 (fontified t syntax-table nil face font-lock-function-name-face) 9 10 (fontified t) 10 14 (fontified t) 14 21 (fontified t face font-lock-variable-name-face) 21 24 (fontified t) 24 30 (fontified t face font-lock-type-face) 30 33 (fontified t) 33 34 (fontified t syntax-table nil) 34 35 (fontified t) 35 37 (fontified t) 37 39 (fontified t face font-lock-keyword-face) 39 40 (fontified t syntax-table nil face font-lock-keyword-face) 40 41 (fontified t) 41 42 (fontified t)) . -73) (t 21269 46498 0 0) ((marker . 65) . -41) ((marker . 65) . -41) ((marker . 65) . -41) ((marker . 65) . -41) ((marker . 65) . -41) ((marker . 238) . -41) nil (#("
" 0 1 (fontified t)) . -72) (t 21269 46494 0 0) ((marker . 2) . -1) ((marker . 64) . -1) ((marker . 64) . -1) ((marker . 195) . -1) ((marker . 195) . -1) nil (#("  before_action :set_rating, only: [:show, :edit, :update, :destroy]
" 0 16 (fontified t) 16 27 (fontified t face font-lock-constant-face) 27 36 (fontified t) 36 41 (fontified t face font-lock-constant-face) 41 43 (fontified t) 43 48 (fontified t face font-lock-constant-face) 48 50 (fontified t) 50 57 (fontified t face font-lock-constant-face) 57 59 (fontified t) 59 67 (fontified t face font-lock-constant-face) 67 68 (fontified t syntax-table nil) 68 69 (fontified t)) . -73) (t 21269 46477 0 0) ((marker . 64) . -69) ((marker . 64) . -69) ((marker . 213) . -69) ((marker . 213) . -69) nil undo-tree-canary))