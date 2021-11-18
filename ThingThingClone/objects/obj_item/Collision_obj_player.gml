/// @description Obtain according to image
switch(image_index){
	case 1: 
	if(other.HP < other.maxHP){
	other.HP += 15; 
	other.HP = clamp(other.HP,0,other.maxHP);
	audio_play_sound(snd_pickup_health,0,0);
	}
	break; //Small medkit
	
	case 2:	if(other.HP < other.maxHP){
	other.HP += 30; 
	other.HP = clamp(other.HP,0,other.maxHP);
	audio_play_sound(snd_pickup_health,0,0);
	}
	break; //Large medkit
	
	case 3: if(other.ammo[1] < other.max_ammo[1]){
	other.ammo[1] += 24; 
	clamp(other.ammo[1],0, other.max_ammo[1]);
	}
	break; //Pistol ammo
	
	case 4: if(other.ammo[2] <  other.max_ammo[2]){
	other.ammo[2] += 30; 
	clamp(other.ammo[2],0, other.max_ammo[2]);
	}
	break; //Rifle ammo
	
	case 5: if(other.ammo[3] <  other.max_ammo[3]){
	other.ammo[3] += 12; 
	clamp(other.ammo[3],0, other.max_ammo[3]);
	}
	break;//Shotgun ammo
}
audio_play_sound(snd_pickup_ammo,0,0);
instance_destroy();