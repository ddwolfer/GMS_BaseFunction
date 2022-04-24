var buttonPool  = array_create()
global.BUTTON_POOL = buttonPool
//
// 按鈕初始化
// 
//
function ButtonInit(text, sprite, x, y, width, height, IsVisible,clickEvent){
	var buttonStruct = ds_map_create()

	ds_map_add(buttonStruct,"text"		,text)
	ds_map_add(buttonStruct,"sprite"	,sprite)
	ds_map_add(buttonStruct,"x"			,x)
	ds_map_add(buttonStruct,"y"			,y)
	ds_map_add(buttonStruct,"width"		,width)
	ds_map_add(buttonStruct,"height"	,height)
	ds_map_add(buttonStruct,"clickEvent",clickEvent)
	ds_map_add(buttonStruct,"visible"	,IsVisible)
	
	array_push(global.BUTTON_POOL, buttonStruct)
	
	return buttonStruct
}
//
// 按鈕池清空
// 
//
function ClearButtonPool() {
	 array_delete(global.BUTTON_POOL, 0, array_length(global.BUTTON_POOL))
}

function SetGroupBtnVisible(groupBtn, IsVisible){
	for(var idx = 0; idx < array_length(groupBtn); idx++){
		groupBtn[idx][? "visible"] = IsVisible
	}
}
