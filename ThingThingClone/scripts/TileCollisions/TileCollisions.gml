///Tile collisions for the player
function TileCollisions(){
    //Horizontal
	if(tile_meeting(x+hsp,y,"collision")){
		repeat(abs(hsp)){
			if(!tile_meeting(x+sign(hsp),y,"collision")){
				x += sign(hsp)} else{break;}
			}
		hsp = 0;
	}

    //Vertical
	if(tile_meeting(x,y+vsp,"collision")){
		repeat(abs(vsp)){
			if(!tile_meeting(x,y+sign(vsp),"collision")){
				y += sign(vsp)} else{break;}
			}
			vsp = 0;
		}
}