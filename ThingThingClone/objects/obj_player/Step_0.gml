/// @description Movement and inputs
input_right = keyboard_check(_right);
input_up = keyboard_check(_up);
input_down = keyboard_check(_down);
input_left = keyboard_check(_left);
input_jump = keyboard_check_pressed(_jump)
input_attack = mouse_check_button(_atk);
input_attack_pressed = mouse_check_button_pressed(_atk);
input_reload = keyboard_check_pressed(_reload);

var hmove = (input_right - input_left)

var grav = 0.2;
var decceleration = 0.6;
var acceleration = 0.1;

if (hmove!=0){
    hsp += (spd*hmove-hsp)*acceleration;
} else {
    hsp+=(spd*hmove-hsp)*decceleration;
}

//Only jump, and animate feet if theres a tile below
if(tile_meeting(x,y+1,"collision")){
	walk_dir+=hsp*(-4)
	if(input_jump)
	{
		vsp = -4.4;
	}
}else{
	//Apply gravity when there isn't any Tile below
	vsp = vsp + grav;
}

//Collisions
TileCollisions();

if(mag <= max_mag && input_reload && alarm[2]==-1 && weapon!=spr_melee){
	alarm[2] = reload_time;
	audio_play_sound(snd_reload,0,0);
}

if(HP > 0){
x+=hsp;
y+=vsp;
}