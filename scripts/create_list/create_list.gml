/// @arg x
/// @arg y
/// @arg width
/// @arg height
/// @arg LIST_TYPE
function create_list() {
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _type = argument[4];

	var _list = instance_create_layer(_x - _width / 2, _y - _height / 2, "Instances", obj_list);

	with (_list) {
		width = _width;
		height = _height;
		type = _type;
	
		switch (_type) {		
			case LIST_TYPE.SETTINGS:
				instance_destroy(obj_Button);
			
				ds_list_add(list, ["Music Volume ", 10, ["0%", "10%", "20%", "30%", "40%", "50%", "60%", "70%", "80%", "90%", "100%"]]);
				ds_list_add(list, ["Full Screen ", 1, ["Active", "Deactive"]]);
				ds_list_add(list, ["Back", -1, []]);
			break;
			case LIST_TYPE.EXIT:
				instance_destroy(obj_Button);
				
				ds_list_add(list, ["Do you really want to leave?", -2, []]);
				ds_list_add(list, ["Yes", -1, []]);
				ds_list_add(list, ["Back", -1, []]);
			break;
		}
	}

	return _list;


}
