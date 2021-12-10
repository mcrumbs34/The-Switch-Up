/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y+vsp,o_wall) || place_meeting(x,y+vsp,o_white_wall) || place_meeting(x,y+vsp,o_black_wall)) {
while(!place_meeting(x,y+sign(vsp),o_wall) && !place_meeting(x,y+sign(vsp),o_white_wall) && !place_meeting(x,y+sign(vsp),o_black_wall)){
	y = y + sign(vsp);	
}
vsp = vsp * -1;
}	
 
if (place_meeting(x+hsp,y,o_wall) || place_meeting(x+hsp,y,o_white_wall) || place_meeting(x+hsp,y,o_black_wall)) {
while(!place_meeting(x+sign(hsp),y,o_wall) && !place_meeting(x+sign(hsp),y,o_white_wall) && !place_meeting(x+sign(hsp),y,o_black_wall)){
	x = x + sign(hsp);	
}
hsp = hsp * -1;
}
	
if (walkDir < 5) {
	x += hsp;	
} else {
	y += vsp;	
}