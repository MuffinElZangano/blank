// Los recursos de Script han cambiado para la v2.3.0 Consulta

//IDlE tiene 9 Frames
function anim_idle_noweapon(){
	FRAME_RATE_m = 1/5;
	FRAME_MAX_m = 9;
	
	if(moveX!=0) animacion_m = "walk_noweapon";
	
	switch(FRAME_m){
		case 0: //FRAME 0
			manoL_x	 = -8;
			manoL_y  =  6;
			manoL_rot = -90;
			
			manoR_x  =  8;
			manoR_y  =  6;
			manoR_rot = -90;
		break;
		case 1: //FRAME 1
			manoL_x	 = -9;
			manoL_y  =  5;
			manoL_rot = -91;
			
			manoR_x  =  9;
			manoR_y  =  5;
			manoR_rot = -89;
		break;
		case 2: //FRAME 2
			manoL_x	 = -10;
			manoL_y  =  4;
			manoL_rot = -92;
			
			manoR_x  =  10;
			manoR_y  =  4;
			manoR_rot = -88;
		break;
		case 3: //FRAME 3
			manoL_x	 = -11;
			manoL_y  =  4;
			manoL_rot = -93;
			
			manoR_x  =  11;
			manoR_y  =  4;
			manoR_rot = -87;
		break;
		case 4: //FRAME 4
			manoL_x	 = -9;
			manoL_y  =  4;
			manoL_rot = -94;
			
			manoR_x  =  9;
			manoR_y  =  4;
			manoR_rot = -86;
		break;
		case 5: //FRAME 5
			manoL_x	 = -9;
			manoL_y  =  5;
			manoL_rot = -93;
			
			manoR_x  =  9;
			manoR_y  =  5;
			manoR_rot = -87;
		break;
		case 6: //FRAME 6
			manoL_x	 = -8;
			manoL_y  =  5;
			manoL_rot = -92;
			
			manoR_x  =  8;
			manoR_y  =  5;
			manoR_rot = -88;
		break;
		case 7: //FRAME 7
			manoL_x	 = -8;
			manoL_y  =  4;
			manoL_rot = -91;
			
			manoR_x  =  8;
			manoR_y  =  4;
			manoR_rot = -89;
		break;
		case 8: //FRAME 8
			manoL_rot = -90;
			manoR_rot = -90;
		break;
	}
}