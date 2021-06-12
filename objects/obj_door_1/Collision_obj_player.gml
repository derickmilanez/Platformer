/// @description Insert description here
// You can write your code in this editor
if (global.key_up && global.keys > 0)
{
    image_index = 1;
	audio_play_sound(snd_door,10,false);
	global.keys = global.keys - 1;
	scr_slide_transition(TRANS_MODE.GOTO,room_3);
}