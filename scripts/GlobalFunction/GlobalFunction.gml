//
// 存入系統相關的參數
// Save System variable
//
function SaveSystemFile(){
	show_debug_message("[Info] SaveSystemFile()")
	ini_open("Save.ini")
	// 初次開啟
	ini_write_real("System", "first", false)
	// 語言
	ini_write_real("System", "language", global.LOCALE)
	// 音效大小
	ini_write_real("System", "sound", global.SOUND)
	// 背景音樂大小
	ini_write_real("System", "music", global.MUSIC)
	// 總音量大小
	ini_write_real("System", "masterVol", global.MASTER_VOL)
	ini_close()
}
//
// 載入系統相關的參數
// Load System variable
//
function LoadSystemFile(){
	show_debug_message("[Info] LoadSystemFile()")
	ini_open("Save.ini")
	// 初次開啟
	var first = ini_read_real("System", "first", true)
	// 語言
	global.LOCALE = ini_read_real("System", "language", global.SystemSaveDefaultDefine[? "language"])
	// 音效大小
	global.SOUND = ini_read_real("System", "sound", global.SystemSaveDefaultDefine[? "sound"])
	// 背景音樂大小
	global.MUSIC = ini_read_real("System", "music", global.SystemSaveDefaultDefine[? "music"])
	// 總音量大小
	global.MASTER_VOL = ini_read_real("System", "masterVol", global.SystemSaveDefaultDefine[? "masterVol"])
	ini_close()
	
	if(first){
		SaveSystemFile()
	}
}

//
// 將有翻譯的文字索引存入全域變數中
// store the text index with translation into global variable
//
function InitTranslations(){
	// 載入翻譯用的CSV 檔案 load the csv file for text translation
	var stringCSV = global.TranslationData
	var translations = ds_map_create()
	// 抓出索引的值 get the text index name
	for( var idx = 0 ; idx < ds_grid_height(stringCSV) ; idx++ ){
		show_debug_message(string("get text index name:") + string(stringCSV[# 0, idx]) )
		ds_map_add( translations, stringCSV[# 0, idx], idx)
	}
	
	global.translationsIdx = translations //遊戲用到的文字都存這  all text in csv will store in this variable
	if(global.LOCALE){
		show_debug_message("[Info] init the language")
		draw_set_font(global.LanguageFont[? global.LOCALE])
	}
}

//
// 以此函式去存取多國文字
// get text in diff language with
//
function Text(key){
	var text = ""
	// 如果有該值 if index exist
	if( global.translationsIdx[? key] != undefined ){
		text = global.TranslationData[# 1 + global.LOCALE, global.translationsIdx[? key]]
	}else{
		// 如果翻譯表內找不到就Key直接顯示
		// if the key is unfind in csv file, just display the key value
		var text = key
	}
	
	return text
}

//
// 顯示map的所有值
// Show whole map detail in log
//
function show_debug_map_message(map){
	for (var key = ds_map_find_first(map); !is_undefined(key); key = ds_map_find_next(map, key)) {
	  var value = map[? key];
	  show_debug_message("[Map message]" + string(key) + ":" + string(value))
	}
}

//---------------------Button---------------------




//---------------------Button---------------------
