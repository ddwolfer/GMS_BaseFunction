/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here

isShow = false
function BackToTitle(){
	ClearButtonPool()
	room_goto(rTitle)
}


inGameMenu = array_create()

function Resume(){
	isShow = false
	SetGroupBtnVisible(oInGameMenu.inGameMenu	, false)
}
function Show(){
	SetGroupBtnVisible(oInGameMenu.inGameMenu	, true)
}

var mainBtnX = window_get_width() / 2
var mainWidth = 250
var mainHeight = 50

inGameMenu[0] = ButtonInit(Text("RESUME")		, noone, mainBtnX, 300, mainWidth, mainHeight, false, Resume)
inGameMenu[1] = ButtonInit(Text("BACK_TO_TITLE"), noone, mainBtnX, 400, mainWidth, mainHeight, false, BackToTitle)

