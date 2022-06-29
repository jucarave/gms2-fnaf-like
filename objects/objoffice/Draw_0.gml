shader_set(shdDistortion);
draw_self();

if (inst_leftButtons.lights && flickering < 2) {
	draw_sprite(bckOfficeLeftLight, 0, x, y);
} else if (inst_rightButtons.lights && flickering < 2) {
	draw_sprite(bckOfficeRightLight, 0, x + sprite_width, y);
}

shader_reset();