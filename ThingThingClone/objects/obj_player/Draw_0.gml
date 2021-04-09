/// @description Insert description here
// You can write your code in this editor
var mouse_dir = point_direction(x,y,mouse_x,mouse_y);
var flipped = (mouse_x > x)*2-1;

if(walk_dir<0){walk_dir=360}
walk_x = lengthdir_x(3,walk_dir);
walk_y = lengthdir_y(3,walk_dir);
var walk_x2 = lengthdir_x(3,walk_dir-180);
var walk_y2 = lengthdir_y(3,walk_dir-180);


if(crouch){
	
}

var wep_x = lengthdir_x(16,mouse_dir);
var wep_y = lengthdir_y(16,mouse_dir);
var hand_x = 0;                  var hand2_x = 0;
var hand_y = 0;					 var hand2_y = 0;
var hand_subimg = 0;			 var hand2_subimg = 0;
var hand_rotation = 0;			 var hand2_rotation = 0;
var muzzle_x = 0;                var muzzle_y = 0;

switch(weapon){
	case spr_melee:     hand_x = lengthdir_x(16,mouse_dir);
						hand_y = lengthdir_y(16,mouse_dir)-8; 
						hand_subimg = 3; 
						hand_rotation = 90; 
						hand2_x = lengthdir_x(16,mouse_dir);
						hand2_y = lengthdir_y(16,mouse_dir)-6;
						hand2_subimg = 2;
						hand2_rotation = 90;
						break;
	case spr_pistols: 
						  wep_x = lengthdir_x(16,mouse_dir);
					      wep_y = lengthdir_y(16,mouse_dir)+4;
						  muzzle_x = lengthdir_x(16,mouse_dir);
						  hand_x = lengthdir_x(16,mouse_dir);
						  hand_y = lengthdir_y(16,mouse_dir);
						  hand_subimg = 1;
						  hand2_x = lengthdir_x(16,mouse_dir);
						  hand2_y = lengthdir_y(16,mouse_dir)+4;
						  hand2_subimg = 2;
					  break;
	case spr_rifles: 
						  wep_x = lengthdir_x(16,mouse_dir);
						  muzzle_x = lengthdir_x(28,mouse_dir);
						  muzzle_y = lengthdir_y(28,mouse_dir);
					      wep_y = lengthdir_y(16,mouse_dir)+4;
						  hand_x = lengthdir_x(16,mouse_dir);
						  hand_y = lengthdir_y(16,mouse_dir);
						  hand_subimg = 1;
						  hand2_x = lengthdir_x(28,mouse_dir);
						  hand2_y = lengthdir_y(28,mouse_dir)-4;
						  hand2_subimg = 2;
					  break;
}

switch(weapon){
	case spr_melee:
	dmg=5;
	if(input_attack){
		startMeleeAttack = true;}
		break;
			
	case spr_pistols:
	if(input_attack && can_attack){
		var bullet = instance_create_depth(x+muzzle_x,y+wep_y-9,depth,obj_bullet);
			bullet.direction = mouse_dir;
			bullet.image_angle = mouse_dir;
			bullet.owner = id;
		var snd_fire;
			animStage = 1;
			hand_subimg = 0;
			can_attack = false;
			draw_sprite_ext(spr_muzzleflash,0,x+muzzle_x,y+wep_y-9,1,1,mouse_dir,c_white,1);
			switch(subweapon){
				case 0: gun_cooldown = 45; snd_fire = snd_revolver_fire; dmg=4.5; /*Revolver*/ break;
				case 1: gun_cooldown = 15; snd_fire = snd_makarov_fire; dmg=1.5;/*Makarov*/ break;
				case 2: gun_cooldown = 35; snd_fire = snd_deagle_fire; dmg=3;/*Deagle*/ break;
				case 3: gun_cooldown = 22; snd_fire = snd_p239_fire; dmg=2.1;/*P239*/ break;
			}
			audio_play_sound(snd_fire,0,0);
	}
	switch(animStage){
		case 1:
			if(wep_rotation<16){
			wep_rotation+=4;
			}else{
			animStage = 2;
			}
		break;
					
		case 2:
			if(wep_rotation>0){
			wep_rotation-=4;
			}else{
			hand_subimg = 1;
			animStage = 0;
			}
		break;
	}
	if(gun_cooldown>0)
	{gun_cooldown--}
	else{can_attack=true;}	
	break;
	case spr_rifles:
			if(input_attack && can_attack){
			var bullet = instance_create_depth(x+muzzle_x,y+muzzle_y-6,depth,obj_bullet);
			bullet.image_index = 3;
			bullet.direction = mouse_dir;
			bullet.image_angle = mouse_dir;
			bullet.owner = id;
		var snd_fire;
			animStage = 1;
			hand_subimg = 0;
			can_attack = false;
			draw_sprite_ext(spr_muzzleflash,0,x+muzzle_x,y+muzzle_y-6,1,1,mouse_dir,c_white,1);
			switch(subweapon){
				case 0: gun_cooldown = 10; snd_fire = snd_m4_fire; dmg=1.8; /*M4*/ break;
				case 1: gun_cooldown = 90; snd_fire = snd_m1sniper_fire; dmg=9; /*M1 Sniper*/ break;
				case 2: gun_cooldown = 5; snd_fire = snd_ak47_fire; dmg=1.4;/*AK47*/ break;
				case 3: gun_cooldown = 8; snd_fire = snd_umpt_fire; dmg=1;/*UMP-T*/ break;
			}
			audio_play_sound(snd_fire,0,0);
			}
			switch(animStage){
			case 1:
				if(wep_rotation<8){
				wep_rotation+=4;
				}else{
				animStage = 2;
				}
			break;
					
			case 2:
				if(wep_rotation>0){
				wep_rotation-=4;
				}else{
				hand_subimg = 1;
				animStage = 0;
				}
			break;
	}
			if(gun_cooldown>0)
			{gun_cooldown--}
			else{can_attack=true;}	
	break;
}

if(startMeleeAttack){
		if(can_attack){
		audio_play_sound(snd_lightmelee_swing1,0,0);
		can_attack = false;
		animStage = 1;
		}
		switch(animStage){
			case 1: 
				if(wep_rotation<24)
				{
					wep_rotation+=8;
				}else{
					animStage=2;
				}
				break;
			case 2:
				if(hbox=0){
					hbox = instance_create_depth(x+wep_x,y-8+wep_y,depth,obj_meleehitbox);
				}
				hbox.owner = id;
				hbox.image_index = subweapon; hbox.image_angle = mouse_dir+(wep_rotation*flipped)-90;
				if(wep_rotation>-96){
					wep_rotation-=32;
				}else{
					animStage = 3;
				}
				break;
			case 3:
				if(wep_rotation!=0){
					wep_rotation+=4;
				}else{
					animStage = 0;
					can_attack = true;
					startMeleeAttack = false;
					hbox = 0;
				}
				break;
		}
}


#region draw_char
draw_sprite_ext(spr_playertorso,1,x,y,flipped,1,1,c_white,1);
draw_sprite_ext(spr_playerhead,3,x,y-10,1,flipped,mouse_dir,c_white,1);
draw_sprite_ext(spr_playerfeet,1,x+walk_x,y-3+walk_y,flipped,1,0,c_white,1);
draw_sprite_ext(spr_playerfeet,1,x+3+walk_x2,y-3+walk_y2,flipped,1,0,c_white,1);
draw_sprite_ext(weapon,subweapon,x+wep_x,y-8+wep_y,1,flipped,mouse_dir+(wep_rotation*flipped),c_white,1);
draw_sprite_ext(spr_playerhands,hand_subimg,x+hand_x,y+hand_y,1,flipped,mouse_dir+hand_rotation+(wep_rotation*flipped),c_white,1);
draw_sprite_ext(spr_playerhands,hand2_subimg,x+hand2_x,y+hand2_y,1,flipped,mouse_dir+hand2_rotation+(wep_rotation*flipped),c_white,1);
draw_sprite(spr_crosshair,0,mouse_x,mouse_y);
#endregion

if(flash > 0){
    flash -= 0.12;
    shader_set(spr_flash_red);
    shd_alpha = shader_get_uniform(spr_flash_red,"_alpha");
    shader_set_uniform_f(shd_alpha, flash);
	#region draw_char
	draw_sprite_ext(spr_playertorso,1,x,y,flipped,1,1,c_white,1);
	draw_sprite_ext(spr_playerhead,3,x,y-10,1,flipped,mouse_dir,c_white,1);
	draw_sprite_ext(spr_playerfeet,1,x+walk_x,y-3+walk_y,flipped,1,0,c_white,1);
	draw_sprite_ext(spr_playerfeet,1,x+3+walk_x2,y-3+walk_y2,flipped,1,0,c_white,1);
	draw_sprite_ext(weapon,subweapon,x+wep_x,y-8+wep_y,1,flipped,mouse_dir+(wep_rotation*flipped),c_white,1);
	draw_sprite_ext(spr_playerhands,hand_subimg,x+hand_x,y+hand_y,1,flipped,mouse_dir+hand_rotation+(wep_rotation*flipped),c_white,1);
	draw_sprite_ext(spr_playerhands,hand2_subimg,x+hand2_x,y+hand2_y,1,flipped,mouse_dir+hand2_rotation+(wep_rotation*flipped),c_white,1);
	draw_sprite(spr_crosshair,0,mouse_x,mouse_y);
	#endregion
	shader_reset();
}
