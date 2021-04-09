/// @description Insert description here
// You can write your code in this editor
input_right = keyboard_check(_right);
input_up = keyboard_check(_up);
input_down = keyboard_check(_down);
input_left = keyboard_check(_left);
input_jump = keyboard_check_pressed(_jump)
input_attack = mouse_check_button(_atk);
input_attack_pressed = mouse_check_button_pressed(_atk);
input_swapup = mouse_wheel_up();
input_swapdown = mouse_wheel_down();

var hmove = (input_right - input_left)

var grav = 0.2;
var decceleration = 0.6;
var acceleration = 0.1;
    
if (hmove!=0){
    hsp += (spd*hmove-hsp)*acceleration;
} else {
    hsp+=(spd*hmove-hsp)*decceleration;
}
if(vsp=0){walk_dir+=hsp*(-4)};
vsp = vsp + grav;

//Collisions
if(place_meeting(x+hsp,y,obj_solid)){
	while(!place_meeting(x+sign(hsp),y,obj_solid)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

if(place_meeting(x,y+vsp,obj_solid)){
	while(!place_meeting(x,y+sign(vsp),obj_solid)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

if(place_meeting(x,y+1,obj_solid)){
	if(input_jump)
	{vsp = -4;}
	if(input_down){
		crouch = true;
	}
}

x+=hsp;
y+=vsp;