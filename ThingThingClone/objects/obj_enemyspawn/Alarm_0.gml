/// @description Insert description here
// You can write your code in this editor
if(obj_game.enemy_quota > 0){
	instance_create_depth(x,y,depth,obj_mercenary);
	obj_game.enemy_quota-=1;
	alarm[0] = timer*room_speed;
}