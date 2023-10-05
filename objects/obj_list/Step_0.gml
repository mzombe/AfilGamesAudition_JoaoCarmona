var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
var _mousePress = mouse_check_button_pressed(mb_left);

var _size = ds_list_size(list);

for (var i=0; i<_size; i++) {

	var _arr = list[| i];
	var _name = _arr[PR.NAME];
	var _sel = _arr[PR.SELECTED];
	var _vals = _arr[PR.VALUES];

	var _x1 = x + padding;
	var _y1 = y + padding + itemH * i;
	var _x2 = x + width - padding;
	var _y2 = _y1 + itemH;

	var _hover = point_in_rectangle(_mouseX, _mouseY, _x1, _y1, _x2, _y2);
	
	if (_hover) {
		hoverID = i;
		
		if (_sel == -1 && _mousePress) {
			switch (_name) {
				case "Back":
					with(obj_MenuController){
						event_user(0);	
					}
					instance_destroy();
				break;
				case "Yes":
					game_end();
				break;
			}
		}
		
		if (_sel > -1) {
			var _wheel = mouse_wheel_up() - mouse_wheel_down();
			
			if (_wheel != 0) {
				_sel += _wheel;

				_sel = clamp(_sel, 0, array_length_1d(_vals) - 1);
				_arr[@ PR.SELECTED] = _sel;

				switch(_arr[2,_sel]){
					case "Active":
						window_set_fullscreen(true);
					break;
					case "Deactive":
						window_set_fullscreen(false);
					break;
				}
			}
		}
	}
}