///@description 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_text_colour(300, 300/*room_width - 500*/, string(global.score), 255, 255, 255, 255, 255);
//draw_text(300, 300/*room_width - 500*/, string(score));
draw_text_transformed(room_width - 100, room_height -100, score, 1, 1, 0);