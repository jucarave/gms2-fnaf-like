if (mouse_check_button_pressed(mb_left)) {
	if (mouse_x >= x + doorButtonRectangle[0] && mouse_x < x + doorButtonRectangle[2]) {
		if (mouse_y >= y + doorButtonRectangle[1] && mouse_y < y + doorButtonRectangle[3] && doorDelay <= 0) {
			door = !door;
			doorDelay = room_speed * 0.5;
			doorInstance.image_speed = door ? 1 : -1;
		}
	}
	
	if (mouse_x >= x + lightButtonRectangle[0] && mouse_x < x + lightButtonRectangle[2]) {
		if (mouse_y >= y + lightButtonRectangle[1] && mouse_y < y + lightButtonRectangle[3] && lightsDelay <= 0) {
			var currentLightsState = lights;
			
			objButtons.lights = 0;
			lights = !currentLightsState;
			lightsDelay = room_speed * 0.5;
		}
	}
}

if (doorDelay > 0) {
	doorDelay -= 1;
}

if (lightsDelay > 0) {
	lightsDelay -= 1;
}