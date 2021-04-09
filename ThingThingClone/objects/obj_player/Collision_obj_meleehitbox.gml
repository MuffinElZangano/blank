/// @description Insert description here
// You can write your code in this editor
if(can_take_melee_damage && other.owner!=id){
	HP-=2;
	flash = 1;
	alarm[1]=15;
	audio_play_sound(snd_lightmelee_hit1,0,0);
	can_take_melee_damage = false;
}