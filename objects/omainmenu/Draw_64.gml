/// @description Dibujo del Menú
var dis_w = display_get_gui_width();
var dis_h = display_get_gui_height();

//NavBar = Barra de Navegación
//Colores personalizados
var _purple = rgb(120,90,160);
var _lightpurple = rgb(180,60,205);
var _darkpurple = rgb(110,27,90);
var _gold = rgb(245,182,12);
var _white = rgb(230,230,230);
var _dkgray = rgb(50,30,50);

//Dibujado NavBar Body
draw_rectangle_color(0,0,dis_w,40,
						_lightpurple,
						_lightpurple,
						_purple,
						_purple,
						0);
//Estas variables definen la altura y coordenada Y de todos los botones en la NavBar
var default_y = 10;
var default_h = 20;

//Play Button
var play_x = 15;
var play_w = 25;
text_button(play_x,default_y,play_w,default_h,true,"Play",_white,_gold,_dkgray,playtest);

//Settings Button
var settings_x = 60;
var settings_w = 50;
text_button(settings_x,default_y,settings_w,default_h,true,"Settings",_white,_gold,_dkgray,debug);

//Quit button
var quit_x = dis_w-40;
var quit_w = 25;
text_button(quit_x,default_y,quit_w,default_h,true,"Quit",_white,_gold,_dkgray,quit);

//PLAY-MENU

//SETTINGS-MENU