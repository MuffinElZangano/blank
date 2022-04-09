/// @description Destroy on collision
if(tile_meeting(x,y+1,"collision") || place_meeting(x,y,obj_mercenary)){
	sprite_index = spr_bullet_destroy;
	image_speed = 1;
	speed = 0;
	if(!collide) image_index = 0; collide = true;
}