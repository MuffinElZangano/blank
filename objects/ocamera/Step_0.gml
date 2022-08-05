/// @description Always follow the player
#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height);

if(instance_exists(oPlayer)){
	var _x = clamp(oPlayer.x-view_width/2,0,room_width-view_width);
	var _y = clamp(oPlayer.y-view_height/2,0,room_height-view_height);
	camera_set_view_pos(view,_x,_y);
	
	var cur_x = camera_get_view_x(view);
	var cur_y = camera_get_view_y(view);
	
	var _spd = 0.1;
	camera_set_view_pos(view,lerp(cur_x,_x,_spd),lerp(cur_y,_y,_spd));
}

if(keyboard_check_pressed(vk_f8)){
	if(window_scale < 6 && (view_width*(window_scale+1)) < display_get_width()){
		window_scale++;
	}else{
		window_scale = 1;
	}
	event_user(0);
}

if(keyboard_check_pressed(vk_f9)){
	window_set_fullscreen(!window_get_fullscreen());
}