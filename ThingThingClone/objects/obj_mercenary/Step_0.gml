target_x = instance_nearest(x,y,obj_player).x;
target_y = instance_nearest(x,y,obj_player).y;

var hmove=0;

if(collision_circle(x,y,164,obj_player,0,1)){
	if(target_x > x) hmove = 1; else
	if(target_x < x) hmove = -1;
	var attack_range;
	switch(weapon){
		case spr_melee: attack_range = 32; break;
		case spr_pistols: attack_range = 96; break;
	}
	if(collision_circle(x,y,attack_range,obj_player,0,1)){
		if(input_attack = false){
			input_attack = true;
			alarm[0] = 15;
		}
	}
}

var grav = 0.2;
var decceleration = 0.6;
var acceleration = 0.1;
    
if (hmove!=0){
    hsp += (spd*hmove-hsp)*acceleration;
} else {
    hsp+=(spd*hmove-hsp)*decceleration;
}
if(vsp=0){walk_dir+=hsp*(-4)}; //This is to animate the feet
vsp = vsp + grav;

//Collisions
if(place_meeting(x+hsp,y,obj_solid)){
	while(!place_meeting(x+sign(hsp),y,obj_solid)){
		x = x + sign(hsp);
	}
	hsp = 0;
	input_jump=true;
}else{input_jump=false;}

if(place_meeting(x,y+vsp,obj_solid)){
	while(!place_meeting(x,y+sign(vsp),obj_solid)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

if(place_meeting(x,y+1,obj_solid) && input_jump){
	vsp = -4;
}

x+=hsp;
y+=vsp;