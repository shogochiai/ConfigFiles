
((digest . "0596ce583c623720973f5bedb27ef0d8") (undo-list (231 . 232) nil (nil rear-nonsticky nil 230 . 231) (nil fontified nil 230 . 231) (nil fontified nil 229 . 230) (nil fontified nil 228 . 229) (nil fontified nil 222 . 228) (nil fontified nil 205 . 222) (205 . 231) (t 21279 48792 0 0) nil (#("      get :index
" 0 10 (fontified t) 10 15 (fontified t face font-lock-constant-face) 15 16 (fontified t syntax-table nil face font-lock-constant-face) 16 17 (fontified t)) . -224) (t 21279 48446 0 0) ((marker . 231) . -17) ((marker . 231) . -17) ((marker . 251) . -16) ((marker . 251) . -17) ((marker . 251) . -17) nil (286 . 287) (t 21279 48444 0 0) nil (nil rear-nonsticky nil 376 . 377) (nil fontified nil 376 . 377) (nil fontified nil 375 . 376) (nil fontified nil 373 . 375) (nil fontified nil 369 . 373) (nil fontified nil 368 . 369) (nil fontified nil 367 . 368) (nil fontified nil 348 . 367) (nil fontified nil 319 . 348) (nil fontified nil 318 . 319) (nil fontified nil 317 . 318) (nil fontified nil 316 . 317) (nil fontified nil 315 . 316) (nil fontified nil 293 . 315) (nil fontified nil 290 . 293) (nil fontified nil 289 . 290) (nil fontified nil 286 . 289) (286 . 377) (t 21279 48437 0 0) nil (#("
    it 'allメソッドを実行すること' do
      Video.should_receive(:all)
      get :index
    end

    it \"全てのVideoオブジェクトを@videosに格納すること\" do
      videos = [Video.new]
      Video.stub(:all).and_return(videos)
      get :index
      expect(assigns(:videos)).to eq videos
    end
" 0 8 (fontified t) 8 24 (fontified t face font-lock-string-face) 24 25 (fontified t) 25 26 (fontified t face font-lock-keyword-face) 26 27 (fontified t syntax-table nil face font-lock-keyword-face) 27 34 (fontified t) 34 39 (fontified t face font-lock-type-face) 39 55 (fontified t) 55 59 (fontified t face font-lock-constant-face) 59 60 (fontified t syntax-table nil) 60 71 (fontified t) 71 76 (fontified t face font-lock-constant-face) 76 77 (fontified t syntax-table nil face font-lock-constant-face) 77 82 (fontified t) 82 84 (fontified t face font-lock-keyword-face) 84 85 (fontified t syntax-table nil face font-lock-keyword-face) 85 94 (fontified t) 94 125 (fontified t face font-lock-string-face) 125 126 (fontified t) 126 127 (fontified t face font-lock-keyword-face) 127 128 (fontified t syntax-table nil face font-lock-keyword-face) 128 145 (fontified t) 145 150 (fontified t face font-lock-type-face) 150 154 (fontified t) 154 155 (fontified t syntax-table nil) 155 162 (fontified t) 162 167 (fontified t face font-lock-type-face) 167 173 (fontified t) 173 177 (fontified t face font-lock-constant-face) 177 196 (fontified t) 196 197 (fontified t syntax-table nil) 197 208 (fontified t) 208 213 (fontified t face font-lock-constant-face) 213 214 (fontified t syntax-table nil face font-lock-constant-face) 214 236 (fontified t) 236 243 (fontified t face font-lock-constant-face) 243 257 (fontified t) 257 258 (fontified t syntax-table nil) 258 259 (fontified t) 259 263 (fontified t) 263 265 (fontified t face font-lock-keyword-face) 265 266 (fontified t syntax-table nil face font-lock-keyword-face) 266 267 (fontified t)) . -286) (t 21271 8876 0 0) ((marker . 232) . -1) ((marker . 232) . -1) ((marker . 251) . -28) ((marker . 251) . -28) ((marker . 288) . -61) ((marker . 288) . -61) ((marker . 296) . -78) ((marker . 296) . -78) ((marker . 297) . -86) ((marker . 297) . -86) nil (948 . 949) (t 21271 8861 0 0) nil (1033 . 1034) (t 21271 5357 0 0) nil (#("    pp video
" 0 3 (fontified t) 3 4 (fontified t) 4 5 (fontified t) 5 6 (fontified t) 6 7 (fontified t) 7 8 (fontified t) 8 10 (fontified t) 10 11 (fontified t) 11 12 (syntax-table nil fontified t) 12 13 (rear-nonsticky t fontified t)) . -1021) (t 21271 5274 0 0) nil (nil rear-nonsticky nil 1033 . 1034) (nil fontified nil 1033 . 1034) (nil fontified nil 1032 . 1033) (nil fontified nil 1031 . 1032) (nil fontified nil 1029 . 1031) (nil fontified nil 1028 . 1029) (nil fontified nil 1027 . 1028) (nil fontified nil 1026 . 1027) (nil fontified nil 1025 . 1026) (nil fontified nil 1024 . 1025) (nil fontified nil 1021 . 1024) (1021 . 1034) nil (#("    pp video
" 0 3 (fontified t) 3 4 (fontified t) 4 5 (fontified t) 5 6 (fontified t) 6 7 (fontified t) 7 8 (fontified t) 8 10 (fontified t) 10 11 (fontified t) 11 12 (syntax-table nil fontified t) 12 13 (fontified t)) . -931) (t 21271 5256 0 0) nil (938 . 943) nil (937 . 938) nil (935 . 937) (t 21271 5254 0 0) nil (930 . 935) (t 21270 65131 0 0) nil (nil rear-nonsticky nil 1317 . 1318) (nil fontified nil 1317 . 1318) (nil fontified nil 1316 . 1317) (nil fontified nil 1315 . 1316) (nil fontified nil 1314 . 1315) (nil fontified nil 1313 . 1314) (nil fontified nil 1312 . 1313) (nil fontified nil 1309 . 1312) (1309 . 1318) nil (#("video_before[:title]" 0 5 (fontified t) 5 6 (fontified t) 6 7 (fontified t) 7 8 (fontified t) 8 9 (fontified t) 9 11 (fontified t) 11 12 (fontified t rear-nonsticky t) 12 13 (fontified t) 13 14 (face font-lock-constant-face fontified t) 14 19 (face font-lock-constant-face fontified t) 19 20 (syntax-table nil fontified t)) . 1309) (t 21270 65123 0 0) nil (1156 . 1162) nil (#("." 0 1 (syntax-table nil fontified t)) . -1156) (t 21270 65121 0 0) nil (1151 . 1157) nil (#("{ title: }" 0 8 (fontified t) 8 9 (fontified t) 9 10 (syntax-table nil fontified t)) . 1151) (t 21270 65115 0 0) nil (1158 . 1159) (t 21270 65113 0 0) (1153 . 1158) (t 21270 65112 0 0) nil (1152 . 1153) (t 21270 65111 0 0) nil (1151 . 1154) (t 21270 65110 0 0) nil (1150 . 1151) nil (1149 . 1150) nil (1148 . 1149) (t 21270 65103 0 0) nil (1141 . 1142) nil (#("e" 0 1 (fontified t)) . -1141) nil (1139 . 1142) nil (#("b" 0 1 (fontified t)) . -1139) nil (#("e" 0 1 (fontified t)) . -1140) nil (#("f" 0 1 (fontified t)) . -1141) nil (#("o" 0 1 (fontified t)) . -1142) nil (#("r" 0 1 (fontified t)) . -1143) nil (#("e" 0 1 (fontified t)) . -1144) (t 21270 65098 0 0) nil (1149 . 1151) (t 21270 65097 0 0) (1146 . 1149) nil (#("i" 0 1 (syntax-table nil fontified t)) . -1146) nil (#("t" 0 1 (syntax-table nil fontified t)) . -1147) nil (1145 . 1148) (t 21270 65094 0 0) (1141 . 1145) nil (#("d" 0 1 (syntax-table nil fontified t)) . -1141) (t 21270 65093 0 0) nil (1141 . 1142) (t 21270 65092 0 0) (1139 . 1141) (t 21270 65087 0 0) nil (1132 . 1139) (t 21270 65075 0 0) nil (#("_" 0 1 (fontified t)) . -1261) nil (#("a" 0 1 (fontified t)) . -1262) nil (#("f" 0 1 (fontified t)) . -1263) nil (#("t" 0 1 (fontified t)) . -1264) nil (#("e" 0 1 (fontified t)) . -1265) nil (#("r" 0 1 (fontified t rear-nonsticky t)) . -1266) (t 21270 65072 0 0) nil (#("video_after = " 0 14 (fontified t)) . -1230) (t 21270 65063 0 0) nil (1217 . 1223) (t 21270 65060 0 0) (1214 . 1217) (t 21270 65059 0 0) nil (#("video_before" 0 1 (fontified t) 1 2 (fontified t) 2 3 (fontified t) 3 4 (fontified t) 4 5 (fontified t) 5 6 (fontified t) 6 7 (fontified t) 7 8 (fontified t) 8 9 (fontified t) 9 10 (fontified t) 10 11 (fontified t) 11 12 (syntax-table nil fontified t)) . -1214) (t 21270 65053 0 0) nil (1161 . 1170) nil (1160 . 1162) nil (#("video.title" 0 11 (fontified t)) . 1160) (t 21270 65047 0 0) nil (1143 . 1148) (t 21270 65046 0 0) (1142 . 1143) (t 21270 65045 0 0) (1139 . 1142) nil (#("video_before" 0 1 (fontified t) 1 2 (fontified t) 2 3 (fontified t) 3 4 (fontified t) 4 5 (fontified t) 5 6 (fontified t) 6 7 (fontified t) 7 8 (fontified t) 8 9 (fontified t) 9 10 (fontified t) 10 11 (fontified t) 11 12 (fontified t)) . 1139) (t 21270 65024 0 0) nil (#("      pp 'video_before'
      pp video_before
      pp 'video_after'
      pp video_after
" 0 5 (fontified t) 5 6 (fontified t) 6 7 (fontified t) 7 8 (fontified t) 8 9 (fontified t) 9 10 (face font-lock-string-face fontified t) 10 11 (face font-lock-string-face fontified t) 11 12 (face font-lock-string-face fontified t) 12 13 (face font-lock-string-face fontified t) 13 14 (face font-lock-string-face fontified t) 14 15 (face font-lock-string-face fontified t) 15 16 (face font-lock-string-face fontified t) 16 17 (face font-lock-string-face fontified t) 17 18 (face font-lock-string-face fontified t) 18 19 (face font-lock-string-face fontified t) 19 20 (face font-lock-string-face fontified t) 20 21 (face font-lock-string-face fontified t) 21 22 (face font-lock-string-face rear-nonsticky t fontified t) 22 23 (face font-lock-string-face syntax-table nil fontified t) 23 24 (fontified t) 24 29 (fontified t) 29 30 (fontified t) 30 31 (fontified t) 31 32 (fontified t) 32 33 (fontified t) 33 34 (fontified t) 34 35 (fontified t) 35 36 (fontified t) 36 37 (fontified t) 37 38 (fontified t) 38 39 (fontified t) 39 40 (fontified t) 40 41 (fontified t) 41 42 (fontified t) 42 43 (fontified t) 43 44 (fontified t) 44 45 (syntax-table nil fontified t) 45 46 (fontified t) 46 51 (fontified t) 51 52 (fontified t) 52 53 (fontified t) 53 54 (fontified t) 54 55 (fontified t) 55 56 (face font-lock-string-face fontified t) 56 66 (face font-lock-string-face fontified t) 66 67 (face font-lock-string-face fontified t rear-nonsticky t) 67 68 (face font-lock-string-face syntax-table nil fontified t) 68 69 (rear-nonsticky t fontified t) 69 74 (fontified t) 74 75 (fontified t) 75 76 (fontified t) 76 77 (fontified t) 77 78 (fontified t) 78 88 (fontified t) 88 89 (syntax-table nil fontified t rear-nonsticky t) 89 90 (fontified t)) . -1263) (t 21270 65021 0 0) nil (1385 . 1389) (t 21270 64996 0 0) nil (1385 . 1386) (t 21270 64994 0 0) nil (#("n" 0 1 (fontified t)) . -1385) nil (#("o" 0 1 (fontified t)) . -1386) nil (#("t" 0 1 (fontified t)) . -1387) nil (#("_" 0 1 (fontified t)) . -1388) nil (#("t" 0 1 (fontified t)) . -1389) (t 21270 64949 0 0) nil (1330 . 1331) (t 21270 64948 0 0) nil (1318 . 1319) nil (1272 . 1273) nil (1284 . 1285) (t 21270 64942 0 0) nil (1305 . 1306) nil (#("'" 0 1 (face font-lock-string-face syntax-table nil fontified t)) . -1305) (t 21270 64941 0 0) nil (#("e" 0 1 (fontified t rear-nonsticky t)) . -1305) nil (#("'" 0 1 (face font-lock-string-face fontified t)) . -1294) (t 21270 64938 0 0) nil (1294 . 1295) nil (1306 . 1307) (t 21270 64934 0 0) nil (nil rear-nonsticky nil 1327 . 1328) (nil fontified nil 1327 . 1328) (nil fontified nil 1326 . 1327) (nil fontified nil 1316 . 1326) (nil fontified nil 1315 . 1316) (nil fontified nil 1314 . 1315) (nil fontified nil 1313 . 1314) (nil fontified nil 1312 . 1313) (nil fontified nil 1307 . 1312) (nil fontified nil 1306 . 1307) (nil fontified nil 1305 . 1306) (nil fontified nil 1304 . 1305) (nil fontified nil 1303 . 1304) (nil fontified nil 1302 . 1303) (nil fontified nil 1301 . 1302) (nil fontified nil 1300 . 1301) (nil fontified nil 1299 . 1300) (nil fontified nil 1298 . 1299) (nil fontified nil 1297 . 1298) (nil fontified nil 1296 . 1297) (nil fontified nil 1295 . 1296) (nil fontified nil 1294 . 1295) (nil fontified nil 1293 . 1294) (nil fontified nil 1292 . 1293) (nil fontified nil 1291 . 1292) (nil fontified nil 1290 . 1291) (nil fontified nil 1285 . 1290) (1285 . 1328) (t 21270 64932 0 0) nil (nil rear-nonsticky nil 1283 . 1284) (nil fontified nil 1283 . 1284) (nil fontified nil 1282 . 1283) (nil fontified nil 1281 . 1282) (nil fontified nil 1280 . 1281) (nil fontified nil 1279 . 1280) (nil fontified nil 1278 . 1279) (nil fontified nil 1277 . 1278) (nil fontified nil 1276 . 1277) (nil fontified nil 1275 . 1276) (nil fontified nil 1274 . 1275) (nil fontified nil 1273 . 1274) (nil fontified nil 1272 . 1273) (1272 . 1284) nil (1271 . 1272) (t 21270 64930 0 0) nil (1269 . 1271) (t 21270 64929 0 0) nil (1262 . 1269) (t 21270 64692 0 0) nil (nil rear-nonsticky nil 1282 . 1283) (nil fontified nil 1272 . 1283) (1272 . 1283) nil (1271 . 1272) (t 21270 64689 0 0) nil (1269 . 1271) (t 21270 64686 0 0) nil (1262 . 1269) (t 21270 64662 0 0) nil (#("      pp response
" 0 5 (fontified t) 5 6 (fontified t) 6 8 (fontified t) 8 9 (fontified t) 9 10 (fontified t) 10 11 (fontified t) 11 12 (fontified t) 12 13 (fontified t) 13 14 (fontified t) 14 15 (fontified t) 15 16 (fontified t) 16 17 (syntax-table nil fontified t) 17 18 (rear-nonsticky t fontified t)) . -1230) (t 21270 63109 0 0) nil (nil rear-nonsticky nil 1247 . 1248) (nil fontified nil 1247 . 1248) (nil fontified nil 1246 . 1247) (nil fontified nil 1245 . 1246) (nil fontified nil 1244 . 1245) (nil fontified nil 1243 . 1244) (nil fontified nil 1242 . 1243) (nil fontified nil 1241 . 1242) (nil fontified nil 1240 . 1241) (nil fontified nil 1239 . 1240) (nil fontified nil 1238 . 1239) (nil fontified nil 1236 . 1238) (nil fontified nil 1235 . 1236) (nil fontified nil 1230 . 1235) (1230 . 1248) nil (#("      pp response
" 0 5 (fontified t) 5 6 (fontified t) 6 8 (fontified t) 8 9 (fontified t) 9 10 (fontified t) 10 11 (fontified t) 11 12 (fontified t) 12 13 (fontified t) 13 14 (fontified t) 14 15 (fontified t) 15 16 (fontified t) 16 17 (syntax-table nil fontified t) 17 18 (fontified t)) . -1326) (t 21270 63107 0 0) nil undo-tree-canary))
