/// @description Insert description here
// You can write your code in this 
switch(sprite_index){
	case spr_melee: 
	wep_name = "Melee";
	break;
	
	case spr_pistols:
		switch(image_index){
			case 0: wep_name = "Revolver" break;
			case 1: wep_name = "Makarov" break;
			case 2: wep_name = "Deagle" break;
			case 3: wep_name = "P226" break;
		}
	break;
	
	case spr_rifles:
		switch(image_index){
			case 0: wep_name = "M4" break;
			case 1: wep_name = "M1 Sniper Rifle" break;
			case 2: wep_name = "AK-47" break;
			case 3: wep_name = "UMP-T" break;
		}
	break;
	
	case spr_shotguns:
		switch(image_index){
			case 0: wep_name = "Sawn-Off" break;
			case 1: wep_name = "Remington" break;
			case 2: wep_name = "Spas-12" break;
			case 3: wep_name = "Autoshotgun" break;
		}
	break;
}