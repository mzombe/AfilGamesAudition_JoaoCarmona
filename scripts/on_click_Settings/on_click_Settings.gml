function on_click_Settings(){
	if(!instance_exists((obj_list)))
		create_list(global.GuiWidth / 2 , global.GuiHeight / 2, 300, 280, LIST_TYPE.SETTINGS);
}