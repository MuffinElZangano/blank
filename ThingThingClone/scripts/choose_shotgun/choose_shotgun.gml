// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_shotgun(){
	if(ds_list_size(global.shotgun_list) > 0){
		weapon = spr_shotguns;
		subweapon = ds_list_find_value(global.shotgun_list,irandom_range(0,ds_list_size(global.shotgun_list)-1));
	}
}