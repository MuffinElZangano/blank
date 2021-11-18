// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_pistol(){
	if(ds_list_size(global.pistol_list) > 0){
		weapon = spr_pistols;
		subweapon = ds_list_find_value(global.pistol_list,irandom_range(0,ds_list_size(global.pistol_list)-1));
	}
}