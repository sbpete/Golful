/// draw shadow FIRST
if (!won) scr_draw_shadow();

// draw sprite 3d rotation
scr_draw_sprite_offset_3d_z(image_alpha);

// no draw feet

// draw hat
draw_hat();