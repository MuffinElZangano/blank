/// @description Insert description here
// You can write your code in this editor
var grav = 0.2;
var bouncedecay = 0.25;

    //Horizontal
	if(tile_meeting(x+xspd,y,"collision")){
		repeat(abs(xspd)){
			if(!tile_meeting(x+sign(xspd),y,"collision")){
				x += sign(xspd)} else{break;}
			}
		xspd *= -bouncedecay;
	}

    //Vertical
	if(tile_meeting(x,y+yspd,"collision")){
		repeat(abs(yspd)){
			if(!tile_meeting(x,y+sign(yspd),"collision")){
				y += sign(yspd)} else{break;}
			}
		yspd *= -bouncedecay;
		}else{
		yspd += grav;
		}

if(tile_meeting(x,y+1,"collision")){
	xspd*=0.8;
}

x+=xspd;
y+=yspd;
image_angle-=xspd;