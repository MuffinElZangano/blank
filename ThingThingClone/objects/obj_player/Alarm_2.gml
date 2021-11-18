/// @description Refill mag
var diff = max_mag-mag;
if(ammo[wep_type] > diff){
	ammo[wep_type] -= diff;
	mag += diff;
}else{
	mag += ammo[wep_type];
	ammo[wep_type] = 0;
}
audio_play_sound(snd_reloadf,0,0);
alarm[0] = room_speed;