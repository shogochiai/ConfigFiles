
((digest . "60b1cbe3402a819ba7cb603fed6b48cc") (undo-list (#("." 0 1 (fontified t)) . -1503) (t 21040 12980 0 0) nil (1512 . 1513) (t 21040 12979 0 0) nil (nil rear-nonsticky nil 1511 . 1512) (nil fontified nil 1503 . 1512) (1503 . 1512) (t 21040 12977 0 0) nil (#(".unscoped" 0 9 (fontified t)) . -1493) (t 21040 12933 0 0) ((marker) . -9) nil (1502 . 1503) (t 21040 12932 0 0) (1501 . 1502) (t 21040 12931 0 0) (1496 . 1501) (t 21040 12929 0 0) (1494 . 1496) (t 21039 59719 0 0) nil (#("
" 0 1 (fontified t)) . -1440) (t 21039 59718 0 0) nil (#("
  def select
    @article = current_user.articles.build
  end" 0 3 (fontified t) 3 6 (face font-lock-keyword-face fontified t) 6 7 (fontified t) 7 12 (face font-lock-function-name-face fontified t) 12 13 (face font-lock-function-name-face syntax-table nil fontified t) 13 18 (fontified t) 18 26 (face font-lock-variable-name-face fontified t) 26 55 (fontified t) 55 56 (syntax-table nil fontified t) 56 59 (fontified t) 59 61 (face font-lock-keyword-face fontified t) 61 62 (face font-lock-keyword-face syntax-table nil fontified t)) . -1440) (t 21039 59491 0 0) nil (#("@" 0 1 (face font-lock-variable-name-face fontified t)) . -1372) (t 21039 59476 0 0) nil (1372 . 1373) (t 21039 59430 0 0) nil (1427 . 1432) (t 21039 59429 0 0) (1422 . 1427) (t 21039 59427 0 0) (1421 . 1422) (t 21039 59427 0 0) nil (#("y" 0 1 (fontified t)) . -1421) (t 21039 59426 0 0) nil (1420 . 1422) nil (1420 . 1421) nil (1419 . 1420) (t 21039 59335 0 0) nil (1195 . 1196) (t 21039 59330 0 0) nil (1159 . 1160) (t 21039 59309 0 0) nil (#(" " 0 1 (fontified t)) . -1159) nil (#(" " 0 1 (fontified t)) . -1160) nil (#(" " 0 1 (fontified t)) . -1161) nil (#(" " 0 1 (fontified t)) . -1162) nil (#("
" 0 1 (rear-nonsticky t fontified t)) . -1190) (t 21039 59304 0 0) nil (nil rear-nonsticky nil 1190 . 1191) (nil fontified nil 1190 . 1191) (nil fontified nil 1189 . 1190) (nil fontified nil 1159 . 1189) (1159 . 1191) (t 21039 59303 0 0) nil (1154 . 1159) (t 21039 59298 0 0) nil (#("    article.category = category
" 0 30 (fontified t) 30 31 (syntax-table nil fontified t) 31 32 (fontified t)) . -906) (t 21039 59268 0 0) nil (#(" " 0 1 (fontified t)) . -942) (t 21039 59257 0 0) nil (nil rear-nonsticky nil 1186 . 1187) (nil fontified nil 1186 . 1187) (nil fontified nil 1184 . 1186) (nil fontified nil 1179 . 1184) (nil fontified nil 1178 . 1179) (nil fontified nil 1170 . 1178) (nil fontified nil 1169 . 1170) (nil fontified nil 1163 . 1169) (nil fontified nil 1126 . 1163) (nil fontified nil 1118 . 1126) (nil fontified nil 1111 . 1118) (nil fontified nil 1110 . 1111) (nil fontified nil 1097 . 1110) (nil fontified nil 1088 . 1097) (nil fontified nil 1083 . 1088) (nil fontified nil 1079 . 1083) (nil fontified nil 1078 . 1079) (nil fontified nil 1077 . 1078) (nil fontified nil 1069 . 1077) (nil fontified nil 1068 . 1069) (nil fontified nil 1062 . 1068) (nil fontified nil 1025 . 1062) (nil fontified nil 1017 . 1025) (nil fontified nil 1010 . 1017) (nil fontified nil 1009 . 1010) (nil fontified nil 996 . 1009) (nil fontified nil 987 . 996) (nil fontified nil 985 . 987) (nil fontified nil 980 . 985) (nil fontified nil 979 . 980) (nil fontified nil 974 . 979) (nil fontified nil 965 . 974) (nil fontified nil 957 . 965) (nil fontified nil 956 . 957) (nil fontified nil 950 . 956) (nil fontified nil 942 . 950) (942 . 1187) (t 21039 59254 0 0) nil (937 . 942) (t 21039 59223 0 0) nil (1327 . 1328) (nil rear-nonsticky nil 1326 . 1327) (nil fontified nil 1 . 1327) (1 . 1327) nil (#("class User::ArticlesController < ApplicationController
  before_filter :require_login

  def new
    if params[:type] == 'photo_article'
      @article = current_user.photo_articles.build
    elsif params[:type]  == 'video_article'
      @article = current_user.video_articles.build
    end
  end

  def edit
    article
  end

  def create
    category = Category.find params[:article].delete(:category_id)
    photo = Article.find params[:article].delete(:photo)
    @article = current_user.articles.build params[:article]
    @article.category = category
    @article.photo = photo
    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    category = Category.find params[:article].delete(:category_id)
  <div class=\"timeline_container\">
    <div class=\"timeline\">
    </div>
  </div>
    article.category = category
    if article.update_attributes params[:article]
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    article.destroy
    redirect_to user_pages_path
  end
  
  def select
    @article = current_user.articles.build
  end

  private

  def article
    @article = current_user.articles.find params[:id]
  end
end
" 0 5 (face font-lock-keyword-face fontified t) 5 6 (fontified t) 6 30 (face font-lock-type-face fontified t) 30 33 (fontified t) 33 53 (face font-lock-type-face fontified t) 53 54 (face font-lock-type-face syntax-table nil fontified t) 54 57 (fontified t) 57 70 (face font-lock-builtin-face fontified t) 70 71 (fontified t) 71 84 (face font-lock-constant-face fontified t) 84 85 (face font-lock-constant-face syntax-table nil fontified t) 85 89 (fontified t) 89 92 (face font-lock-keyword-face fontified t) 92 93 (fontified t) 93 95 (face font-lock-function-name-face fontified t) 95 96 (face font-lock-function-name-face syntax-table nil fontified t) 96 101 (fontified t) 101 103 (face font-lock-keyword-face fontified t) 103 104 (fontified t) 104 110 (face font-lock-builtin-face fontified t) 110 111 (fontified t) 111 116 (face font-lock-constant-face fontified t) 116 121 (fontified t) 121 135 (face font-lock-string-face fontified t) 135 136 (face font-lock-string-face syntax-table nil fontified t) 136 143 (fontified t) 143 151 (face font-lock-variable-name-face fontified t) 151 186 (fontified t) 186 187 (syntax-table nil fontified t) 187 192 (fontified t) 192 197 (face font-lock-keyword-face fontified t) 197 198 (fontified t) 198 204 (face font-lock-builtin-face fontified t) 204 205 (fontified t) 205 210 (face font-lock-constant-face fontified t) 210 216 (fontified t) 216 230 (face font-lock-string-face fontified t) 230 231 (face font-lock-string-face syntax-table nil fontified t) 231 238 (fontified t) 238 246 (face font-lock-variable-name-face fontified t) 246 281 (fontified t) 281 282 (syntax-table nil fontified t) 282 287 (fontified t) 287 289 (face font-lock-keyword-face fontified t) 289 290 (face font-lock-keyword-face syntax-table nil fontified t) 290 293 (fontified t) 293 295 (face font-lock-keyword-face fontified t) 295 296 (face font-lock-keyword-face syntax-table nil fontified t) 296 298 (fontified t) 298 300 (fontified t) 300 303 (face font-lock-keyword-face fontified t) 303 304 (fontified t) 304 307 (face font-lock-function-name-face fontified t) 307 308 (face font-lock-function-name-face syntax-table nil fontified t) 308 309 (fontified t) 309 319 (fontified t) 319 320 (syntax-table nil fontified t) 320 321 (fontified t) 321 323 (fontified t) 323 325 (face font-lock-keyword-face fontified t) 325 326 (face font-lock-keyword-face syntax-table nil fontified t) 326 327 (fontified t) 327 328 (fontified t) 328 330 (fontified t) 330 333 (face font-lock-keyword-face fontified t) 333 334 (fontified t) 334 339 (face font-lock-function-name-face fontified t) 339 340 (face font-lock-function-name-face syntax-table nil fontified t) 340 341 (fontified t) 341 356 (fontified t) 356 361 (face font-lock-type-face fontified t) 361 362 (face font-lock-type-face fontified t) 362 363 (face font-lock-type-face fontified t) 363 364 (face font-lock-type-face fontified t) 364 370 (fontified t) 370 376 (face font-lock-builtin-face fontified t) 376 377 (fontified t) 377 378 (face font-lock-constant-face fontified t) 378 385 (face font-lock-constant-face fontified t) 385 394 (fontified t) 394 406 (face font-lock-constant-face fontified t) 406 407 (syntax-table nil fontified t) 407 408 (fontified t) 408 411 (fontified t) 411 412 (fontified t) 412 414 (fontified t) 414 416 (fontified t) 416 417 (fontified t) 417 418 (fontified t) 418 419 (fontified t) 419 420 (fontified t) 420 421 (face font-lock-type-face fontified t) 421 422 (face font-lock-type-face fontified t) 422 426 (face font-lock-type-face fontified t) 426 427 (face font-lock-type-face fontified t) 427 433 (fontified t) 433 439 (face font-lock-builtin-face fontified t) 439 440 (fontified t) 440 441 (face font-lock-constant-face fontified t) 441 448 (face font-lock-constant-face fontified t) 448 457 (fontified t) 457 458 (face font-lock-constant-face fontified t) 458 462 (face font-lock-constant-face fontified t) 462 463 (face font-lock-constant-face fontified t) 463 464 (syntax-table nil rear-nonsticky t fontified t) 464 465 (fontified t) 465 469 (fontified t) 469 477 (face font-lock-variable-name-face fontified t) 477 508 (fontified t) 508 514 (face font-lock-builtin-face fontified t) 514 515 (fontified t) 515 516 (face font-lock-constant-face fontified t) 516 523 (face font-lock-constant-face fontified t) 523 524 (syntax-table nil fontified t) 524 525 (fontified t) 525 529 (fontified t) 529 537 (face font-lock-variable-name-face fontified t) 537 556 (fontified t) 556 557 (syntax-table nil fontified t) 557 558 (fontified t) 558 561 (fontified t) 561 562 (fontified t) 562 570 (face font-lock-variable-name-face fontified t) 570 571 (fontified t) 571 576 (fontified t) 576 578 (fontified t) 578 579 (fontified t) 579 582 (fontified t) 582 583 (fontified t) 583 584 (syntax-table nil fontified t) 584 585 (fontified t) 585 589 (fontified t) 589 591 (face font-lock-keyword-face fontified t) 591 592 (fontified t) 592 600 (face font-lock-variable-name-face fontified t) 600 604 (fontified t) 604 605 (syntax-table nil fontified t) 605 606 (fontified t) 606 612 (fontified t) 612 623 (face font-lock-builtin-face fontified t) 623 624 (fontified t) 624 632 (face font-lock-variable-name-face fontified t) 632 642 (fontified t) 642 676 (face font-lock-string-face fontified t) 676 677 (face font-lock-string-face syntax-table nil fontified t) 677 682 (fontified t) 682 685 (face font-lock-keyword-face fontified t) 685 686 (face font-lock-keyword-face syntax-table nil fontified t) 686 693 (fontified t) 693 699 (face font-lock-builtin-face fontified t) 699 700 (fontified t) 700 703 (face font-lock-constant-face fontified t) 703 704 (face font-lock-constant-face syntax-table nil fontified t) 704 709 (fontified t) 709 711 (face font-lock-keyword-face fontified t) 711 712 (face font-lock-keyword-face syntax-table nil fontified t) 712 715 (fontified t) 715 717 (face font-lock-keyword-face fontified t) 717 718 (face font-lock-keyword-face syntax-table nil fontified t) 718 722 (fontified t) 722 725 (face font-lock-keyword-face fontified t) 725 726 (fontified t) 726 731 (face font-lock-function-name-face fontified t) 731 732 (face font-lock-function-name-face syntax-table nil fontified t) 732 748 (fontified t) 748 756 (face font-lock-type-face fontified t) 756 762 (fontified t) 762 768 (face font-lock-builtin-face fontified t) 768 769 (fontified t) 769 777 (face font-lock-constant-face fontified t) 777 786 (fontified t) 786 798 (face font-lock-constant-face fontified t) 798 799 (syntax-table nil fontified t) 799 800 (fontified t) 800 803 (fontified t) 803 806 (fontified t) 806 807 (fontified t) 807 812 (face font-lock-keyword-face fontified t) 812 813 (fontified t) 813 833 (face font-lock-string-face fontified t) 833 834 (syntax-table nil fontified t) 834 835 (fontified t) 835 840 (fontified t) 840 843 (fontified t) 843 844 (fontified t) 844 849 (face font-lock-keyword-face fontified t) 849 850 (fontified t) 850 860 (face font-lock-string-face fontified t) 860 861 (syntax-table nil fontified t) 861 862 (fontified t) 862 868 (fontified t) 868 871 (fontified t) 871 872 (syntax-table nil fontified t) 872 873 (fontified t) 873 877 (fontified t) 877 880 (fontified t) 880 881 (syntax-table nil fontified t) 881 882 (fontified t rear-nonsticky t) 882 912 (fontified t) 912 913 (syntax-table nil fontified t) 913 914 (fontified t) 914 918 (fontified t) 918 920 (face font-lock-keyword-face fontified t) 920 947 (fontified t) 947 953 (face font-lock-builtin-face fontified t) 953 954 (fontified t) 954 962 (face font-lock-constant-face fontified t) 962 963 (syntax-table nil fontified t) 963 964 (fontified t) 964 970 (fontified t) 970 981 (face font-lock-builtin-face fontified t) 981 982 (fontified t) 982 990 (face font-lock-variable-name-face fontified t) 990 1000 (fontified t) 1000 1034 (face font-lock-string-face fontified t) 1034 1035 (face font-lock-string-face syntax-table nil fontified t) 1035 1036 (fontified t) 1036 1040 (fontified t) 1040 1043 (face font-lock-keyword-face fontified t) 1043 1044 (face font-lock-keyword-face syntax-table nil fontified t) 1044 1051 (fontified t) 1051 1057 (face font-lock-builtin-face fontified t) 1057 1058 (fontified t) 1058 1062 (face font-lock-constant-face fontified t) 1062 1063 (face font-lock-constant-face syntax-table nil fontified t) 1063 1068 (fontified t) 1068 1070 (face font-lock-keyword-face fontified t) 1070 1071 (face font-lock-keyword-face syntax-table nil fontified t) 1071 1074 (fontified t) 1074 1076 (face font-lock-keyword-face fontified t) 1076 1077 (face font-lock-keyword-face syntax-table nil fontified t) 1077 1081 (fontified t) 1081 1084 (face font-lock-keyword-face fontified t) 1084 1085 (fontified t) 1085 1091 (face font-lock-function-name-face fontified t) 1091 1092 (face font-lock-function-name-face syntax-table nil fontified t) 1092 1111 (fontified t) 1111 1112 (syntax-table nil fontified t) 1112 1113 (fontified t) 1113 1117 (fontified t) 1117 1128 (face font-lock-builtin-face fontified t) 1128 1143 (fontified t) 1143 1144 (syntax-table nil fontified t) 1144 1145 (fontified t) 1145 1147 (fontified t) 1147 1149 (face font-lock-keyword-face fontified t) 1149 1150 (face font-lock-keyword-face syntax-table nil fontified t) 1150 1151 (fontified t) 1151 1152 (face (my-face-spc-at-eol) fontified t) 1152 1153 (face (my-face-spc-at-eol) syntax-table nil fontified t) 1153 1154 (fontified t) 1154 1155 (fontified t) 1155 1156 (fontified t) 1156 1157 (face font-lock-keyword-face fontified t) 1157 1158 (face font-lock-keyword-face fontified t) 1158 1159 (face font-lock-keyword-face fontified t) 1159 1160 (fontified t) 1160 1161 (face font-lock-function-name-face fontified t) 1161 1162 (face font-lock-function-name-face fontified t) 1162 1163 (face font-lock-function-name-face fontified t) 1163 1164 (face font-lock-function-name-face fontified t) 1164 1165 (face font-lock-function-name-face fontified t) 1165 1166 (face font-lock-function-name-face syntax-table nil fontified t) 1166 1167 (fontified t) 1167 1168 (fontified t) 1168 1169 (fontified t) 1169 1170 (fontified t) 1170 1171 (fontified t) 1171 1179 (face font-lock-variable-name-face fontified t) 1179 1195 (fontified t) 1195 1208 (fontified t) 1208 1209 (syntax-table nil fontified t rear-nonsticky t) 1209 1210 (fontified t) 1210 1212 (fontified t) 1212 1214 (face font-lock-keyword-face fontified t) 1214 1215 (face font-lock-keyword-face syntax-table nil fontified t) 1215 1216 (fontified t) 1216 1217 (fontified t) 1217 1225 (fontified t) 1225 1226 (syntax-table nil fontified t) 1226 1230 (fontified t) 1230 1233 (face font-lock-keyword-face fontified t) 1233 1234 (fontified t) 1234 1240 (face font-lock-function-name-face fontified t) 1240 1241 (face font-lock-function-name-face syntax-table nil fontified t) 1241 1242 (fontified t) 1242 1246 (fontified t) 1246 1254 (face font-lock-variable-name-face fontified t) 1254 1284 (fontified t) 1284 1290 (face font-lock-builtin-face fontified t) 1290 1291 (fontified t) 1291 1294 (face font-lock-constant-face fontified t) 1294 1295 (syntax-table nil fontified t) 1295 1296 (fontified t) 1296 1298 (fontified t) 1298 1300 (face font-lock-keyword-face fontified t) 1300 1301 (face font-lock-keyword-face syntax-table nil fontified t) 1301 1302 (fontified t) 1302 1304 (face font-lock-keyword-face fontified t) 1304 1305 (face font-lock-keyword-face syntax-table nil fontified t) 1305 1306 (fontified t)) . 1) (t 21039 59135 0 0) nil undo-tree-canary))
