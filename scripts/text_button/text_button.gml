// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function text_button(x,y,width,height,enable_shadow,text,text_base_color,text_hover_color,text_press_color,run_file){
	//Controla el color final que se imprime en pantalla
	var _tcolor = text_base_color;
	draw_set_valign(fa_middle);
	
	//HOVER
	if(device_mouse_x_to_gui(0) > x && device_mouse_x_to_gui(0) < x+width
	&& device_mouse_y_to_gui(0) > y && device_mouse_y_to_gui(0) < y+height){
		_tcolor = text_hover_color
		//PRESS
		if(mouse_check_button(mb_left)){
			_tcolor = text_press_color;
		}
		//RELEASE
		if(mouse_check_button_released(mb_left)){
			script_execute(run_file);
		}
	}
	if(enable_shadow == true && _tcolor!= text_press_color){
	draw_text_color((x+(x+width))/2,((y+(y+height))/2),text,c_black,c_black,c_black,c_black,0.5);
	}
	draw_text_color((x+(x+width))/2,((y+(y+height))/2)-1,text,_tcolor,_tcolor,_tcolor,_tcolor,1);
	draw_set_valign(fa_top);
}