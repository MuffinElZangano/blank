/// @description Insert description here
// You can write your code in this editor
if(other.owner!=id){
HP-=other.owner.dmg;
flash = 1;

if(HP<=0){
	var torso = instance_create_depth(x,y,depth,obj_ragdollpart); torso.sprite_index=spr_playertorso; torso.image_index=3;
	var head  = instance_create_depth(x,y,depth,obj_ragdollpart); head.sprite_index=spr_playerhead; head.image_index=2;
	var hand1 = instance_create_depth(x,y,depth,obj_ragdollpart); hand1.sprite_index=spr_playerhands; hand1.image_index=0;
	var hand2 = instance_create_depth(x,y,depth,obj_ragdollpart); hand2.sprite_index=spr_playerhands; hand2.image_index=0;
	var foot1 = instance_create_depth(x,y,depth,obj_ragdollpart); foot1.sprite_index=spr_playerfeet; foot1.image_index=0;
	var foot2 = instance_create_depth(x,y,depth,obj_ragdollpart); foot2.sprite_index=spr_playerfeet; foot2.image_index=0;
	instance_destroy();
	}
}