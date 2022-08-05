/// @description Aparición de Jugador

//Input y Control
key_up    = ord("W")
key_left  = ord("A")
key_down  = ord("S")
key_right = ord("D")

moveX = 0;
moveY = 0;
moveSpeed = 2; //Placeholder, puede cambiar con Slows, trampas, etc.

//Estas variables controlan la apariencia del jugador.
ropa_cabeza = 0;
ropa_m	= 0;
ropa_pies	= 0;
ropa_torso	= 0;

//Variables de Jugabilidad
vida		= 100;
vida_max	= 100;
stamina		= 100;
stamina_max	= 100;

arma_equipada   = -1;
arma_primaria	= -1;
arma_secundaria = -1;
arma_melee		= -1;

balas_rifle		 = 0;
balas_metralleta = 0;
balas_escopeta	 = 0;
balas_pistola	 = 0;
granadas_1		 = 0;
granadas_2		 = 0;

//Variables de Animación
animacion = "idle";
_xscale = 1;

//Estas variables controlan las animaciones para el cuerpo y los pies
FRAME = 0;
FRAME_RATE = 1;
FRAME_MAX = 9;

//Estas variables controlan las animaciones para las manos
animacion_m = "idle_noweapon";
FRAME_m = 0;
FRAME_RATE_m = 1;
FRAME_MAX_m = 9;

player_init_parts();