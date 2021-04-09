/// @description Insert description here
// You can write your code in this editor
maxHP = 10;
HP = maxHP;

hsp = 0;
vsp = 0;
spd = 2;

weapon = choose(spr_pistols,spr_melee);
subweapon = irandom_range(0,3);
can_attack = true;
can_take_melee_damage = true;
gun_cooldown = room_speed/1; 
hbox = 0;
dmg=0;

walk_x = 0;
walk_y = 0;
walk_dir = 0;

target_x = 0;
target_y = 0;

flash = 1;

//Weapon Vars
isDamaging = false;
animStage = 0;
wep_rotation = 0;
startMeleeAttack = false;

input_attack = false;
input_jump = false;