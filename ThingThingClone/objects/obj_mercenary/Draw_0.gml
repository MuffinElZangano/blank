/// @description Insert description here
// You can write your code in this editor
var target_dir = point_direction(x,y,target_x,target_y);
var flipped = (target_x > x)*2-1;

if(walk_dir<0){
	walk_dir = 360;
	}
if(walk_dir>360){
	walk_dir = 0;
}
walk_x = lengthdir_x(3,walk_dir);
walk_y = lengthdir_y(1,walk_dir);
var walk_x2 = lengthdir_x(3,walk_dir-180);
var walk_y2 = lengthdir_y(3,walk_dir-180);

//--------- Handle weapon aim, hands and muzzle coordinates.
var wep_x = lengthdir_x(16,target_dir);
var wep_y = lengthdir_y(16,target_dir);
var hand_x = 0;                  var hand2_x = 0;
var hand_y = 0;					 var hand2_y = 0;
var hand_subimg = 0;			 var hand2_subimg = 0;
var hand_rotation = 0;			 var hand2_rotation = 0;
var muzzle_x = 0;				 var muzzle_y = 0;
var reload_time = room_speed*3;
//--------- This region handles both hands positions and their images
#region Handle Hand coordinates and images relative to aim.
switch(weapon){
	case spr_melee:     hand_x = lengthdir_x(16,target_dir);
						hand_y = lengthdir_y(16,target_dir)-8; 
						hand_subimg = 3; 
						hand_rotation = 90; 
						hand2_x = lengthdir_x(16,target_dir);
						hand2_y = lengthdir_y(16,target_dir)-6;
						hand2_subimg = 2;
						hand2_rotation = 90;
						break;
	case spr_pistols: 
						  wep_x = lengthdir_x(16,target_dir);
					      wep_y = lengthdir_y(16,target_dir)+4;
						  muzzle_x = lengthdir_x(16,target_dir);
						  hand_x = lengthdir_x(16,target_dir);
						  hand_y = lengthdir_y(16,target_dir);
						  hand_subimg = 1;
						  hand2_x = lengthdir_x(16,target_dir);
						  hand2_y = lengthdir_y(16,target_dir)+4;
						  hand2_subimg = 2;
					  break;
	case spr_rifles: 
						  wep_x = lengthdir_x(16,target_dir);
						  muzzle_x = lengthdir_x(28,target_dir);
						  muzzle_y = lengthdir_y(28,target_dir);
					      wep_y = lengthdir_y(16,target_dir)+4;
						  hand_x = lengthdir_x(16,target_dir);
						  hand_y = lengthdir_y(16,target_dir);
						  hand_subimg = 1;
						  hand2_x = lengthdir_x(28,target_dir);
						  hand2_y = lengthdir_y(28,target_dir)-4;
						  hand2_subimg = 2;
					  break;
	case spr_shotguns: 
						  wep_x = lengthdir_x(12,target_dir);
						  muzzle_x = lengthdir_x(28,target_dir);
						  muzzle_y = lengthdir_y(28,target_dir);
					      wep_y = lengthdir_y(12,target_dir);
						  hand_x = lengthdir_x(16,target_dir);
						  hand_y = lengthdir_y(16,target_dir);
						  hand_subimg = 1;
						  hand2_x = lengthdir_x(28,target_dir);
						  hand2_y = lengthdir_y(28,target_dir)-4;
						  hand2_subimg = 2;
					  break;
}
#endregion
//--------- This region handles gun animations and their stats (including melee)
#region Handle Attacks relative to weapon type equipped.
switch(weapon){
	case spr_melee:
	if(input_attack){
		startMeleeAttack = true;}
		break;
			
	case spr_pistols:
	if(input_attack && can_attack){
		var bullet = instance_create_depth(x+wep_x,y+wep_y-9,depth,obj_bullet);
			bullet.direction = target_dir+irandom_range(-bullet_spread,bullet_spread);
			bullet.image_angle = target_dir;
			bullet.owner = id;
		var snd_fire;
			animStage = 1;
			hand_subimg = 0;
			can_attack = false;
			draw_sprite_ext(spr_muzzleflash,0,x+wep_x,y+wep_y-9,1,1,target_dir,c_white,1);
			switch(subweapon){
				case 0: gun_cooldown = 45; snd_fire = snd_revolver_fire; dmg = 5;  /*Revolver*/ break;
				case 1: gun_cooldown = 15; snd_fire = snd_makarov_fire;  dmg = 1.5;/*Makarov*/ break;
				case 2: gun_cooldown = 35; snd_fire = snd_deagle_fire;   dmg = 3;  /*Deagle*/ break;
				case 3: gun_cooldown = 22; snd_fire = snd_p239_fire;     dmg = 2.2;  /*P239*/ break;
			}
			audio_play_sound(snd_fire,0,0);
			mag--;
			if(mag <= 0){
				audio_play_sound(snd_reload,0,0);
				alarm[2] = reload_time;
			}
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
			bullet.image_index = 1;
			bullet.direction = target_dir+irandom_range(-bullet_spread,bullet_spread);
			bullet.image_angle = target_dir;
			bullet.owner = id;
		var snd_fire;
			animStage = 1;
			hand_subimg = 0;
			can_attack = false;
			draw_sprite_ext(spr_muzzleflash,0,x+muzzle_x,y+muzzle_y-6,1,1,target_dir,c_white,1);
			switch(subweapon){
				case 0: gun_cooldown = 10; snd_fire = snd_m4_fire; dmg=1.8; /*M4*/ break;
				case 1: gun_cooldown = 90; snd_fire = snd_m1sniper_fire; dmg=9;/*M1 Sniper*/ break;
				case 2: gun_cooldown = 5; snd_fire = snd_ak47_fire; dmg=1.4;  /*AK47*/ break;
				case 3: gun_cooldown = 8; snd_fire = snd_umpt_fire; dmg=1; /*UMP-T*/ break;
			}
			audio_play_sound(snd_fire,0,0);
			mag--;
			if(mag <= 0){
				audio_play_sound(snd_reload,0,0);
				alarm[2] = reload_time;
				}
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

	case spr_shotguns:
		if(input_attack && can_attack && mag > 0){
			//We want to spawn 6 bullets for shotguns
			for(var i=0;i<6;i++){
			var bullet = instance_create_depth(x+muzzle_x,y+muzzle_y-6,depth,obj_bullet);
				bullet.image_index = 2;
				bullet.direction = target_dir+irandom_range(-bullet_spread,bullet_spread);
				bullet.image_angle = target_dir;
				bullet.owner = id;
				}
				var snd_fire;
				//AnimStage 1 is Firing the gun. This allows us to animate through code.
				animStage = 1;
				hand_subimg = 0;
				can_attack = false;
				draw_sprite_ext(spr_muzzleflash,0,x+muzzle_x,y+muzzle_y-6,1,1,target_dir,c_white,1);
				//Subweapons are weapons belonging to a weapon type, they are part of their sprite as subimages.
				//Different subweapons got different rates of fire, damage and sound
				switch(subweapon){
					case 0: gun_cooldown = 50; snd_fire = snd_m4_fire; dmg=1.8; /*Sawn Off*/ break;
					case 1: gun_cooldown = 50; snd_fire = snd_m1sniper_fire; dmg=1.5; /*Remington*/ break;
					case 2: gun_cooldown = 40; snd_fire = snd_ak47_fire; dmg=1.4;/*Benelli*/ break;
					case 3: gun_cooldown = 45; snd_fire = snd_umpt_fire; dmg=1.3;/*Spas*/ break;
					case 4: gun_cooldown = 17; snd_fire = snd_umpt_fire; dmg=0.8;/*Autoshotty*/ break;
				}
				audio_play_sound(snd_fire,0,0);
				mag--;
				if(mag <= 0){
					alarm[2] = reload_time;
					audio_play_sound(snd_reload,0,0);
					}
			}
			switch(animStage){
			case 1:
			//AnimStage 1 is Firing the gun.
				if(wep_rotation<8){
					wep_rotation+=4;
				}else{
					//AnimStage 2 is lowering the gun back down.	
					animStage = 2;
				}
			break;
			case 2:
			//Begin AnimStage 2
				if(wep_rotation>0){
				wep_rotation-=4;
				}else{
				hand_subimg = 1;
				animStage = 0;
				}
			break;
			}
			//Rate of Fire
			if(gun_cooldown>0)
			{
				gun_cooldown--;
			}
			else{
				can_attack=true;
			}
			
	break;
		//Finish switch
	
}
#endregion
//--------- This region handles melee animations
#region Handle Melee Weapon animations
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
						hbox.image_index = subweapon; hbox.image_angle = target_dir+(wep_rotation*flipped);
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
#endregion
//--------- Everything in these regions are about drawing the character.
#region Draw_Character
	draw_sprite_ext(spr_playertorso,torso,x,y,flipped,1,1,c_white,1);
	draw_sprite_ext(spr_playerhead,head,x,y-10,1,flipped,target_dir,c_white,1);
	draw_sprite_ext(spr_playerfeet,feet,x+walk_x,y-3+walk_y,flipped,1,0,c_white,1);
	draw_sprite_ext(spr_playerfeet,feet,x+3+walk_x2,y-3+walk_y2,flipped,1,0,c_white,1);
	draw_sprite_ext(weapon,subweapon,x+wep_x,y-8+wep_y,1,flipped,target_dir+(wep_rotation*flipped),c_white,1);
	draw_sprite_ext(spr_playerhands,hand_subimg,x+hand_x,y+hand_y,1,flipped,target_dir+hand_rotation+(wep_rotation*flipped),c_white,1);
	draw_sprite_ext(spr_playerhands,hand2_subimg,x+hand2_x,y+hand2_y,1,flipped,target_dir+hand2_rotation+(wep_rotation*flipped),c_white,1);
	if(alarm[2] >= 0){
		draw_rectangle(x-8,y-32,x+8,y-28,1);
		draw_rectangle(x-7,y-31,(x-7)+(alarm[2]/reload_time*14),y-29,0);
	}
#endregion
#region Hitflash
if(flash > 0){
    flash -= 0.12;
    shader_set(spr_flash_red);
    shd_alpha = shader_get_uniform(spr_flash_red,"_alpha");
    shader_set_uniform_f(shd_alpha, flash);
	#region Draw_Character
		draw_sprite_ext(spr_playertorso,3,x,y,flipped,1,1,c_white,1);
	draw_sprite_ext(spr_playerhead,2,x,y-10,1,flipped,target_dir,c_white,1);
	draw_sprite_ext(spr_playerfeet,0,x+walk_x,y-3+walk_y,flipped,1,0,c_white,1);
	draw_sprite_ext(spr_playerfeet,0,x+3+walk_x2,y-3+walk_y2,flipped,1,0,c_white,1);
	draw_sprite_ext(weapon,subweapon,x+wep_x,y-8+wep_y,1,flipped,target_dir+(wep_rotation*flipped),c_white,1);
	draw_sprite_ext(spr_playerhands,hand_subimg,x+hand_x,y+hand_y,1,flipped,target_dir+hand_rotation+(wep_rotation*flipped),c_white,1);
	draw_sprite_ext(spr_playerhands,hand2_subimg,x+hand2_x,y+hand2_y,1,flipped,target_dir+hand2_rotation+(wep_rotation*flipped),c_white,1);
	#endregion
	shader_reset();
}
#endregion