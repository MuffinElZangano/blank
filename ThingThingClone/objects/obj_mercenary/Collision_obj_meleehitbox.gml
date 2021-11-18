/// @description Alarm and Flash
if(can_take_melee_damage  && other.owner!=id){
	HP-=other.owner.dmg;
	flash = 1;
	alarm[1]=15;
	audio_play_sound(snd_lightmelee_hit1,0,0);
	can_take_melee_damage = false;
	
#region Death
if(HP<=0){
	var r_torso = instance_create_depth(x,y,depth,obj_ragdollpart); r_torso.sprite_index=spr_playertorso; r_torso.image_index=torso;
	var r_head  = instance_create_depth(x,y,depth,obj_ragdollpart); r_head.sprite_index=spr_playerhead; r_head.image_index=head;
	var hand1 = instance_create_depth(x,y,depth,obj_ragdollpart); hand1.sprite_index=spr_playerhands; hand1.image_index=0;
	var hand2 = instance_create_depth(x,y,depth,obj_ragdollpart); hand2.sprite_index=spr_playerhands; hand2.image_index=0;
	var foot1 = instance_create_depth(x,y,depth,obj_ragdollpart); foot1.sprite_index=spr_playerfeet; foot1.image_index=feet;
	var foot2 = instance_create_depth(x,y,depth,obj_ragdollpart); foot2.sprite_index=spr_playerfeet; foot2.image_index=feet;
	var wep = instance_create_depth(x,y,depth,obj_dropweapon); wep.sprite_index = weapon; wep.image_index = subweapon; wep.ammo_left = mag;
	var drop_item = irandom_range(0,10);
	if(drop_item > 5){
		//Drop ammo
		var ammo = instance_create_depth(x,y,depth,obj_item);
		ammo.image_index = choose(2,5);
	}
	if(drop_item > 8){
		//Drop health
		var medkit = instance_create_depth(x,y,depth,obj_item);
		medkit.image_index = choose(1,2);
	}
	global.score += 150;
	instance_destroy();
}
#endregion
}