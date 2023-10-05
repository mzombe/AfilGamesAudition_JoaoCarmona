
mouse_isStop = mouse_x_prev == mouse_x && mouse_y_prev == mouse_y ? true : false;

mouse_x_prev = mouse_x;
mouse_y_prev = mouse_y;

alarm[0] = 30;