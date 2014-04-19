
((digest . "3961ad2bf07b7b8b300734a869eb96d5") (undo-list (#("s" 0 1 (fontified t syntax-table nil)) . -2511) ((marker . 2511) . -1) ((marker . 2511) . -1) nil (#("e" 0 1 (fontified t syntax-table nil)) . -2512) ((marker . 2511) . -1) ((marker . 2511) . -1) nil (2511 . 2513) (t 21325 26034 0 0) nil (#("
" 0 1 (fontified t)) . -2511) (t 21325 26033 0 0) ((marker . 2511) . -1) ((marker . 2511) . -1) ((marker . 2511) . -1) ((marker . 2511) . -1) nil (#("  # 過去の指定期間に出戻りユーザーが存在するか否か
  def has_visited?(user_identifier: user_identifier, target_date: target_date, i: i)
    RawLog.where(service_id: self.id, user_identifier: user_identifier, created_at: (target_date - RetentionReport.send(\"limit#{i + 1}\") - 1).beginning_of_day..(target_date - RetentionReport.send(\"limit#{i}\") - 1).end_of_day)#.present?
    # この判定はraw_logs以外を使いたい。
    # 恐らくservice_usersあたりだけど、
    # service_usersレコード生成との兼ね合いがあるので、
    # 今回はこちらで
  end
" 0 1 (fontified t) 1 2 (fontified t) 2 3 (fontified t face font-lock-comment-delimiter-face) 3 4 (fontified t face font-lock-comment-delimiter-face) 4 7 (fontified t face font-lock-comment-face) 7 8 (fontified t face font-lock-comment-face) 8 9 (fontified t face font-lock-comment-face) 9 10 (fontified t face font-lock-comment-face) 10 11 (fontified t face font-lock-comment-face) 11 12 (fontified t face font-lock-comment-face) 12 13 (fontified t face font-lock-comment-face) 13 14 (fontified t face font-lock-comment-face) 14 15 (fontified t face font-lock-comment-face) 15 16 (fontified t face font-lock-comment-face) 16 17 (fontified t face font-lock-comment-face) 17 18 (fontified t face font-lock-comment-face) 18 19 (fontified t face font-lock-comment-face) 19 20 (fontified t face font-lock-comment-face) 20 21 (fontified t face font-lock-comment-face) 21 22 (fontified t face font-lock-comment-face) 22 23 (fontified t face font-lock-comment-face) 23 24 (fontified t face font-lock-comment-face) 24 25 (fontified t face font-lock-comment-face) 25 26 (fontified t face font-lock-comment-face) 26 27 (fontified t syntax-table nil face font-lock-comment-face) 27 28 (fontified t face font-lock-comment-face) 28 29 (fontified t) 29 30 (fontified t) 30 31 (fontified t face font-lock-keyword-face) 31 32 (fontified t face font-lock-keyword-face) 32 33 (fontified t face font-lock-keyword-face) 33 34 (fontified t) 34 37 (fontified t face font-lock-function-name-face) 37 45 (fontified t face font-lock-function-name-face) 45 46 (fontified t face font-lock-function-name-face) 46 47 (fontified t) 47 61 (fontified t) 61 62 (rear-nonsticky t fontified t) 62 64 (fontified t) 64 78 (fontified t) 78 79 (rear-nonsticky t fontified t) 79 81 (fontified t) 81 91 (fontified t) 91 92 (rear-nonsticky t fontified t) 92 93 (fontified t) 93 94 (fontified t) 94 104 (fontified t) 104 105 (rear-nonsticky t fontified t) 105 106 (fontified t) 106 108 (fontified t) 108 110 (fontified t) 110 111 (rear-nonsticky t fontified t) 111 112 (fontified t syntax-table nil) 112 113 (fontified t) 113 116 (fontified t) 116 117 (fontified t) 117 118 (fontified t face font-lock-type-face) 118 119 (fontified t face font-lock-type-face) 119 120 (fontified t face font-lock-type-face) 120 121 (fontified t face font-lock-type-face) 121 122 (fontified t face font-lock-type-face) 122 123 (fontified t face font-lock-type-face) 123 124 (fontified t) 124 129 (fontified t) 129 142 (fontified t) 142 143 (fontified t face font-lock-variable-name-face) 143 144 (fontified t face font-lock-variable-name-face) 144 145 (fontified t face font-lock-variable-name-face) 145 146 (fontified t face font-lock-variable-name-face) 146 147 (fontified t) 147 148 (fontified t) 148 149 (fontified t) 149 152 (fontified t) 152 153 (fontified t) 153 154 (fontified t) 154 155 (fontified t) 155 156 (fontified t) 156 157 (fontified t) 157 158 (fontified t) 158 159 (fontified t) 159 160 (fontified t) 160 161 (fontified t) 161 162 (fontified t) 162 163 (fontified t) 163 164 (fontified t) 164 165 (fontified t) 165 166 (fontified t) 166 167 (fontified t) 167 168 (fontified t) 168 183 (fontified t) 183 197 (fontified t) 197 198 (fontified t) 198 212 (fontified t) 212 227 (fontified t face font-lock-type-face) 227 233 (fontified t) 233 239 (fontified t face font-lock-string-face) 239 240 (fontified t syntax-table (1) face font-lock-variable-name-face) 240 247 (fontified t face font-lock-variable-name-face) 247 248 (fontified t face font-lock-string-face) 248 288 (fontified t) 288 303 (fontified t face font-lock-type-face) 303 309 (fontified t) 309 315 (fontified t face font-lock-string-face) 315 316 (fontified t syntax-table (1) face font-lock-variable-name-face) 316 319 (fontified t face font-lock-variable-name-face) 319 320 (fontified t face font-lock-string-face) 320 336 (fontified t) 336 337 (rear-nonsticky t fontified t) 337 338 (fontified t) 338 339 (fontified t face font-lock-comment-delimiter-face) 339 347 (fontified t face font-lock-comment-face) 347 348 (fontified t syntax-table nil face font-lock-comment-face) 348 349 (fontified t face font-lock-comment-face) 349 353 (fontified t) 353 354 (fontified t face font-lock-comment-delimiter-face) 354 355 (fontified t face font-lock-comment-delimiter-face) 355 375 (fontified t face font-lock-comment-face) 375 376 (fontified t syntax-table nil face font-lock-comment-face) 376 377 (fontified t face font-lock-comment-face) 377 381 (fontified t) 381 383 (fontified t face font-lock-comment-delimiter-face) 383 405 (fontified t face font-lock-comment-face) 405 406 (fontified t syntax-table nil face font-lock-comment-face) 406 407 (fontified t face font-lock-comment-face) 407 411 (fontified t) 411 413 (fontified t face font-lock-comment-delimiter-face) 413 443 (fontified t face font-lock-comment-face) 443 444 (fontified t syntax-table nil face font-lock-comment-face) 444 445 (fontified t face font-lock-comment-face) 445 449 (fontified t) 449 451 (fontified t face font-lock-comment-delimiter-face) 451 457 (fontified t face font-lock-comment-face) 457 458 (rear-nonsticky t fontified t syntax-table nil face font-lock-comment-face) 458 459 (fontified t face font-lock-comment-face) 459 461 (fontified t) 461 463 (fontified t face font-lock-keyword-face) 463 464 (fontified t syntax-table nil face font-lock-keyword-face) 464 465 (fontified t)) . -2513) (t 21325 26029 0 0) ((marker . 2512) . -162) ((marker . 2512) . -162) ((marker . 2512) . -47) ((marker . 2512) . -167) ((marker . 2512) . -168) ((marker . 2512) . -127) ((marker . 2512) . -127) ((marker . 2512) . -168) ((marker . 2512) . -47) ((marker . 2512) . -47) ((marker . 2512) . -47) ((marker . 2511) . -465) ((marker . 2477) . -28) ((marker . 2477) . -28) ((marker . 2464) . -113) ((marker . 2464) . -113) ((marker . 2439) . -349) ((marker . 2439) . -349) ((marker . 2424) . -377) ((marker . 2424) . -377) ((marker . 2380) . -407) ((marker . 2380) . -407) ((marker . 2379) . -445) ((marker . 2379) . -445) ((marker . 2371) . -459) ((marker . 2371) . -459) ((marker . 2343) . -465) ((marker . 2343) . -465) ((marker . 2512) . -181) nil undo-tree-canary))
