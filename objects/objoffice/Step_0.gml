var mx = room_width / 2.0 - mouse_x;
x += mx * rotateSpeed;

if (x > 0) {
	x = 0;
} else if (x + sprite_width < room_width) {
	x = room_width - sprite_width;
}