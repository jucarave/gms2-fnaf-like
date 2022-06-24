shader_set(shdDistortion);

draw_sprite(sprite_index, 0, x, y);

if (door == 1) {
	draw_sprite(sprite_index, 1, x, y);
}

if (lights == 1) {
	draw_sprite(sprite_index, 2, x, y);
}

shader_reset();