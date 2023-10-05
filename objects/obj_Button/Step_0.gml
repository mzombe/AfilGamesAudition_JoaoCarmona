var _hover = get_hover(index);
var _click = _hover && mouse_check_button_pressed(mb_left);

selected = _hover;

hover = lerp(hover, _hover, 0.1);
y = lerp(y, ystart - _hover * 8, 0.1);

if (_click && script > 0) {
	script_execute(script);
}