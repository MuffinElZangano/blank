/// @description Switch weapon mag
//Define Mag and Weapon Switch
switch(weapon){	
	case spr_melee:
	wep_type = 0;
	alarm[2] = 0;
	
	case spr_pistols:
	wep_type = 1;
	switch(subweapon){
		case 0: max_mag = 6; bullet_spread = 0; reload_time = room_speed*2		break;//Revolver
		case 1: max_mag = 8; bullet_spread = 3; reload_time = room_speed;		break;//Makarov
		case 2: max_mag = 7; bullet_spread = 2; reload_time = room_speed*1.5;	break;//Deagle
		case 3: max_mag = 13; bullet_spread = 5; reload_time = room_speed;		break;//Semipistol
	}
	break;
	
	case spr_rifles:
	wep_type = 2;
	switch(subweapon){
		case 0: max_mag = 25; bullet_spread = 6;  reload_time = room_speed*2; break;//M4
		case 1: max_mag = 4;  bullet_spread = 0;  reload_time = room_speed*3; break;//Sniper
		case 2: max_mag = 25; bullet_spread = 16; reload_time = room_speed*2; break;//AK47
		case 3: max_mag = 20; bullet_spread = 8;  reload_time = room_speed*1.6; break;//UMP
	}
	break;
	
	case spr_shotguns:
	wep_type = 3;
	reload_time = room_speed*3;
	switch(subweapon){
		case 0: max_mag = 2; bullet_spread = 26; reload_time = room_speed; break;//Sawn Off
		case 1: max_mag = 6; bullet_spread = 20; reload_time = room_speed*2; break;//Remington
		case 2: max_mag = 7; bullet_spread = 20; reload_time = room_speed*2.3; break;//Benelli
		case 3: max_mag = 8; bullet_spread = 20; reload_time = room_speed*2.5; break;//Spas
		case 4: max_mag = 12; bullet_spread = 32; reload_time = room_speed*3; break; //Autoshotty
	}
	break;
}
mag = max_mag;