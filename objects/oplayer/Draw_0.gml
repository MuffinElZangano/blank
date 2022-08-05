/// @description Mostrar en Pantalla
//Dibujar Partes del Personaje
draw_sprite_ext(sPlayerTorso,ropa_torso,x+torso_x,y+torso_y,_xscale,1,torso_rot,c_white,1);
draw_sprite_ext(sPlayerHead,ropa_cabeza,x+cabeza_x,y+cabeza_y,_xscale,1,cabeza_rot,c_white,1);
draw_sprite_ext(sPlayerFeet,ropa_pies,x+pieL_x,y+pieL_y,_xscale,1,pieL_rot,c_white,1);
draw_sprite_ext(sPlayerFeet,ropa_pies,x+pieR_x,y+pieR_y,_xscale,1,pieR_rot,c_white,1);
draw_sprite_ext(sPlayerHands,manoL_img,x+manoL_x,y+manoL_y,1,1,manoL_rot,c_white,1);
draw_sprite_ext(sPlayerHands,manoR_img,x+manoR_x,y+manoR_y,1,-1,manoR_rot,c_white,1);