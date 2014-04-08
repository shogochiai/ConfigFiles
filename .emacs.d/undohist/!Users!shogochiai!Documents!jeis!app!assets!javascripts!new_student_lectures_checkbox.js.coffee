
((digest . "4842258d5e278df0da5cfe1e568f9bfe") (undo-list (1 . 2306) nil ("$ ->
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
" . 1) (t 21313 13802 0 0) ((marker) . -5) ((marker) . -5) ((marker) . -62) ((marker) . -62) ((marker) . -147) ((marker) . -147) ((marker) . -158) ((marker) . -158) ((marker) . -176) ((marker) . -176) ((marker) . -194) ((marker) . -194) ((marker) . -217) ((marker) . -217) ((marker) . -232) ((marker) . -232) ((marker) . -267) ((marker) . -267) ((marker) . -313) ((marker) . -313) ((marker) . -354) ((marker) . -354) ((marker) . -397) ((marker) . -397) ((marker) . -429) ((marker) . -429) ((marker) . -442) ((marker) . -442) ((marker) . -481) ((marker) . -481) ((marker) . -514) ((marker) . -514) ((marker) . -560) ((marker) . -560) ((marker) . -601) ((marker) . -601) ((marker) . -644) ((marker) . -644) ((marker) . -676) ((marker) . -676) ((marker) . -689) ((marker) . -689) ((marker) . -728) ((marker) . -728) ((marker . 1) . -2063) ((marker . 1) . -480) ((marker . 1) . -2063) ((marker . 1) . -480) nil (1 . 2064) nil (#("$(function() {
  $('form #student_lecture_possible_class_id').change(function() {
    var url = 'http://' + location.host + '/master/possible_classes/' + this.value + '.json';
    $.ajax({ async: true, type: 'get', dataType: 'json', url: url, success: function(possible_class) {
      var select = $('#student_lecture_rule_1');
      if(possible_class.rule_1 == true) {
        select.attr('checked', 'checked');
        select.checked = true;
      } else {
        select.attr('checked', false);
        select.checked = false;
      }

      var select = $('#student_lecture_rule_2');
      if(possible_class.rule_2 == true) {
        select.attr('checked', 'checked');
        select.checked = true;
      } else {
        select.attr('checked', false);
        select.checked = false;
      }

      var select = $('#student_lecture_rule_3');
      if(possible_class.rule_3 == true) {
        select.attr('checked', 'checked');
        select.checked = true;
      } else {
        select.attr('checked', false);
        select.checked = false;
      }

      var select = $('#student_lecture_rule_4');
      if(possible_class.rule_4 == true) {
        select.attr('checked', 'checked');
        select.checked = true;
      } else {
        select.attr('checked', false);
        select.checked = false;
      }

      var select = $('#student_lecture_practical_1');
      if(possible_class.practical_1 == true) {
        select.attr('checked', 'checked');
        select.checked = true;
      } else {
        select.attr('checked', false);
        select.checked = false;
      }

      var select = $('#student_lecture_practical_2');
      if(possible_class.practical_2 == true) {
        select.attr('checked', 'checked');
        select.checked = true;
      } else {
        select.attr('checked', false);
        select.checked = false;
      }

      var select = $('#student_lecture_practical_3');
      if(possible_class.practical_3 == true) {
        select.attr('checked', 'checked');
        select.checked = true;
      } else {
        select.attr('checked', false);
        select.checked = false;
      }
    }});
  });
});
" 2 10 (face font-lock-keyword-face) 13 14 (js--pstate ((nil 0 function 6163 ("new_student_lecture_checkbox") 8334) (((nil 1 function 6111 t 6159) (((nil 3 function 4237 t nil)) 1 function 4033 t nil) (((nil 3 function 3760 t nil)) 1 function 3703 t nil) (((((nil 5 function 3124 t nil)) 3 function 3044 t nil)) 1 function 1511 t nil) (((nil 3 function 1363 t nil)) 1 function 1319 t nil)) -2305843009213693952 toplevel nil nil nil))) 19 20 (face font-lock-string-face) 20 59 (face font-lock-string-face) 59 60 (face font-lock-string-face) 69 77 (face font-lock-keyword-face) 80 81 (js--pstate ((nil 2 function 6259 t 8330) (nil 0 function 6163 ("new_student_lecture_checkbox") 8334) (((nil 1 function 6111 t 6159) (((nil 3 function 4237 t nil)) 1 function 4033 t nil) (((nil 3 function 3760 t nil)) 1 function 3703 t nil) (((((nil 5 function 3124 t nil)) 3 function 3044 t nil)) 1 function 1511 t nil) (((nil 3 function 1363 t nil)) 1 function 1319 t nil)) -2305843009213693952 toplevel nil nil nil))) 86 89 (face font-lock-keyword-face) 90 93 (face font-lock-variable-name-face) 96 97 (face font-lock-string-face) 97 102 (face font-lock-string-face) 102 103 (face font-lock-string-face) 103 104 (face font-lock-string-face) 104 105 (face font-lock-string-face) 124 125 (face font-lock-string-face) 125 150 (face font-lock-string-face) 150 151 (face font-lock-string-face) 154 158 (face font-lock-constant-face) 167 168 (face font-lock-string-face) 168 173 (face font-lock-string-face) 173 174 (face font-lock-string-face) 196 200 (face font-lock-constant-face) 208 209 (face font-lock-string-face) 209 212 (face font-lock-string-face) 212 213 (face font-lock-string-face) 225 226 (face font-lock-string-face) 226 230 (face font-lock-string-face) 230 231 (face font-lock-string-face) 252 260 (face font-lock-keyword-face) 261 275 (face font-lock-variable-name-face) 277 278 (js--pstate ((nil 5 function 6442 t 8323) (nil 2 function 6259 t 8330) (nil 0 function 6163 ("new_student_lecture_checkbox") 8334) (((nil 1 function 6111 t 6159) (((nil 3 function 4237 t nil)) 1 function 4033 t nil) (((nil 3 function 3760 t nil)) 1 function 3703 t nil) (((((nil 5 function 3124 t nil)) 3 function 3044 t nil)) 1 function 1511 t nil) (((nil 3 function 1363 t nil)) 1 function 1319 t nil)) -2305843009213693952 toplevel nil nil nil))) 285 288 (face font-lock-keyword-face) 289 295 (face font-lock-variable-name-face) 300 301 (face font-lock-string-face) 301 324 (face font-lock-string-face) 324 325 (face font-lock-string-face) 334 336 (face font-lock-keyword-face) 362 366 (face font-lock-constant-face) 390 391 (face font-lock-string-face) 391 398 (face font-lock-string-face) 398 399 (face font-lock-string-face) 401 402 (face font-lock-string-face) 402 409 (face font-lock-string-face) 409 410 (face font-lock-string-face) 438 442 (face font-lock-constant-face) 452 456 (face font-lock-keyword-face) 479 480 (face font-lock-string-face) 480 487 (face font-lock-string-face) 487 488 (face font-lock-string-face) 490 495 (face font-lock-constant-face) 523 528 (face font-lock-constant-face) 545 548 (face font-lock-keyword-face) 549 555 (face font-lock-variable-name-face) 560 561 (face font-lock-string-face) 561 584 (face font-lock-string-face) 584 585 (face font-lock-string-face) 594 596 (face font-lock-keyword-face) 622 626 (face font-lock-constant-face) 650 651 (face font-lock-string-face) 651 658 (face font-lock-string-face) 658 659 (face font-lock-string-face) 661 662 (face font-lock-string-face) 662 669 (face font-lock-string-face) 669 670 (face font-lock-string-face) 698 702 (face font-lock-constant-face) 712 716 (face font-lock-keyword-face) 739 740 (face font-lock-string-face) 740 747 (face font-lock-string-face) 747 748 (face font-lock-string-face) 750 755 (face font-lock-constant-face) 783 788 (face font-lock-constant-face) 805 808 (face font-lock-keyword-face) 809 815 (face font-lock-variable-name-face) 820 821 (face font-lock-string-face) 821 844 (face font-lock-string-face) 844 845 (face font-lock-string-face) 854 856 (face font-lock-keyword-face) 882 886 (face font-lock-constant-face) 910 911 (face font-lock-string-face) 911 918 (face font-lock-string-face) 918 919 (face font-lock-string-face) 921 922 (face font-lock-string-face) 922 929 (face font-lock-string-face) 929 930 (face font-lock-string-face) 958 962 (face font-lock-constant-face) 972 976 (face font-lock-keyword-face) 999 1008 (face font-lock-string-face) 1010 1015 (face font-lock-constant-face) 1043 1048 (face font-lock-constant-face) 1065 1068 (face font-lock-keyword-face) 1069 1075 (face font-lock-variable-name-face) 1080 1105 (face font-lock-string-face) 1114 1116 (face font-lock-keyword-face) 1142 1146 (face font-lock-constant-face) 1170 1179 (face font-lock-string-face) 1181 1190 (face font-lock-string-face) 1218 1222 (face font-lock-constant-face) 1232 1236 (face font-lock-keyword-face) 1259 1268 (face font-lock-string-face) 1270 1275 (face font-lock-constant-face) 1303 1308 (face font-lock-constant-face) 1325 1328 (face font-lock-keyword-face) 1329 1335 (face font-lock-variable-name-face) 1340 1370 (face font-lock-string-face) 1379 1381 (face font-lock-keyword-face) 1412 1416 (face font-lock-constant-face) 1440 1449 (face font-lock-string-face) 1451 1460 (face font-lock-string-face) 1488 1492 (face font-lock-constant-face) 1502 1506 (face font-lock-keyword-face) 1529 1538 (face font-lock-string-face) 1540 1545 (face font-lock-constant-face) 1573 1578 (face font-lock-constant-face) 1595 1598 (face font-lock-keyword-face) 1599 1605 (face font-lock-variable-name-face) 1610 1640 (face font-lock-string-face) 1649 1651 (face font-lock-keyword-face) 1682 1686 (face font-lock-constant-face) 1710 1719 (face font-lock-string-face) 1721 1730 (face font-lock-string-face) 1758 1762 (face font-lock-constant-face) 1772 1776 (face font-lock-keyword-face) 1799 1808 (face font-lock-string-face) 1810 1815 (face font-lock-constant-face) 1843 1848 (face font-lock-constant-face) 1865 1868 (face font-lock-keyword-face) 1869 1875 (face font-lock-variable-name-face) 1880 1910 (face font-lock-string-face) 1919 1921 (face font-lock-keyword-face) 1952 1956 (face font-lock-constant-face) 1980 1989 (face font-lock-string-face) 1991 2000 (face font-lock-string-face) 2028 2032 (face font-lock-constant-face) 2042 2046 (face font-lock-keyword-face) 2069 2078 (face font-lock-string-face) 2080 2085 (face font-lock-constant-face) 2113 2118 (face font-lock-constant-face) 2132 2133 (js--pend (nil 5 function 6442 t 8323)) 2139 2140 (js--pend (((nil 5 function 6442 t 8323)) 2 function 6259 t 8330)) 2142 2143 (js--pend (((((nil 5 function 6442 t 8323)) 2 function 6259 t 8330)) 0 function 6163 ("new_student_lecture_checkbox") 8334)) 2143 2144 (js--pend (nil 1 function 6111 t 6159))) . 1) (t 21297 45599 0 0) ((marker) . -2147) ((marker) . -12) ((marker) . -12) ((marker) . -2143) ((marker) . -2147) ((marker) . -2147) ((marker) . -12) ((marker) . -27) ((marker) . -2147) ((marker) . -2142) ((marker) . -704) ((marker) . -704) ((marker) . -444) ((marker) . -444) ((marker) . -459) ((marker) . -459) ((marker) . -498) ((marker) . -498) ((marker) . -530) ((marker) . -530) ((marker) . -798) ((marker) . -798) ((marker) . -790) ((marker) . -790) ((marker) . -758) ((marker) . -758) ((marker) . -719) ((marker) . -719) ((marker) . -2136) ((marker) . -1859) ((marker) . -2147) ((marker) . -2147) ((marker) . -2147) ((marker) . -1859) ((marker) . -2147) ((marker) . -2147) ((marker) . -1859) ((marker) . -2147) ((marker) . -2147) ((marker) . -2147) ((marker) . -2147) ((marker) . -538) ((marker) . -538) ((marker) . -539) ((marker) . -539) ((marker) . -588) ((marker) . -588) ((marker) . -630) ((marker) . -630) ((marker) . -673) ((marker) . -673) ((marker) . -413) ((marker) . -413) ((marker) . -370) ((marker) . -370) ((marker) . -328) ((marker) . -328) ((marker) . -279) ((marker) . -279) ((marker) . -15) ((marker) . -15) ((marker) . -82) ((marker) . -82) ((marker) . -176) ((marker) . -176) ((marker) . -2147) ((marker) . -758) ((marker) . -2147) ((marker) . -718) nil undo-tree-canary))
