draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);	

if(!isOpen)
	draw_text(display_get_gui_width() / 2 ,display_get_gui_height() / 2, "Press ESC");
	
draw_text(display_get_gui_width() / 2 ,display_get_gui_height() / 2  - 250, "Scroll Wheel to Change Options and Left click to confirm");

draw_set_color(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);