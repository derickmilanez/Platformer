/// @description Insert description here
// You can write your code in this editor

//faz o bicho se mover
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(ord("A"));
key_shot = keyboard_check_pressed(ord("S"));
global.key_up = keyboard_check_pressed(vk_up);

//calcula os movimentos
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;
if(place_meeting(x,y+1,obj_wall) && (key_jump))
{
  audio_play_sound(snd_jump,10,false);
  vsp = -7;
}

//Atira
if(key_shot && global.bullets>0)
{
	if(image_xscale < 0)
	{
	bullet_direction = 0;
	}
	else
	{
	bullet_direction = 1;
	}
	audio_play_sound(snd_shot,10,false);
	instance_create_layer(x,y,"player",obj_player_bullet);
	global.bullets = global.bullets - 1;
}

//colisão horizontal
if(place_meeting(x+hsp,y,obj_wall))
{
   while(!place_meeting(x+sign(hsp),y,obj_wall))
   {
   x = x + sign(hsp);
   }
   hsp = 0;
}
x = x + hsp;

//colisão vertical
if(place_meeting(x,y+vsp,obj_wall))
{
   while(!place_meeting(x,y+sign(vsp),obj_wall))
   {
   y = y + sign(vsp);
   }
   vsp = 0;
}
y = y + vsp;

//Animações
if(!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_player_jump;
	image_speed = 0;
	if(sign(vsp)>0) image_index = 1;else image_index = 0;
}
else
{
    image_speed = 1;
	if(hsp == 0)
	{
	   sprite_index = spr_player;
	}
	else
	{
	   sprite_index = spr_player_walk;
	}
}
if (hsp != 0) image_xscale = sign(hsp);