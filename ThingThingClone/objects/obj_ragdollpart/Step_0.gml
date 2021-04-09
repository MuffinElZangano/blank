/// @description Insert description here
// You can write your code in this editor
var grav = 0.2;
var bouncedecay = 0.25;

yspd += grav;
if(place_meeting(x+xspd,y,obj_solid)){
	while !place_meeting(x+sign(xspd),y,obj_solid){
		x+=sign(xspd);
	}
	//BOUNCE
	xspd *= -bouncedecay;
}

if(place_meeting(x,y+yspd,obj_solid)){
	while !place_meeting(x,y+sign(yspd),obj_solid){
		y+=sign(yspd);
	}
	//BOUNCE
	yspd *= -bouncedecay;
}

if(place_meeting(x,y+1,obj_solid)){
	xspd*=0.8;
}

if(xspd=0){startfade--;}
if(startfade<=0){image_alpha-=0.025;}
if(image_alpha<=0)instance_destroy();

x+=xspd;
y+=yspd;
image_angle-=xspd;