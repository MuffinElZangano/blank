/// @description Insert description here
// You can write your code in this editor
//draw_set_font(PixelFont2);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
view_width=1920/5; view_height=1080/5;
window_scale = 3;
window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;
display_set_gui_size(view_width,view_height);
surface_resize(application_surface,view_width*window_scale,view_height*window_scale);