/// @arg x
/// @arg y
/// @arg width
/// @arg height
/// @arg text
/// @arg script
/// @arg index
function create_button(){
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _txt = argument[4];
	var _script = argument[5];
	var _index = argument[6];
	
	var _button = instance_create_layer(_x, _y, "Instances", obj_Button);

	with (_button) {
		width = _width;
		height = _height;
		text = _txt;
		script = _script;
		index = _index;
	}

}