
((digest . "4842258d5e278df0da5cfe1e568f9bfe") (undo-list (nil rear-nonsticky nil 2305 . 2306) (nil fontified nil 1 . 2306) (1 . 2306) nil (#("$ ->
  $(\"form #student_lecture_possible_class_id\").change ->
    url = \"http://\" + location.host + \"/master/possible_classes/\" + @value + \".json\"
    $.ajax
      async: true
      type: \"get\"
      dataType: \"json\"
      url: url
      success: (possible_class) ->
        select = $(\"#student_lecture_rule_1\")
        if possible_class.rule_1 is true
          select.attr \"checked\", \"checked\"
          select.checked = true
        else
          select.attr \"checked\", false
          select.checked = false
        select = $(\"#student_lecture_rule_2\")
        if possible_class.rule_2 is true
          select.attr \"checked\", \"checked\"
          select.checked = true
        else
          select.attr \"checked\", false
          select.checked = false
        select = $(\"#student_lecture_rule_3\")
        if possible_class.rule_3 is true
          select.attr \"checked\", \"checked\"
          select.checked = true
        else
          select.attr \"checked\", false
          select.checked = false
        select = $(\"#student_lecture_rule_4\")
        if possible_class.rule_4 is true
          select.attr \"checked\", \"checked\"
          select.checked = true
        else
          select.attr \"checked\", false
          select.checked = false
        select = $(\"#student_lecture_practical_1\")
        if possible_class.practical_1 is true
          select.attr \"checked\", \"checked\"
          select.checked = true
        else
          select.attr \"checked\", false
          select.checked = false
        select = $(\"#student_lecture_practical_2\")
        if possible_class.practical_2 is true
          select.attr \"checked\", \"checked\"
          select.checked = true
        else
          select.attr \"checked\", false
          select.checked = false
        select = $(\"#student_lecture_practical_3\")
        if possible_class.practical_3 is true
          select.attr \"checked\", \"checked\"
          select.checked = true
        else
          select.attr \"checked\", false
          select.checked = false
        return

    return

  return
" 0 9 (fontified t) 9 50 (fontified t face font-lock-string-face) 50 72 (fontified t) 72 81 (fontified t face font-lock-string-face) 81 100 (fontified t) 100 127 (fontified t face font-lock-string-face) 127 139 (fontified t) 139 146 (fontified t face font-lock-string-face) 146 171 (fontified t) 171 175 (fontified t face font-lock-constant-face) 175 188 (fontified t) 188 193 (fontified t face font-lock-string-face) 193 210 (fontified t) 210 216 (fontified t face font-lock-string-face) 216 286 (fontified t) 286 311 (fontified t face font-lock-string-face) 311 321 (fontified t) 321 323 (fontified t face font-lock-keyword-face) 323 349 (fontified t) 349 353 (fontified t face font-lock-constant-face) 353 376 (fontified t) 376 385 (fontified t face font-lock-string-face) 385 387 (fontified t) 387 396 (fontified t face font-lock-string-face) 396 424 (fontified t) 424 428 (fontified t face font-lock-constant-face) 428 437 (fontified t) 437 441 (fontified t face font-lock-keyword-face) 441 464 (fontified t) 464 473 (fontified t face font-lock-string-face) 473 475 (fontified t) 475 480 (fontified t face font-lock-constant-face) 480 508 (fontified t) 508 513 (fontified t face font-lock-constant-face) 513 514 (fontified t) 514 533 (fontified t) 533 558 (fontified t face font-lock-string-face) 558 568 (fontified t) 568 570 (fontified t face font-lock-keyword-face) 570 596 (fontified t) 596 600 (fontified t face font-lock-constant-face) 600 623 (fontified t) 623 632 (fontified t face font-lock-string-face) 632 634 (fontified t) 634 643 (fontified t face font-lock-string-face) 643 671 (fontified t) 671 675 (fontified t face font-lock-constant-face) 675 684 (fontified t) 684 688 (fontified t face font-lock-keyword-face) 688 711 (fontified t) 711 720 (fontified t face font-lock-string-face) 720 722 (fontified t) 722 727 (fontified t face font-lock-constant-face) 727 755 (fontified t) 755 760 (fontified t face font-lock-constant-face) 760 780 (fontified t) 780 805 (fontified t face font-lock-string-face) 805 815 (fontified t) 815 817 (fontified t face font-lock-keyword-face) 817 843 (fontified t) 843 847 (fontified t face font-lock-constant-face) 847 870 (fontified t) 870 879 (fontified t face font-lock-string-face) 879 881 (fontified t) 881 890 (fontified t face font-lock-string-face) 890 918 (fontified t) 918 922 (fontified t face font-lock-constant-face) 922 931 (fontified t) 931 935 (fontified t face font-lock-keyword-face) 935 958 (fontified t) 958 967 (fontified t face font-lock-string-face) 967 969 (fontified t) 969 974 (fontified t face font-lock-constant-face) 974 1002 (fontified t) 1002 1007 (fontified t face font-lock-constant-face) 1007 1027 (fontified t) 1027 1052 (fontified t face font-lock-string-face) 1052 1054 (fontified t) 1054 2063 (fontified nil)) . 1) (t 21313 12607 0 0) ((marker . 1) . -2063) ((marker . 1) . -231) ((marker . 1) . -231) ((marker . 1) . -231) ((marker . 1) . -266)))
