/// @description GUI
draw_sprite_ext(spr_healthbar,0,20,10,1,1,0,c_white,1);
draw_sprite_part(spr_healthbar,1,0,0,(HP/maxHP)*32,16,20,10);
draw_sprite_ext(spr_healthcross,((HP/maxHP)*3),10,10,1,1,0,c_white,1);
draw_set_halign(fa_right);
draw_text_shadow(360,10,"Score: "+string(global.score));
draw_set_halign(fa_left);
//Draw Equipped Weapon below healthbar
var rot = 45;
switch(weapon){
	case spr_melee: 
		rot = -90; 
		break;
	default: 
		rot = 0;
		draw_text_shadow(15,35,string(mag)+"/"+string(ammo[wep_type]));
		break;
}

draw_sprite_ext(weapon,subweapon,25,30,1,1,rot,c_white,0.8);
var drop = instance_place(x,y+1,obj_dropweapon);
if(drop){
	draw_set_halign(fa_center);
	draw_text_shadow(190,180,"Press 'E' to swap for "+string(drop.wep_name));
	draw_set_halign(fa_left);
	if(keyboard_check_pressed(ord("E")) && !startMeleeAttack){
	var myDrop = instance_create_depth(x,y,depth,obj_dropweapon);
		myDrop.sprite_index = weapon;
		myDrop.image_index = subweapon;
		myDrop.ammo_left = mag;
		weapon = drop.sprite_index;
		subweapon = drop.image_index;
		event_user(0);
		mag = drop.ammo_left;
		if(alarm[2]>0){
			alarm[2] = 0;
		}
		with(drop){
			instance_destroy();
		}
	}
}

for(var j=0; j<3; j++){
	draw_sprite(spr_casings,j,70+(16*j),10);
	draw_set_halign(fa_center);
	draw_text_shadow(73+(16*j),14,string(ammo[j+1]));
	draw_set_halign(fa_left);
}
