/// @description Insert description here
// You can write your code in this editor
speed = 10;
with(obj_player) var b0 = bullet_direction == 0;
if(b0)
{
	direction = 180;
}
with(obj_player) var b1 = bullet_direction == 1;
if(b1)
{
	direction = 0;
}