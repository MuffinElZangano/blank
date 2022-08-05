// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function button(x,y,width,height,outline,text,text_base_color,text_hover_color,text_press_color,
										base_color,hover_color,press_color,run_file){
	//Controla el color final que se imprime en pantalla
	var _color = base_color;
	var _tcolor = text_base_color;
	
	draw_set_valign(fa_middle);
	
	//HOVER
	if(device_mouse_x_to_gui(0) > x && device_mouse_x_to_gui(0) < x+width
	&& device_mouse_y_to_gui(0) > y && device_mouse_y_to_gui(0) < y+height){
		_color = hover_color;
		_tcolor = text_hover_color
		//PRESS
		if(mouse_check_button(mb_left)){
			_color = press_color;
			_tcolor = text_press_color;
		}
		//RELEASE
		if(mouse_check_button_released(mb_left)){
			script_execute(run_file);
		}
	}
	draw_rectangle_color(x,y,x+width,y+height,_color,_color,_color,_color,outline);
	draw_text_color((x+(x+width))/2,((y+(y+height))/2)-1,text,_tcolor,_tcolor,_tcolor,_tcolor,1);
	draw_set_valign(fa_top);
}