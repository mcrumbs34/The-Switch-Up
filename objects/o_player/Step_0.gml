/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

moveH = key_right - key_left;
moveV = key_down - key_up;


hsp = moveH * walksp;
vsp = moveV * walksp;

if (place_meeting(x+hsp,y,o_wall)) {
	while(!place_meeting(x+sign(hsp),y,o_wall)){
		x = x + sign(hsp);	
	}
	hsp = 0;
}
if (state == "casual") {
	if (place_meeting(x+hsp,y,o_white_wall)) {
		while(!place_meeting(x+sign(hsp),y,o_white_wall)){
			x = x + sign(hsp);	
		}
		hsp = 0;
	}	
}

if (state == "professional") {
	if (place_meeting(x+hsp,y,o_black_wall)) {
		while(!place_meeting(x+sign(hsp),y,o_black_wall)){
			x = x + sign(hsp);	
		}
		hsp = 0;
	}	
}
x = x + hsp;

if (place_meeting(x,y+vsp,o_wall)) {
	while(!place_meeting(x,y+sign(vsp),o_wall)){
		y = y + sign(vsp);	
	}
	vsp = 0;
}

if (state == "casual") {
	if (place_meeting(x,y+vsp,o_white_wall)) {
		while(!place_meeting(x,y+sign(vsp),o_white_wall)){
			y = y + sign(vsp);	
		}
		vsp = 0;
	}	
}

if (state == "professional") {
	if (place_meeting(x,y+vsp,o_black_wall)) {
		while(!place_meeting(x,y+sign(vsp),o_black_wall)){
			y = y + sign(vsp);	
		}
		vsp = 0;
	}	
}


y = y + vsp;


if (hsp != 0) {
	image_xscale = sign(hsp);	
}

//switch (state){
//	case "casual":
//	sprite_index = s_player;
//	case "professional":
//	sprite_index = s_player_business;
//}

if (state == "casual") {
	sprite_index = s_player;	
} else {
	sprite_index = s_player_business;	
}

switch (level) {
	case 1:	
	if(levelOneChangeAvailable <= 0) {
		room_goto(r_win);	
	}
	break;
	case 2:
	if(levelTwoChangeAvailable <= 0) {
		room_goto(r_win);	
	}
	break;
	case 3:
	if(levelThreeChangeAvailable <= 0) {
		room_goto(r_win);	
	}
	break;
}