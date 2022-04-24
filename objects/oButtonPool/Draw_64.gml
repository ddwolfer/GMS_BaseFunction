/// @description draw all button in pool

//將池子裡的按鈕全部顯示
for(var idx = 0 ; idx < array_length(global.BUTTON_POOL) ; idx++ ){
	var BtnObj	= global.BUTTON_POOL[idx]
	// 如果不需要顯示換下一個
	if(BtnObj[?"visible"] == false) { continue }
	
	var btnX		= BtnObj[? "x"]
	var btnY		= BtnObj[? "y"]
	var btnWidth	= BtnObj[? "width"]
	var btnHeight	= BtnObj[? "height"]
	var btnSprite	= BtnObj[? "sprite"]
	var btnText		= BtnObj[? "text"]
	
	
	draw_rectangle(btnX - btnWidth/2 , btnY - btnHeight/2, btnX + btnWidth/2, btnY + btnHeight/2, true)
	if (btnSprite != noone) {
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_sprite( btnSprite, 0, btnX, btnY)
	}
	
	if (btnText != noone) {
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_text(btnX, btnY, btnText)
	}
	
}
