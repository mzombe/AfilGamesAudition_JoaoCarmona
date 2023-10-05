var _width = 300;
var _height = 100;
global.GuiWidth = display_get_gui_width();
global.GuiHeight = display_get_gui_height();

create_button((global.GuiWidth / 2) - (_width / 2), (global.GuiHeight / 2) - (_height / 2), _width, _height, "Play", on_click_Play, 0);
create_button((global.GuiWidth / 2) - (_width / 2), (global.GuiHeight / 2) - (_height / 2) + 150, _width, _height, "Settings", on_click_Settings, 1);
create_button((global.GuiWidth / 2) - (_width / 2), (global.GuiHeight / 2) - (_height / 2) + 300, _width, _height, "Exit", on_click_Exit, 2);

isOpen = true;