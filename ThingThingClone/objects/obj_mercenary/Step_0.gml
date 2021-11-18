if(obj_player.HP > 0){
target_x = instance_nearest(x,y,obj_player).x;
target_y = instance_nearest(x,y,obj_player).y;
}

var hmove=0;
var sight_range = 256;

if(collision_circle(x,y,sight_range,obj_player,0,1)){
	var attack_range;
	switch(weapon){
		case spr_melee: attack_range = 32; break;
		case spr_pistols: attack_range = 136; break;
		case spr_rifles: attack_range = 128; break;
		case spr_shotguns: attack_range = 96; break;
	}
	if(collision_circle(x,y,attack_range,obj_player,0,1) && obj_player.HP > 0){
		if(input_attack = false && mag > 0){
			input_attack = true;
			alarm[0] = 15;
		}
	}else{
		if(target_x > x+36) hmove = 1; else
		if(target_x < x-36) hmove = -1;
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
if(vsp >= 0){
	walk_dir += hsp*(-4)
	}; //This is to animate the feet
vsp = vsp + grav;

//Horizontal
if(tile_meeting(x+hsp,y,"collision")){
	repeat(abs(hsp)){
		if(!tile_meeting(x+sign(hsp),y,"collision")){
			x += sign(hsp)} else{break;}
		}
	hsp = 0;
	input_jump = true;
}else{
	input_jump = false;
}

//Vertical
if(tile_meeting(x,y+vsp,"collision")){
	repeat(abs(vsp)){
		if(!tile_meeting(x,y+sign(vsp),"collision")){
			y += sign(vsp)} else{break;}
		}
		vsp = 0;
	}

if(tile_meeting(x,y+1,"collision") && input_jump){
	vsp = -4;
}

x+=hsp;
y+=vsp;