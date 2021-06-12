/// @description Insert description here
// You can write your code in this editor
if (global.enemydir == "esquerda")
{
    hspeed = -2;
	sprite_index = spr_enemy_walk;
	image_xscale = -1;
}
if (global.enemydir == "direita")
{
	hspeed = 2;
	sprite_index = spr_enemy_walk;
	image_xscale = 1;
}