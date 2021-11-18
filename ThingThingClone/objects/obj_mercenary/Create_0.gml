/// @description Insert description here
// You can write your code in this editor
maxHP = 10;
HP = maxHP;

hsp = 0;
vsp = 0;
spd = 2;

weapon = spr_melee;
subweapon = irandom_range(0,3);

script_execute(
	choose(
		choose_pistol,
		choose_rifle,
		choose_shotgun)
);
can_attack = true;
can_take_melee_damage = true;
gun_cooldown = room_speed/1; 
max_mag = 6;
hbox = 0;
dmg=0;
bullet_spread = 0;

walk_x = 0;
walk_y = 0;
walk_dir = 0;

target_x = 0;
target_y = 0;

flash = 1;

head = irandom_range(0,sprite_get_number(spr_playerhead)-1);
torso = irandom_range(0,sprite_get_number(spr_playertorso)-1);
feet = irandom_range(0,sprite_get_number(spr_playerfeet)-1);

//Weapon Vars
isDamaging = false;
animStage = 0;
wep_rotation = 0;
startMeleeAttack = false;

input_attack = false;
input_jump = false;

switch(weapon){
	case spr_pistols:
	switch(subweapon){
		case 0: max_mag = 6; bullet_spread = 0; break;//Revolver
		case 1: max_mag = 8; bullet_spread = 7; break;//Makarov
		case 2: max_mag = 7; bullet_spread = 6; break;//Deagle
		case 3: max_mag = 13; bullet_spread = 9; break;//Semipistol
	}
	break;
	
	case spr_rifles:
	switch(subweapon){
		case 0: max_mag = 25; bullet_spread = 6; break;//M4
		case 1: max_mag = 4;  bullet_spread = 0; break;//Sniper
		case 2: max_mag = 25; bullet_spread = 16; break;//AK47
		case 3: max_mag = 20; bullet_spread = 8; break;//UMP
	}
	break;
	
	case spr_shotguns:
	switch(subweapon){
		case 0: max_mag = 2; bullet_spread = 20; break;//Sawn Off
		case 1: max_mag = 6; bullet_spread = 12; break;//Remington
		case 2: max_mag = 8; bullet_spread = 12; break;//Benelli
		case 3: max_mag = 8; bullet_spread = 10; break;//Spas
		case 4: max_mag = 12; bullet_spread = 16; break; //Autoshotty
	}
	break;
}

mag = max_mag;