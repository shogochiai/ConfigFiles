
((digest . "b83aa03e8a6d587c11254157c5f463f0") (undo-list (#("c" 0 1 (fontified t)) . -200) nil (#("u" 0 1 (fontified t)) . -201) nil (#("r" 0 1 (fontified t)) . -202) nil (#("r" 0 1 (fontified t)) . -203) nil (#("e" 0 1 (fontified t)) . -204) nil (#("n" 0 1 (fontified t)) . -205) nil (#("t" 0 1 (fontified t)) . -206) nil (#("_" 0 1 (fontified t)) . -207) (t 21289 12115 0 0) nil (nil rear-nonsticky nil 52 . 53) (nil fontified nil 42 . 53) (42 . 53) (t 21289 12077 0 0) nil (152 . 157) (t 21289 12075 0 0) nil (151 . 154) (t 21289 12074 0 0) nil (151 . 152) nil (150 . 151) (t 21289 12073 0 0) nil (144 . 150) (t 21289 12072 0 0) nil (143 . 144) nil (139 . 143) (t 21289 12070 0 0) (134 . 139) (t 21289 12067 0 0) nil (133 . 134) nil (132 . 133) nil (131 . 132) nil (126 . 131) (t 21289 12064 0 0) nil (121 . 126) (t 21289 12063 0 0) nil (117 . 121) nil (#("i" 0 1 (fontified t syntax-table nil face font-lock-function-name-face)) . -117) nil (#("s" 0 1 (fontified nil face font-lock-function-name-face)) . -118) nil (117 . 119) (t 21289 12061 0 0) nil (118 . 120) (116 . 121) nil (113 . 116) nil (107 . 113) nil (#("  def goto_new
    flash.now[:alert] = '写真の追加に失敗しました'
    @age_id = age.id
    @age = current_user.ages.build
    5.times{ @age.photos.build }
    render :new
  end

" 0 1 (fontified t) 1 2 (fontified t) 2 3 (fontified t face font-lock-keyword-face) 3 4 (fontified t face font-lock-keyword-face) 4 5 (fontified t face font-lock-keyword-face) 5 6 (fontified t) 6 8 (fontified t face font-lock-function-name-face) 8 9 (fontified t face font-lock-function-name-face) 9 10 (fontified t face font-lock-function-name-face) 10 12 (fontified t face font-lock-function-name-face) 12 13 (fontified t face font-lock-function-name-face) 13 14 (fontified t syntax-table nil face font-lock-function-name-face) 14 15 (fontified t) 15 18 (fontified t) 18 19 (fontified t) 19 24 (fontified t face font-lock-builtin-face) 24 29 (fontified t) 29 35 (fontified t face font-lock-constant-face) 35 39 (fontified t) 39 42 (fontified t face font-lock-string-face) 42 52 (fontified t face font-lock-string-face) 52 53 (fontified t syntax-table nil face font-lock-string-face) 53 54 (rear-nonsticky t fontified t) 54 58 (fontified t) 58 59 (fontified t face font-lock-variable-name-face) 59 60 (fontified t face font-lock-variable-name-face) 60 61 (fontified t face font-lock-variable-name-face) 61 62 (fontified t face font-lock-variable-name-face) 62 64 (fontified t face font-lock-variable-name-face) 64 65 (fontified t face font-lock-variable-name-face) 65 66 (fontified t) 66 67 (fontified t) 67 68 (fontified t) 68 69 (fontified t) 69 70 (fontified t) 70 71 (fontified t) 71 72 (fontified t) 72 73 (fontified t) 73 74 (fontified t syntax-table nil) 74 75 (fontified t) 75 79 (fontified t) 79 83 (fontified t face font-lock-variable-name-face) 83 108 (fontified t) 108 109 (fontified t syntax-table nil) 109 110 (fontified t) 110 112 (fontified t) 112 122 (fontified t) 122 123 (fontified t) 123 127 (fontified t face font-lock-variable-name-face) 127 139 (fontified t) 139 140 (fontified t) 140 141 (fontified t) 141 142 (rear-nonsticky t fontified t syntax-table nil) 142 143 (rear-nonsticky t fontified t) 143 147 (fontified t) 147 153 (fontified t face font-lock-builtin-face) 153 154 (fontified t) 154 157 (fontified t face font-lock-constant-face) 157 158 (fontified t syntax-table nil face font-lock-constant-face) 158 159 (fontified t) 159 161 (fontified t) 161 163 (fontified t face font-lock-keyword-face) 163 164 (fontified t syntax-table nil face font-lock-keyword-face) 164 165 (fontified t) 165 166 (fontified t)) . -109) (t 21289 12056 0 0) nil (#("  def new
    @age_id = age.id
    @age = current_user.ages.build
    5.times{ @age.photos.build }
  end

  def create
    if age.update_attributes! params[:age]
      redirect_to my_ages_url params[:id]
    else goto_new end
  end

  def destroy
    @photo = age.photos.find params[:id]
    @photo.destroy
    redirect_to my_age_photos_url(@age)
  end
" 2 5 (face font-lock-keyword-face) 6 8 (face font-lock-function-name-face) 8 9 (syntax-table nil face font-lock-function-name-face) 14 15 (face font-lock-variable-name-face) 15 16 (face font-lock-variable-name-face) 16 17 (face font-lock-variable-name-face) 17 18 (face font-lock-variable-name-face) 18 20 (face font-lock-variable-name-face) 20 21 (face font-lock-variable-name-face) 29 30 (syntax-table nil) 35 39 (face font-lock-variable-name-face) 64 65 (syntax-table nil) 79 83 (face font-lock-variable-name-face) 97 98 (rear-nonsticky t syntax-table nil) 101 103 (face font-lock-keyword-face) 103 104 (syntax-table nil face font-lock-keyword-face) 106 108 (fontified t) 108 111 (fontified t face font-lock-keyword-face) 111 112 (fontified t) 112 117 (fontified t face font-lock-function-name-face) 117 118 (fontified t syntax-table nil face font-lock-function-name-face) 118 119 (fontified t) 119 123 (fontified t) 123 125 (fontified t face font-lock-keyword-face) 125 129 (fontified t) 129 130 (fontified t) 130 131 (fontified t) 131 133 (fontified t) 133 135 (fontified t) 135 149 (fontified t) 149 155 (fontified t face font-lock-builtin-face) 155 156 (fontified t) 156 160 (fontified t face font-lock-constant-face) 160 161 (rear-nonsticky t fontified t syntax-table nil) 161 162 (fontified t) 162 168 (fontified t) 168 179 (fontified t face font-lock-builtin-face) 179 191 (fontified t) 191 192 (fontified t) 192 198 (fontified t face font-lock-builtin-face) 198 199 (fontified t) 199 202 (fontified t face font-lock-constant-face) 202 203 (fontified t syntax-table nil) 203 204 (fontified t) 204 208 (fontified t) 208 211 (fontified t face font-lock-keyword-face) 211 212 (fontified t face font-lock-keyword-face) 212 213 (fontified t) 213 215 (fontified t) 215 216 (fontified t) 216 217 (fontified t) 217 219 (fontified t) 219 220 (fontified t) 220 221 (rear-nonsticky t fontified t) 221 222 (fontified t) 222 224 (fontified t face font-lock-keyword-face) 224 225 (fontified t syntax-table nil face font-lock-keyword-face) 225 226 (fontified t) 226 228 (fontified t) 228 230 (fontified t face font-lock-keyword-face) 230 231 (fontified t syntax-table nil face font-lock-keyword-face) 231 232 (fontified t) 232 233 (fontified t) 233 235 (fontified t) 235 238 (fontified t face font-lock-keyword-face) 238 239 (fontified t) 239 245 (fontified t face font-lock-function-name-face) 245 246 (fontified t syntax-table nil face font-lock-function-name-face) 246 247 (fontified t) 247 251 (fontified t) 251 252 (fontified t face font-lock-variable-name-face) 252 253 (fontified t face font-lock-variable-name-face) 253 254 (fontified t face font-lock-variable-name-face) 254 255 (fontified t face font-lock-variable-name-face) 255 256 (fontified t face font-lock-variable-name-face) 256 257 (fontified t face font-lock-variable-name-face) 257 258 (fontified t) 258 259 (fontified t) 259 260 (fontified t) 260 261 (fontified t) 261 262 (fontified t) 262 263 (fontified t) 263 264 (fontified t) 264 265 (fontified t) 265 266 (fontified t) 266 267 (fontified t) 267 268 (fontified t) 268 269 (fontified t) 269 270 (rear-nonsticky t fontified t) 270 271 (fontified t) 271 272 (fontified t) 272 273 (fontified t) 273 274 (fontified t) 274 275 (fontified t) 275 276 (fontified t) 276 277 (fontified t face font-lock-builtin-face) 277 281 (fontified t face font-lock-builtin-face) 281 282 (fontified t face font-lock-builtin-face) 282 283 (fontified t) 283 286 (fontified t face font-lock-constant-face) 286 287 (fontified t syntax-table nil) 287 288 (fontified t) 288 291 (fontified t) 291 292 (fontified t) 292 293 (fontified t face font-lock-variable-name-face) 293 294 (fontified t face font-lock-variable-name-face) 294 295 (fontified t face font-lock-variable-name-face) 295 296 (fontified t face font-lock-variable-name-face) 296 297 (fontified t face font-lock-variable-name-face) 297 298 (rear-nonsticky t fontified t face font-lock-variable-name-face) 298 299 (fontified t) 299 300 (fontified t) 300 301 (fontified t) 301 302 (fontified t) 302 303 (fontified t) 303 304 (fontified t) 304 305 (fontified t) 305 306 (fontified t syntax-table nil) 306 307 (fontified t) 307 310 (fontified t) 310 311 (fontified t) 311 312 (fontified t face font-lock-builtin-face) 312 313 (fontified t face font-lock-builtin-face) 313 314 (fontified t face font-lock-builtin-face) 314 315 (fontified t face font-lock-builtin-face) 315 316 (fontified t face font-lock-builtin-face) 316 317 (fontified t face font-lock-builtin-face) 317 318 (fontified t face font-lock-builtin-face) 318 319 (fontified t face font-lock-builtin-face) 319 320 (fontified t face font-lock-builtin-face) 320 321 (fontified t face font-lock-builtin-face) 321 322 (fontified t face font-lock-builtin-face) 322 323 (fontified t) 323 341 (fontified t) 341 345 (fontified t face font-lock-variable-name-face) 345 346 (rear-nonsticky t fontified t syntax-table nil) 346 347 (fontified t) 347 349 (fontified t) 349 351 (fontified t face font-lock-keyword-face) 351 352 (fontified t syntax-table nil face font-lock-keyword-face) 352 353 (fontified t)) . -97) (t 21289 12055 0 0) ((marker . 1) . -106) ((marker . 119) . -353) ((marker . 119) . -353) nil (#("M" 0 1 (fontified t face font-lock-type-face)) . -42) nil (#("y" 0 1 (fontified t face font-lock-type-face)) . -43) nil (#("M" 0 1 (fontified t face font-lock-type-face)) . -23) nil (#("y" 0 1 (fontified t face font-lock-type-face)) . -24) nil (#(":" 0 1 (fontified t face font-lock-type-face)) . -25) nil (#(":" 0 1 (fontified t face font-lock-type-face)) . -26) (t 21289 12045 0 0) nil (nil rear-nonsticky nil 703 . 704) (nil fontified nil 703 . 704) (nil fontified nil 702 . 703) (nil fontified nil 700 . 702) (nil fontified nil 699 . 700) (nil fontified nil 698 . 699) (nil fontified nil 696 . 698) (nil fontified nil 694 . 696) (nil fontified nil 693 . 694) (nil fontified nil 692 . 693) (nil fontified nil 685 . 692) (nil fontified nil 684 . 685) (nil fontified nil 678 . 684) (nil fontified nil 652 . 678) (nil fontified nil 648 . 652) (nil fontified nil 644 . 648) (nil fontified nil 643 . 644) (nil fontified nil 642 . 643) (nil fontified nil 640 . 642) (nil fontified nil 639 . 640) (nil fontified nil 636 . 639) (nil fontified nil 634 . 636) (nil fontified nil 633 . 634) (nil fontified nil 632 . 633) (nil fontified nil 631 . 632) (nil fontified nil 629 . 631) (nil fontified nil 627 . 629) (nil fontified nil 626 . 627) (nil fontified nil 625 . 626) (nil fontified nil 622 . 625) (nil fontified nil 621 . 622) (nil fontified nil 615 . 621) (nil fontified nil 611 . 615) (nil fontified nil 610 . 611) (nil fontified nil 609 . 610) (nil fontified nil 608 . 609) (nil fontified nil 607 . 608) (nil fontified nil 595 . 607) (nil fontified nil 591 . 595) (nil fontified nil 590 . 591) (nil fontified nil 580 . 590) (nil fontified nil 578 . 580) (nil fontified nil 577 . 578) (nil fontified nil 576 . 577) (nil fontified nil 551 . 576) (nil fontified nil 547 . 551) (nil fontified nil 543 . 547) (nil fontified nil 542 . 543) (nil fontified nil 541 . 542) (nil fontified nil 540 . 541) (nil fontified nil 539 . 540) (nil fontified nil 538 . 539) (nil fontified nil 537 . 538) (nil fontified nil 536 . 537) (nil fontified nil 535 . 536) (nil fontified nil 534 . 535) (nil fontified nil 533 . 534) (nil fontified nil 532 . 533) (nil fontified nil 530 . 532) (nil fontified nil 529 . 530) (nil fontified nil 528 . 529) (nil fontified nil 527 . 528) (nil fontified nil 526 . 527) (nil fontified nil 522 . 526) (nil fontified nil 521 . 522) (nil fontified nil 520 . 521) (nil fontified nil 510 . 520) (nil fontified nil 507 . 510) (nil fontified nil 503 . 507) (nil fontified nil 497 . 503) (nil fontified nil 492 . 497) (nil fontified nil 487 . 492) (nil fontified nil 486 . 487) (nil fontified nil 483 . 486) (nil fontified nil 482 . 483) (nil fontified nil 481 . 482) (nil fontified nil 480 . 481) (nil fontified nil 478 . 480) (nil fontified nil 477 . 478) (nil fontified nil 476 . 477) (nil fontified nil 474 . 476) (nil fontified nil 473 . 474) (nil fontified nil 472 . 473) (nil fontified nil 471 . 472) (nil fontified nil 470 . 471) (nil fontified nil 469 . 470) (nil fontified nil 468 . 469) (nil fontified nil 467 . 468) (nil fontified nil 466 . 467) (nil fontified nil 465 . 466) (nil fontified nil 457 . 465) (nil fontified nil 456 . 457) (nil fontified nil 455 . 456) (nil fontified nil 454 . 455) (nil fontified nil 452 . 454) (nil fontified nil 450 . 452) (nil fontified nil 449 . 450) (nil fontified nil 448 . 449) (nil fontified nil 444 . 448) (nil fontified nil 426 . 444) (nil fontified nil 425 . 426) (nil fontified nil 424 . 425) (nil fontified nil 423 . 424) (nil fontified nil 422 . 423) (nil fontified nil 421 . 422) (nil fontified nil 420 . 421) (nil fontified nil 419 . 420) (nil fontified nil 418 . 419) (nil fontified nil 417 . 418) (nil fontified nil 416 . 417) (nil fontified nil 415 . 416) (nil fontified nil 414 . 415) (nil fontified nil 413 . 414) (nil fontified nil 410 . 413) (nil fontified nil 409 . 410) (nil fontified nil 408 . 409) (nil fontified nil 407 . 408) (nil fontified nil 406 . 407) (nil fontified nil 405 . 406) (nil fontified nil 404 . 405) (nil fontified nil 403 . 404) (nil fontified nil 402 . 403) (nil fontified nil 401 . 402) (nil fontified nil 400 . 401) (nil fontified nil 399 . 400) (nil fontified nil 398 . 399) (nil fontified nil 397 . 398) (nil fontified nil 396 . 397) (nil fontified nil 395 . 396) (nil fontified nil 394 . 395) (nil fontified nil 391 . 394) (nil fontified nil 390 . 391) (nil fontified nil 389 . 390) (nil fontified nil 386 . 389) (nil fontified nil 385 . 386) (nil fontified nil 384 . 385) (nil fontified nil 380 . 384) (nil fontified nil 379 . 380) (nil fontified nil 378 . 379) (nil fontified nil 377 . 378) (nil fontified nil 376 . 377) (nil fontified nil 375 . 376) (nil fontified nil 374 . 375) (nil fontified nil 373 . 374) (nil fontified nil 372 . 373) (nil fontified nil 371 . 372) (nil fontified nil 370 . 371) (nil fontified nil 369 . 370) (nil fontified nil 368 . 369) (nil fontified nil 367 . 368) (nil fontified nil 366 . 367) (nil fontified nil 365 . 366) (nil fontified nil 364 . 365) (nil fontified nil 363 . 364) (nil fontified nil 362 . 363) (nil fontified nil 361 . 362) (nil fontified nil 360 . 361) (nil fontified nil 359 . 360) (nil fontified nil 358 . 359) (nil fontified nil 357 . 358) (nil fontified nil 356 . 357) (nil fontified nil 355 . 356) (nil fontified nil 354 . 355) (nil fontified nil 350 . 354) (nil fontified nil 349 . 350) (nil fontified nil 348 . 349) (nil fontified nil 342 . 348) (nil fontified nil 341 . 342) (nil fontified nil 338 . 341) (nil fontified nil 336 . 338) (nil fontified nil 335 . 336) (nil fontified nil 334 . 335) (nil fontified nil 333 . 334) (nil fontified nil 331 . 333) (nil fontified nil 329 . 331) (nil fontified nil 328 . 329) (nil fontified nil 327 . 328) (nil fontified nil 325 . 327) (nil fontified nil 324 . 325) (nil fontified nil 323 . 324) (nil fontified nil 322 . 323) (nil fontified nil 320 . 322) (nil fontified nil 319 . 320) (nil fontified nil 318 . 319) (nil fontified nil 316 . 318) (nil fontified nil 315 . 316) (nil fontified nil 314 . 315) (nil fontified nil 311 . 314) (nil fontified nil 307 . 311) (nil fontified nil 306 . 307) (nil fontified nil 305 . 306) (nil fontified nil 302 . 305) (nil fontified nil 301 . 302) (nil fontified nil 295 . 301) (nil fontified nil 294 . 295) (nil fontified nil 282 . 294) (nil fontified nil 271 . 282) (nil fontified nil 265 . 271) (nil fontified nil 264 . 265) (nil fontified nil 263 . 264) (nil fontified nil 259 . 263) (nil fontified nil 258 . 259) (nil fontified nil 252 . 258) (nil fontified nil 238 . 252) (nil fontified nil 236 . 238) (nil fontified nil 234 . 236) (nil fontified nil 233 . 234) (nil fontified nil 232 . 233) (nil fontified nil 228 . 232) (nil fontified nil 226 . 228) (nil fontified nil 222 . 226) (nil fontified nil 221 . 222) (nil fontified nil 220 . 221) (nil fontified nil 215 . 220) (nil fontified nil 214 . 215) (nil fontified nil 211 . 214) (nil fontified nil 209 . 211) (nil fontified nil 208 . 209) (nil fontified nil 207 . 208) (nil fontified nil 206 . 207) (nil fontified nil 204 . 206) (nil fontified nil 202 . 204) (nil fontified nil 201 . 202) (nil fontified nil 200 . 201) (nil fontified nil 199 . 200) (nil fontified nil 198 . 199) (nil fontified nil 186 . 198) (nil fontified nil 182 . 186) (nil fontified nil 181 . 182) (nil fontified nil 169 . 181) (nil fontified nil 168 . 169) (nil fontified nil 167 . 168) (nil fontified nil 142 . 167) (nil fontified nil 138 . 142) (nil fontified nil 134 . 138) (nil fontified nil 133 . 134) (nil fontified nil 132 . 133) (nil fontified nil 131 . 132) (nil fontified nil 130 . 131) (nil fontified nil 129 . 130) (nil fontified nil 128 . 129) (nil fontified nil 127 . 128) (nil fontified nil 126 . 127) (nil fontified nil 125 . 126) (nil fontified nil 124 . 125) (nil fontified nil 123 . 124) (nil fontified nil 121 . 123) (nil fontified nil 120 . 121) (nil fontified nil 119 . 120) (nil fontified nil 118 . 119) (nil fontified nil 117 . 118) (nil fontified nil 116 . 117) (nil fontified nil 113 . 116) (nil fontified nil 112 . 113) (nil fontified nil 111 . 112) (nil fontified nil 109 . 111) (nil fontified nil 108 . 109) (nil fontified nil 105 . 108) (nil fontified nil 103 . 105) (nil fontified nil 102 . 103) (nil fontified nil 101 . 102) (nil fontified nil 100 . 101) (nil fontified nil 98 . 100) (nil fontified nil 96 . 98) (nil fontified nil 95 . 96) (nil fontified nil 94 . 95) (nil fontified nil 93 . 94) (nil fontified nil 92 . 93) (nil fontified nil 91 . 92) (nil fontified nil 90 . 91) (nil fontified nil 89 . 90) (nil fontified nil 88 . 89) (nil fontified nil 87 . 88) (nil fontified nil 86 . 87) (nil fontified nil 85 . 86) (nil fontified nil 84 . 85) (nil fontified nil 83 . 84) (nil fontified nil 82 . 83) (nil fontified nil 81 . 82) (nil fontified nil 80 . 81) (nil fontified nil 79 . 80) (nil fontified nil 78 . 79) (nil fontified nil 77 . 78) (nil fontified nil 76 . 77) (nil fontified nil 75 . 76) (nil fontified nil 74 . 75) (nil fontified nil 71 . 74) (nil fontified nil 70 . 71) (nil fontified nil 69 . 70) (nil fontified nil 68 . 69) (nil fontified nil 67 . 68) (nil fontified nil 66 . 67) (nil fontified nil 65 . 66) (nil fontified nil 64 . 65) (nil fontified nil 63 . 64) (nil fontified nil 62 . 63) (nil fontified nil 61 . 62) (nil fontified nil 60 . 61) (nil fontified nil 59 . 60) (nil fontified nil 58 . 59) (nil fontified nil 57 . 58) (nil fontified nil 48 . 57) (nil fontified nil 46 . 48) (nil fontified nil 43 . 46) (nil fontified nil 23 . 43) (nil fontified nil 22 . 23) (nil fontified nil 17 . 22) (nil fontified nil 16 . 17) (nil fontified nil 15 . 16) (nil fontified nil 11 . 15) (nil fontified nil 3 . 11) (nil fontified nil 2 . 3) (nil fontified nil 1 . 2) (1 . 704) (t 0 0 0 -1000)))