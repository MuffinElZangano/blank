/// @description Input declare and Randomize Gun
randomize();
maxHP = 50;
HP = 1;

hsp = 0;
vsp = 0;
spd = 2;

_right = ord("D");
_left = ord("A");
_up = ord("W");
_down = ord("S");
_reload = ord("R");
_jump = vk_space;
_atk = mb_left;

hbox = 0;
dmg = 0;
can_take_melee_damage = true;
can_attack = true;
gun_cooldown = room_speed/1; 
reload_time = room_speed*2;
bullet_spread = 0;

head = irandom_range(0,3);
torso = irandom_range(0,3);
feet = irandom_range(0,2);

walk_x = 0;
walk_y = 0;
walk_dir = 0;
flash = 0;

weapon = spr_melee; //Weapon Type
subweapon = irandom_range(0,3);

max_ammo[0] = -1; //Melee
max_ammo[1] = 36; //Pistols
max_ammo[2] = 60; //Rifles
max_ammo[3] = 24; //Shotgun

ammo[0] = -1; //Melee
ammo[1] = 48; //Pistols
ammo[2] = 60; //Rifles
ammo[3] = 24; //Shotgun

//Weapon Vars
max_mag = 0;
mag = max_mag;
wep_type = 0;
isDamaging = false;
animStage = 0;
wep_rotation = 0;
startMeleeAttack = false;
event_user(0);