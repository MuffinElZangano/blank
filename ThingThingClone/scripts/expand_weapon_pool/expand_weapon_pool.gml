// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function expand_weapon_pool(){
	switch(_round){
		case 2: ds_list_add(global.pistol_list,1); break;
		case 3: ds_list_add(global.pistol_list,3); break;
		case 4: ds_list_add(global.pistol_list,2); break;
		case 5: ds_list_add(global.shotgun_list,1); break;
		case 6: ds_list_add(global.pistol_list,0); break;
		case 7: ds_list_add(global.rifle_list,1); break;
		case 8: ds_list_add(global.shotgun_list,0); break;
		case 9: ds_list_add(global.shotgun_list,2); break;
		case 10: ds_list_add(global.shotgun_list,3); break;
		case 11: ds_list_add(global.rifle_list,3); break;
		case 12: ds_list_add(global.rifle_list,0); break;
		case 13: ds_list_add(global.rifle_list,2); break;
	}
}