//@args index
function get_hover() {
	var _index = argument[0];
	var _selected = false;
	
	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);
	
	_selected = point_in_rectangle(_mouseX, _mouseY, x, y, x + width, y + height) 
	
	if(!_selected){
		with(obj_MenuController){
			_selected =	index_select == _index && mouse_isStop ? true : false;
		}
	}
	
	return _selected;
}