/// @description Horde
draw_set_font(m5x7);
_round = 0;
enemy_quota = 1;
enemies_left = 2;
round_announce_y = -sprite_get_height(spr_round);
lerp_amount = 0;
begin_new_round = true;
animStage = 0;
global.score = 0;
global.pistol_list = ds_list_create();
global.rifle_list = ds_list_create();
global.shotgun_list = ds_list_create();
//Weapons already in game in power order.
/*
	Melee
	Makarov
	P226
	Deagle
	Remington
	Revolver
	M1 Sniper
	Sawn Off
	Benelli
	Spas 12
	UMP
	M4
	AK47
	Autoshotgun
*/