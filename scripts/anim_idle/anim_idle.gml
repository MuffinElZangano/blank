// Los recursos de Script han cambiado para la v2.3.0 Consulta

//IDlE tiene 9 Frames
function anim_idle(){
	FRAME_RATE = 1/5;
	FRAME_MAX = 9;
	
	if(moveX!=0) animacion = "walk";
	
	switch(FRAME){
		case 0: //FRAME 0
			cabeza_y = -17;
			
			pieL_x   = -4;
			pieL_y   =  14;
			pieL_rot =  0;
			
			pieR_x   =  4;
			pieR_y   =  14;
			pieR_rot =  0;
		break;
		case 1: //FRAME 1
			cabeza_y = -18;
			torso_y = -1;
		break;
		case 2: //FRAME 2
			cabeza_y = -19;

		break;
		case 3: //FRAME 3
			torso_y = -2;

		break;
		case 5: //FRAME 5
			cabeza_y = -18;
			torso_y = -1;
		break;
		case 6: //FRAME 6
			cabeza_y = -18;
		break;
		case 7: //FRAME 7
			cabeza_y = -17;
			torso_y = 0;
		break;
	}
}