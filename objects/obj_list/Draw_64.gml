draw_set_color($48413b);
draw_roundrect(x, y, x + width, y + height, 0);
draw_set_color(-1);

var _size = ds_list_size(list);

for (var i=0; i<_size; i++) {
	var _arr = list[| i];
	var _name = _arr[PR.NAME];
	var _sel = _arr[PR.SELECTED];
	var _vals = _arr[PR.VALUES];
	
	var _x = x + padding;
	var _y = y + padding + itemH * i;
	
	if (_sel > -2 && i != hoverID) 
		draw_set_color(c_black);
	
	draw_text(_x, _y, _name);
	
	if (_sel > -1) {
		var _val = _vals[_sel];
		
		draw_set_halign(fa_right);
		draw_text(x + width - padding, _y, _val);
		draw_set_halign(fa_left);
	}
	
	draw_set_color(c_white);
}