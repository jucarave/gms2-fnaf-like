if (mouse_check_button_pressed(mb_left)) {
	if (mouse_x >= x + doorButtonRectangle[0] && mouse_x < x + doorButtonRectangle[2]) {
		if (mouse_y >= y + doorButtonRectangle[1] && mouse_y < y + doorButtonRectangle[3] && doorDelay <= 0) {
			door = !door;
			doorDelay = room_speed * 0.75;
			doorInstance.image_speed = door ? 1 : -1;
		}
	}
}

if (doorDelay > 0) {
	doorDelay -= 1;
}