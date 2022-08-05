/// @description Actualización
//Input y Control
moveX = (keyboard_check(key_right) - keyboard_check(key_left)) * moveSpeed;

x += moveX;

//Animación
switch(animacion){
	case "idle":	   anim_idle();			break;
	case "walk":	   anim_walk();			break;
}

switch(arma_equipada){
	case -1:
		switch(animacion_m){
			case "idle_noweapon":	   anim_idle_noweapon(); break;
			//case "walk_noweapon":      anim_walk_noweapon(); break;
		}
}

FRAME = clamp_loop(FRAME,FRAME_MAX,FRAME_RATE);
FRAME_m = clamp_loop(FRAME_m,FRAME_MAX_m,FRAME_RATE_m);