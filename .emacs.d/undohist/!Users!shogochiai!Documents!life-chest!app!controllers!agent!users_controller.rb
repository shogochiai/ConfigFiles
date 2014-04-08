
((digest . "9f7fd7d50ff8ed73fdbf1495de8548a9") (undo-list (#("end
" 0 2 (fontified t face font-lock-keyword-face) 2 3 (fontified t syntax-table nil face font-lock-keyword-face) 3 4 (fontified t)) . -133) (t 21290 16006 0 0) ((marker) . -4) ((marker) . -4) nil (#("def edit
    user
  " 0 3 (fontified t face font-lock-keyword-face) 3 4 (fontified t) 4 7 (fontified t face font-lock-function-name-face) 7 8 (fontified t syntax-table nil face font-lock-function-name-face) 8 9 (fontified t) 9 16 (fontified t) 16 17 (fontified t syntax-table nil) 17 18 (fontified t) 18 20 (fontified t)) . -133) (t 21290 15998 0 0) nil (158 . 160) (t 21290 15997 0 0) nil (#("
" 0 1 (fontified t)) . -158) nil (#(" " 0 1 (fontified t)) . -159) nil (#(" " 0 1 (fontified t)) . -160) (t 21290 15995 0 0) nil (#("  " 0 1 (fontified t face (my-face-spc-at-eol)) 1 2 (fontified t syntax-table nil face (my-face-spc-at-eol))) . 158) (#("  " 0 1 (fontified t face (my-face-spc-at-eol)) 1 2 (fontified t syntax-table nil face (my-face-spc-at-eol))) . 157) 165 nil (162 . 165) nil (160 . 162) (t 21290 15994 0 0) nil (156 . 159) nil (#("
  
  " 0 1 (fontified t) 1 2 (fontified t face (my-face-spc-at-eol)) 2 3 (fontified t syntax-table nil face (my-face-spc-at-eol)) 3 4 (fontified t) 4 6 (fontified t)) . -157) (t 21290 15992 0 0) nil (130 . 131) nil (nil rear-nonsticky nil 155 . 156) (nil fontified nil 155 . 156) (nil fontified nil 154 . 155) (nil fontified nil 152 . 154) (nil fontified nil 150 . 152) (nil fontified nil 149 . 150) (nil fontified nil 148 . 149) (nil fontified nil 141 . 148) (nil fontified nil 140 . 141) (nil fontified nil 139 . 140) (nil fontified nil 136 . 139) (nil fontified nil 135 . 136) (nil fontified nil 132 . 135) (nil fontified nil 130 . 132) (130 . 156) (t 21290 15989 0 0) nil (130 . 133) nil (#("
" 0 1 (fontified t)) . -70) (t 21290 15987 0 0) nil (#("  def edit
    user
  end
" 0 2 (fontified t) 2 5 (fontified t face font-lock-keyword-face) 5 6 (fontified t) 6 9 (fontified t face font-lock-function-name-face) 9 10 (fontified t syntax-table nil face font-lock-function-name-face) 10 11 (fontified t) 11 18 (fontified t) 18 19 (fontified t syntax-table nil) 19 20 (fontified t) 20 22 (fontified t) 22 24 (fontified t face font-lock-keyword-face) 24 25 (fontified t syntax-table nil face font-lock-keyword-face) 25 26 (fontified t)) . -70) (t 21290 15975 0 0) ((marker . 70) . -19) nil (#("
  def dead_checker
    if current_user.dead?
      current_user.send_message current_user
      redirect_to root_url, notice: '霑ｽ謔ｼ繝｢繝ｼ繝峨〒縺吶る未菫り�↓繝｡繝�そ繝ｼ繧ｸ繧帝∽ｿ｡縺励∪縺励◆縲'
    else
      redirect_to root_url, notice: '繝ｦ繝ｼ繧ｶ繝ｼ諠�ｱ繧呈峩譁ｰ縺励∪縺励◆縲ら函蟄倅ｸｭ縺ｮ險ｭ螳壹〒縺吶'
    end
  end
" 0 3 (fontified t) 3 6 (fontified t face font-lock-keyword-face) 6 7 (fontified t) 7 18 (fontified t face font-lock-function-name-face) 18 19 (fontified t syntax-table nil face font-lock-function-name-face) 19 20 (fontified t) 20 24 (fontified t) 24 26 (fontified t face font-lock-keyword-face) 26 44 (fontified t) 44 45 (fontified t syntax-table nil) 45 89 (fontified t) 89 90 (fontified t syntax-table nil) 90 97 (fontified t) 97 108 (fontified t face font-lock-builtin-face) 108 127 (fontified t) 127 172 (fontified t face font-lock-string-face) 172 173 (fontified t syntax-table nil face font-lock-string-face) 173 178 (fontified t) 178 181 (fontified t face font-lock-keyword-face) 181 182 (fontified t syntax-table nil face font-lock-keyword-face) 182 189 (fontified t) 189 200 (fontified t face font-lock-builtin-face) 200 219 (fontified t) 219 261 (fontified t face font-lock-string-face) 261 262 (fontified t syntax-table nil face font-lock-string-face) 262 267 (fontified t) 267 269 (fontified t face font-lock-keyword-face) 269 270 (fontified t syntax-table nil face font-lock-keyword-face) 270 273 (fontified t) 273 275 (fontified t face font-lock-keyword-face) 275 276 (fontified t syntax-table nil face font-lock-keyword-face) 276 277 (fontified t)) . -220) nil (#("
  def update
    if current_user.update_attributes params[:user]
      dead_checker
    else
      flash.now[:alert] = '繝ｦ繝ｼ繧ｶ繝ｼ諠�ｱ縺ｮ譖ｴ譁ｰ縺ｫ螟ｱ謨励＠縺ｾ縺励◆縲'
      render :edit
    end
  end

  def destroy
    current_user.destroy
    logout
    redirect_to root_url
  end

  def activate
    if @user = User.load_from_activation_token(params[:id])
      @token = params[:id]
    else
      not_authenticated
    end
  end

  def confirm
    @token = params[:user].delete(:token)
    if @user = User.load_from_activation_token(@token)
      if @user.update_attributes params[:user]
        @user.activate!
        auto_login @user, true
        redirect_to root_path, notice: '繧｢繧ｯ繝�ぅ繝吶�繧ｷ繝ｧ繝ｳ縺悟ｮ御ｺ�＠縺ｾ縺励◆'
      else
        flash.now[:alert] = '繧｢繧ｯ繝�ぅ繝吶�繧ｷ繝ｧ繝ｳ縺ｫ螟ｱ謨励＠縺ｾ縺励◆'
        render :activate
      end
    else
      not_authenticated
    end
  end
" 0 3 (fontified t) 3 6 (fontified t face font-lock-keyword-face) 6 7 (fontified t) 7 12 (fontified t face font-lock-function-name-face) 12 13 (fontified t syntax-table nil face font-lock-function-name-face) 13 18 (fontified t) 18 20 (fontified t face font-lock-keyword-face) 20 52 (fontified t) 52 58 (fontified t face font-lock-builtin-face) 58 59 (fontified t) 59 64 (fontified t face font-lock-constant-face) 64 65 (fontified t syntax-table nil) 65 83 (fontified t) 83 84 (fontified t syntax-table nil) 84 89 (fontified t) 89 92 (fontified t face font-lock-keyword-face) 92 93 (fontified t syntax-table nil face font-lock-keyword-face) 93 100 (fontified t) 100 105 (fontified t face font-lock-builtin-face) 105 110 (fontified t) 110 116 (fontified t face font-lock-constant-face) 116 120 (fontified t) 120 153 (fontified t face font-lock-string-face) 153 154 (fontified t syntax-table nil face font-lock-string-face) 154 161 (fontified t) 161 167 (fontified t face font-lock-builtin-face) 167 168 (fontified t) 168 172 (fontified t face font-lock-constant-face) 172 173 (fontified t syntax-table nil face font-lock-constant-face) 173 178 (fontified t) 178 180 (fontified t face font-lock-keyword-face) 180 181 (fontified t syntax-table nil face font-lock-keyword-face) 181 184 (fontified t) 184 186 (fontified t face font-lock-keyword-face) 186 187 (fontified t syntax-table nil face font-lock-keyword-face) 187 191 (fontified t) 191 194 (fontified t face font-lock-keyword-face) 194 195 (fontified t) 195 201 (fontified t face font-lock-function-name-face) 201 202 (fontified t syntax-table nil face font-lock-function-name-face) 202 226 (fontified t) 226 227 (fontified t syntax-table nil) 227 237 (fontified t) 237 238 (fontified t syntax-table nil) 238 243 (fontified t) 243 254 (fontified t face font-lock-builtin-face) 254 262 (fontified t) 262 263 (fontified t syntax-table nil) 263 264 (fontified t) 264 266 (fontified t) 266 268 (fontified t face font-lock-keyword-face) 268 269 (fontified t syntax-table nil face font-lock-keyword-face) 269 273 (fontified t) 273 276 (fontified t face font-lock-keyword-face) 276 277 (fontified t) 277 284 (fontified t face font-lock-function-name-face) 284 285 (fontified t syntax-table nil face font-lock-function-name-face) 285 290 (fontified t) 290 292 (fontified t face font-lock-keyword-face) 292 293 (fontified t) 293 298 (fontified t face font-lock-variable-name-face) 298 301 (fontified t) 301 305 (fontified t face font-lock-type-face) 305 333 (fontified t) 333 339 (fontified t face font-lock-builtin-face) 339 340 (fontified t) 340 343 (fontified t face font-lock-constant-face) 343 344 (fontified t) 344 345 (fontified t syntax-table nil) 345 352 (fontified t) 352 358 (fontified t face font-lock-variable-name-face) 358 361 (fontified t) 361 367 (fontified t face font-lock-builtin-face) 367 368 (fontified t) 368 371 (fontified t face font-lock-constant-face) 371 372 (fontified t syntax-table nil) 372 377 (fontified t) 377 380 (fontified t face font-lock-keyword-face) 380 381 (fontified t syntax-table nil face font-lock-keyword-face) 381 404 (fontified t) 404 405 (fontified t syntax-table nil) 405 410 (fontified t) 410 412 (fontified t face font-lock-keyword-face) 412 413 (fontified t syntax-table nil face font-lock-keyword-face) 413 414 (fontified t) 414 416 (fontified t) 416 418 (fontified t face font-lock-keyword-face) 418 419 (fontified t syntax-table nil face font-lock-keyword-face) 419 423 (fontified t) 423 426 (fontified t face font-lock-keyword-face) 426 427 (fontified t) 427 433 (fontified t face font-lock-function-name-face) 433 434 (fontified t syntax-table nil face font-lock-function-name-face) 434 435 (fontified t) 435 439 (fontified t) 439 445 (fontified t face font-lock-variable-name-face) 445 448 (fontified t) 448 454 (fontified t face font-lock-builtin-face) 454 455 (fontified t) 455 460 (fontified t face font-lock-constant-face) 460 469 (fontified t) 469 475 (fontified t face font-lock-constant-face) 475 476 (fontified t syntax-table nil) 476 481 (fontified t) 481 483 (fontified t face font-lock-keyword-face) 483 484 (fontified t) 484 489 (fontified t face font-lock-variable-name-face) 489 492 (fontified t) 492 496 (fontified t face font-lock-type-face) 496 524 (fontified t) 524 530 (fontified t face font-lock-variable-name-face) 530 531 (fontified t syntax-table nil) 531 538 (fontified t) 538 540 (fontified t face font-lock-keyword-face) 540 541 (fontified t) 541 546 (fontified t face font-lock-variable-name-face) 546 565 (fontified t) 565 571 (fontified t face font-lock-builtin-face) 571 572 (fontified t) 572 577 (fontified t face font-lock-constant-face) 577 578 (fontified t syntax-table nil) 578 587 (fontified t) 587 592 (fontified t face font-lock-variable-name-face) 592 601 (fontified t) 601 602 (fontified t syntax-table nil) 602 622 (fontified t) 622 627 (fontified t face font-lock-variable-name-face) 627 629 (fontified t) 629 632 (fontified t face font-lock-variable-name-face) 632 633 (fontified t syntax-table nil face font-lock-variable-name-face) 633 642 (fontified t) 642 653 (fontified t face font-lock-builtin-face) 653 673 (fontified t) 673 702 (fontified t face font-lock-string-face) 702 703 (fontified t syntax-table nil face font-lock-string-face) 703 710 (fontified t) 710 713 (fontified t face font-lock-keyword-face) 713 714 (fontified t syntax-table nil face font-lock-keyword-face) 714 723 (fontified t) 723 728 (fontified t face font-lock-builtin-face) 728 733 (fontified t) 733 739 (fontified t face font-lock-constant-face) 739 743 (fontified t) 743 772 (fontified t face font-lock-string-face) 772 773 (fontified t syntax-table nil face font-lock-string-face) 773 782 (fontified t) 782 788 (fontified t face font-lock-builtin-face) 788 789 (fontified t) 789 797 (fontified t face font-lock-constant-face) 797 798 (fontified t syntax-table nil face font-lock-constant-face) 798 805 (fontified t) 805 807 (fontified t face font-lock-keyword-face) 807 808 (fontified t syntax-table nil face font-lock-keyword-face) 808 813 (fontified t) 813 816 (fontified t face font-lock-keyword-face) 816 817 (fontified t syntax-table nil face font-lock-keyword-face) 817 840 (fontified t) 840 841 (fontified t syntax-table nil) 841 846 (fontified t) 846 848 (fontified t face font-lock-keyword-face) 848 849 (fontified t syntax-table nil face font-lock-keyword-face) 849 852 (fontified t) 852 854 (fontified t face font-lock-keyword-face) 854 855 (fontified t syntax-table nil face font-lock-keyword-face) 855 856 (fontified t)) . -157) (t 21290 15963 0 0) ((marker . 1) . -477) nil (#("  def show
    lack = 5 - (user.categories.size + 2) % 5
    @lack = (lack == 5) ? 0 : lack
  end

" 0 2 (fontified t) 2 5 (fontified t face font-lock-keyword-face) 5 6 (fontified t) 6 9 (fontified t face font-lock-function-name-face) 9 10 (fontified t syntax-table nil face font-lock-function-name-face) 10 55 (fontified t) 55 56 (fontified t syntax-table nil) 56 61 (fontified t) 61 66 (fontified t face font-lock-variable-name-face) 66 90 (fontified t) 90 91 (fontified t syntax-table nil) 91 94 (fontified t) 94 96 (fontified t face font-lock-keyword-face) 96 97 (fontified t syntax-table nil face font-lock-keyword-face) 97 99 (fontified t)) . -70) (t 21290 15855 0 0)))
