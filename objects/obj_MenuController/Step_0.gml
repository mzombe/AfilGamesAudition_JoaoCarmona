if (keyboard_check_pressed(vk_escape)){
	isOpen = !isOpen;
	event_user(isOpen ? 0 : 1);
}