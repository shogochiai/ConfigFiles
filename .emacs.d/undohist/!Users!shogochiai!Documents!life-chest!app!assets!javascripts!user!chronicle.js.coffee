
((digest . "6ee291ac0bccb1a676f6b6eba472e5ea") (undo-list nil (" " . -271) (t 21041 30524 0 0) nil (271 . 272) (t 21041 30522 0 0) (269 . 271) (t 21041 30520 0 0) nil ("
######## infinite scroll ########
" . -269) (t 21041 28823 0 0) ((marker . 269) . -1) ((marker . 269) . -35) ((marker . 269) . -1) ((marker . 680) . -35) ((marker . 680) . -35) ((marker) . -1) ((marker) . -1) ((marker . 269) . -1) ((marker . 269) . -1) ((marker . 269) . -1) ((marker . 269) . -1) ((marker . 269) . -1) nil (437 . 441) nil ("b" . -437) nil ("o" . -438) nil ("x" . -439) (t 21041 28810 0 0) nil ("	" . -304) nil (" " . -305) nil (" " . -306) (t 21041 28800 0 0) nil (292 . 294) (t 21041 28799 0 0) nil (";" . -292) nil (";" . -293) nil (287 . 294) nil ("s" . -287) nil (287 . 288) (t 21041 28796 0 0) (286 . 287) (t 21041 28794 0 0) (279 . 286) (t 21041 28792 0 0) nil ("m" . -279) nil ("a" . -280) nil ("s" . -281) nil ("o" . -282) nil ("n" . -283) nil ("r" . -284) nil ("y" . -285) nil (" " . -286) nil ("d" . -287) nil ("e" . -288) nil ("f" . -289) nil ("i" . -290) nil ("n" . -291) nil ("e" . -292) (t 21041 28789 0 0) nil (24 . 25) nil (9 . 10) nil (276 . 277) nil (290 . 291) (t 21041 28781 0 0) nil (268 . 298) (t 21041 28773 0 0) nil (269 . 272) ("  " . 269) (268 . 269) (t 21041 28769 0 0) nil (268 . 679) (t 21041 28768 0 0) nil ("	" . -268) nil (" " . -269) nil (" " . -270) nil (267 . 271) nil ("
" . -267) nil ("	" . -268) nil (" " . -269) nil (" " . -270) nil (267 . 271) nil ("
" . -267) nil ("	" . -268) nil (" " . -269) nil (" " . -270) (t 21041 28763 0 0) nil (267 . 271) ("	  " . 267) 270 nil (266 . 270) (t 21037 44410 0 0) nil ("a" . -266) nil (266 . 267) (t 21037 44007 0 0) nil ("
" . -266) nil ("##############################

Arrow_Points = ->
  s = $(\"#chronicle_container\").find(\".item\")
  $.each s, (i, obj) ->
    posLeft = $(obj).css(\"left\")
    $(obj).addClass \"borderclass\"
    if posLeft is \"0px\"
      html = \"<span class='rightCorner'></span>\"
      $(obj).prepend html
    else
      html = \"<span class='leftCorner'></span>\"
      $(obj).prepend html

##############################
" . -267) (t 21029 47940 0 0)))
