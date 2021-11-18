/// @description round announce
var half_w = obj_camera.view_width/2;

if(begin_new_round){
	draw_sprite(spr_round,0,half_w,round_announce_y);
	switch(animStage){
		case 0: //Bring the sign down
			round_announce_y = lerp(round_announce_y,30,lerp_amount);
			lerp_amount+=0.02;
			if(lerp_amount >= 1){
				alarm[0] = room_speed * 3;
				audio_play_sound(snd_getready,1,0);
				_round+=1;
				animStage = 1;
			}
		break;
		
		case 1: //Hold it
			draw_text_shadow(half_w,round_announce_y+30,string(_round));
		break;
		
		case 2: //Bring it up and begin round
			round_announce_y = lerp(round_announce_y,-sprite_get_height(spr_round),lerp_amount);
			draw_text_shadow(half_w,round_announce_y+30,string(_round));
			lerp_amount+=0.02;
			//Reset variables
			if(lerp_amount >= 1){
				animStage = 0;
				lerp_amount = 0;
				instance_activate_object(obj_enemyspawn);
				expand_weapon_pool();
				enemy_quota = (_round*2);
				obj_enemyspawn.alarm[0] = obj_enemyspawn.timer*room_speed;
				begin_new_round = false;
			}
		break;
	}
}