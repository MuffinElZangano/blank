// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function clamp_loop(value,max,i){
	if(value < max){
		value += i;
	}else{
		value = 0;
	}
	return value;
}