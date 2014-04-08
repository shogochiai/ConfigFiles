
((digest . "01c11b70efa985a9abb2082996fd2243") (undo-list ("					" . -2188) ("					" . -2187) ("					" . -2133) ("					" . -2083) ("					" . -2042) ("					" . -1999) ("					" . -1963) ("					" . -1925) ("					" . -1887) ("					" . -1847) ("					" . -1822) ("					" . -1821) ("					" . -1819) ("						" . -1817) ("							" . -1815) ("								" . -1813) ("									" . -1794) ("									" . -1778) ("								" . -1776) ("							" . -1759) ("							" . -1730) ("							" . -1703) ("							" . -1681) ("							" . -1670) ("							" . -1656) ("						" . -1654) ("						" . -1651) ("							" . -1649) ("								" . -1647) ("									" . -1628) ("									" . -1612) ("								" . -1610) ("							" . -1593) ("							" . -1564) ("							" . -1537) ("							" . -1515) ("							" . -1504) ("							" . -1490) ("						" . -1488) ("					" . -1465) ("					" . -1464) ("					" . -1436) ("					" . -1408) ("					" . -1373) ("					" . -1314) ("					" . -1251) ("					" . -1180) ("					" . -1151) ("					" . -1049) ("					" . -1006) ("					" . -971) 971 (t 21263 52159 0 0) nil (971 . 2527) nil (968 . 971) (t 21254 40686 0 0) nil ("			" . -966) ("				" . -894) ("				" . -855) ("				" . -816) ("				" . -773) ("				" . -661) ("    			" . -594) ("    " . -504) 1 (t 21254 40683 0 0) nil (504 . 1002) nil (502 . 504) (t 21254 40492 0 0) nil ("				" . -500) nil ("				" . -481) (t 21254 40490 0 0) nil ("				" . -464) (t 21254 40488 0 0) nil ("				" . -425) nil ("				" . -376) nil ("				" . 373) (t 21254 40483 0 0) nil ("				" . -300) (t 21254 40480 0 0) nil ("				" . -264) (t 21254 40478 0 0) nil ("				" . -224) (t 21254 40477 0 0) nil ("				" . -180) (t 21254 40475 0 0) nil ("				" . -64) nil ("/" . -44) nil ("/" . -45) (t 21254 40470 0 0) nil ("				" . -44) (t 21254 40468 0 0) nil ("				" . -1) (t 21254 40463 0 0) nil ("	" . -531) ("	" . -510) ("	" . -467) ("	" . -330) ("	" . -290) ("	" . -246) ("	" . -198) ("	" . -78) ("	" . -52) 1 (t 21254 40461 0 0) nil (1 . 565) (t 21254 40458 0 0) nil ("				private function onGridClick(event:Event){
				//makeGrid(col, row);
				var createGridDialog:CreateGridDialog = PopUpManager.createPopUp(this, CreateGridDialog, true) as CreateGridDialog;
				PopUpManager.centerPopUp(createGridDialog);
				createGridDialog.setGridId(globalGrid);
				createGridDialog.setMaxRow(MaxRow);
				createGridDialog.addEventListener(CreateGridEvent.GRID_SUBMIT, tmpSave);
				}

				public function makeGrid(col:int, row:int):void{
				globalGrid = (col - 1) * MaxRow + row;
				//globalgrid死んでる
				//毎度呼ばれてて更新されまくってる
				}
" . 1) (t 21254 40440 0 0) nil ("	" . -531) ("	" . -510) ("	" . -467) ("	" . -330) ("	" . -290) ("	" . -246) ("	" . -198) ("	" . -78) ("	" . -52) 1 (t 21254 40439 0 0) nil (1 . 565) (t 21254 40304 0 0) nil ("for(var col:int = 1; col <= MaxColumn; col++){
for(var row:int = 1; row <= MaxRow; row++){
makeGrid(col, row);//これだとglobalGridが上書きされまくる
Button[\"btn_\" + col + \"_\" + row] = new Button();
Button[\"btn_\" + col + \"_\" + row].label = col + \"行\" + row + \"列\" ;
Button[\"btn_\" + col + \"_\" + row].setStyle(\"fontSize\", 10);
Button[\"btn_\" + col + \"_\" + row].setStyle(\"cornerRadius\", 0);
Button[\"btn_\" + col + \"_\" + row].x = 1150 - 500/MaxRow * (row - 1);
Button[\"btn_\" + col + \"_\" + row].y = 150 + 500/MaxColumn * (col - 1);
Button[\"btn_\" + col + \"_\" + row].width = 500/MaxRow;
Button[\"btn_\" + col + \"_\" + row].height = 500/MaxColumn;
Button[\"btn_\" + col + \"_\" + row].setStyle(\"color\", 0x191970);
Button[\"btn_\" + col + \"_\" + row].setStyle(\"fontSize\", 7);
//http://hakuhin.jp/as3/event.html#EVENT_03
//Buttonタグみたいにコールバック変数の引数を増やしたい
Button[\"btn_\" + col + \"_\" + row].addEventListener(MouseEvent.CLICK, onGridClick);
rootPanel.addElement(Button[\"btn_\" + col + \"_\" + row]);
}
}" . -1) (t 21254 40301 0 0) nil ("					" . -956) ("						" . -954) ("							" . -898) ("							" . -816) ("							" . -784) ("							" . -740) ("							" . -682) ("							" . -620) ("							" . -563) ("							" . -510) ("							" . -440) ("							" . -372) ("							" . -310) ("							" . -251) ("							" . -186) ("							" . -137) ("							" . -92) ("						" . -48) 1 (t 21254 40292 0 0) nil (1 . 1079) (t 0 0 0 -1000)))
