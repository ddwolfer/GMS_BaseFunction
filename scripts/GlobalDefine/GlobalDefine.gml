////////////////////////////////// LANGUAGE //////////////////////////////////
enum LanguageENUM {
	TW = 0,
	EN = 1,
}
var LanguageFont = ds_map_create()
ds_map_add(LanguageFont, LanguageENUM.TW, font_add("Chinese.ttf",20 ,0 ,0 ,0 ,65535))
ds_map_add(LanguageFont, LanguageENUM.EN, Font_English)

global.LanguageFont = LanguageFont
global.TranslationData = load_csv("string.csv") 

/////////////////////////////////// SAVE LOAD //////////////////////////////////
// 在這邊定義要儲存什麼變數
var SystemSaveDefaultDefine = ds_map_create()
ds_map_add(SystemSaveDefaultDefine, "language", LanguageENUM.EN)
ds_map_add(SystemSaveDefaultDefine, "sound",100)
ds_map_add(SystemSaveDefaultDefine, "music", 100)
ds_map_add(SystemSaveDefaultDefine, "masterVol", 100)

show_debug_map_message(SystemSaveDefaultDefine)
global.SystemSaveDefaultDefine = SystemSaveDefaultDefine
