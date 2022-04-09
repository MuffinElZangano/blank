/// @description Insert description here
// You can write your code in this editor
if(!opened){
	var i = irandom_range(2,4);
	for(var j = 0; j<i; j++){
		instance_create_depth(x,y,depth,obj_item);
	}
	opened = true;
}

	image_speed = 0;
	image_index = image_number-1;