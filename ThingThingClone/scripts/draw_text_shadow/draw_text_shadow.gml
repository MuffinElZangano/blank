// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_shadow(x,y,_string){
	draw_text_color(x,y+1,_string,c_black,c_black,c_black,c_black,1);
	draw_text(x,y,_string);
}