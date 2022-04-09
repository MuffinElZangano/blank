/// @description Control Hordes
enemies_left = instance_number(obj_mercenary);
if(enemies_left == 0){
	event_user(0);
}
if(enemy_quota == 0){
	instance_deactivate_object(obj_enemyspawn);
}