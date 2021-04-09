/// @description Insert description here
// You can write your code in this editor
maxHP = 20;
HP = maxHP;

hsp = 0;
vsp = 0;
spd = 2;
crouch=false;

_right = ord("D");
_left = ord("A");
_up = ord("W");
_down = ord("S");
_jump = vk_space;
_atk = mb_left;

weapon = choose(spr_pistols,spr_melee,spr_rifles);
subweapon = irandom_range(0,3);
hbox = 0;
dmg = 0;
can_take_melee_damage = true;
can_attack = true;
gun_cooldown = room_speed/1; 

walk_x = 0;
walk_y = 0;
walk_dir = 0;
flash = 0;

//Weapon Vars
isDamaging = false;
animStage = 0;
wep_rotation = 0;
startMeleeAttack = false;