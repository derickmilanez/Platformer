/// @description Insert description here
// You can write your code in this editor

// atualiza a camera
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//atualiza a posição do player
x += (xTo - x) /  25;
y += (yTo - y) /  25;

//impede da camera sair da sala
x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//atualiza a posição da camera
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if(layer_exists("mountains"))
{
	layer_x("mountains",x/2);
}
if(layer_exists("forest"))
{
	layer_x("forest",x/3);
}


