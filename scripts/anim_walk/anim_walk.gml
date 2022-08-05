// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function anim_walk(){
	FRAME_RATE = 1/5;
	FRAME_MAX = 14;
	
	if(moveX == 0) animacion = "idle";
	
	switch(FRAME){
		case 0: //FRAME 0
			cabeza_y = -17;
			
			pieL_x   = -4;
			pieL_y   =  14;
			
			pieR_x   =  4;
			pieR_y   =  14;
		break;
		
		case 1: //FRAME 1
			cabeza_x = 1;
			torso_rot = 1;
			
			pieL_x	 = -3;
			pieL_y	 = 13;
			pieL_rot = -3;
			
			pieR_x	 = 4;
			pieR_y	 = 15;
			pieR_rot = 3;
		break;
		
		case 2: //FRAME 2
			torso_rot = 2;
			
			pieL_y	 = 14;
			pieL_rot = -4;
			
			pieR_x   = 6;
			pieR_y	 = 16;
			pieR_rot = 4;
		break;
	}
}