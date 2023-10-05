draw_set_color(merge_color($414141, c_white, hover));

draw_roundrect(x, y, x + width, y + height, 0);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x + width/2, y + height/2, text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_white);