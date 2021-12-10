/// @description Insert description here
// You can write your code in this editor
room_goto(r_level);

if (!audio_is_playing(Sound1)) {
	audio_play_sound(Sound1, 1000, true);	
}