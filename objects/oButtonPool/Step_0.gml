/// @description check click buttons

mouseUI_X = device_mouse_raw_x(0)
mouseUI_Y = device_mouse_raw_y(0)
// 判定是否按下按鈕
// check click buttons
for(var idx = 0 ; idx < array_length(global.BUTTON_POOL) ; idx++ ){
	var BtnObj	= global.BUTTON_POOL[idx]
	// 如果不需要顯示換下一個
	if(BtnObj[?"visible"] == false) { continue }

	var x1 = BtnObj[? "x"] - BtnObj[? "width"] / 2
	var x2 = BtnObj[? "x"] + BtnObj[? "width"] / 2
	var y1 = BtnObj[? "y"] - BtnObj[? "height"] / 2
	var y2 = BtnObj[? "y"] + BtnObj[? "height"] / 2
	
	if ( (mouseUI_X >= x1) and (mouseUI_X <= x2) and (mouseUI_Y >= y1) and (mouseUI_Y <= y2) and
		mouse_check_button_pressed(mb_left)) {
		if(BtnObj[? "clickEvent"] != noone) {
			BtnObj[? "clickEvent"]()
		}
	}
}
