/// @description Insert description here


function MainQuit(){
	game_end()
}

function MainStart(){
	ClearButtonPool()
	room_goto_next()
}

mainMenu = array_create()
settingMenu = array_create()

function MainSetting(){
	SetGroupBtnVisible(oMenu.mainMenu	, false)
	SetGroupBtnVisible(oMenu.settingMenu, true)
}

function BackToMain(){
	SetGroupBtnVisible(oMenu.mainMenu	, true)
	SetGroupBtnVisible(oMenu.settingMenu, false)
}

var mainBtnX = window_get_width() / 2
var mainWidth = 250
var mainHeight = 50

mainMenu[0]	= ButtonInit(Text("START_GAME")	, noone, mainBtnX, 300, mainWidth, mainHeight, true, MainStart)
mainMenu[1] = ButtonInit(Text("LOAD_GAME")	, noone, mainBtnX, 400, mainWidth, mainHeight, true, noone)
mainMenu[2]	= ButtonInit(Text("SETTING")	, noone, mainBtnX, 500, mainWidth, mainHeight, true, MainSetting)
mainMenu[3]	= ButtonInit(Text("EXIT_GAME")	, noone, mainBtnX, 600, mainWidth, mainHeight, true, MainQuit)

settingMenu[0] = ButtonInit(Text("TEST")	 , noone, mainBtnX, 300, mainWidth, mainHeight, false, noone)
settingMenu[1] = ButtonInit(Text("MENU_BACK"), noone, mainBtnX, 600, mainWidth, mainHeight, false, BackToMain)
