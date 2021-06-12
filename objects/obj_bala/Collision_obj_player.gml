/// @description Insert description here
// You can write your code in this editor
global.bullets = global.bullets + 1;
audio_play_sound(snd_bullet,10,false);
instance_destroy();