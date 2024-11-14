var _cima = keyboard_check(vk_up) || keyboard_check(ord("W"))
var _baixo = keyboard_check(vk_down) || keyboard_check(ord("S"))
var _esquerda = keyboard_check(vk_left) || keyboard_check(ord("A"))
var _direita = keyboard_check(vk_right) || keyboard_check(ord("D"))

if _cima 
{
    y -= 7;
    tempo_alternar += 1;

    if (tempo_alternar >= 10) {
        if (image_index == 3) {
            image_index = 2;
        } else {
            image_index = 3;
        }
   
        tempo_alternar = 0;
    }
    image_speed = 0;
}

if _baixo
{
	y += 7;
    tempo_alternar += 1;

    if (tempo_alternar >= 10) {
        if (image_index == 0) {
            image_index = 1;
        } else {
            image_index = 0;
        }
   
        tempo_alternar = 0;
    }
    image_speed = 0;
}
if _esquerda
{
    x -= 7;
	image_xscale = -1;
	tempo_alternar += 1;

    if (tempo_alternar >= 10) {
        if (image_index == 4) {
            image_index = 5;
        } else {
            image_index = 4;
        }
   
        tempo_alternar = 0;
    }
    image_speed = 0;
	
}
if _direita
{
		x += 7;
	    tempo_alternar += 1;
		image_xscale = 1;

    if (tempo_alternar >= 10) {
        if (image_index == 4) {
            image_index = 5;
        } else {
            image_index = 4;
        }
   
        tempo_alternar = 0;
    }
    image_speed = 0;
}
