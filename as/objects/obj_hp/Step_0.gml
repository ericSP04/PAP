var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_width = camera_get_view_width(cam);
var cam_height = camera_get_view_height(cam);

x = cam_x + cam_width - sprite_width/2 - 40;
y = cam_y + sprite_height/2 - 40;

// Verifica colisão
is_colliding = place_meeting(obj_mc.x, obj_mc.y, obj_fim);

if (is_colliding)
{
    timer_Fim = max(timer_Fim - .5, 0); // Diminui o timer
}
else
{
    timer_Fim = min(timer_Fim + .5, 600); // Aumenta o timer mais lentamente
}

// Atualiza a imagem baseado no valor do timer
if (timer_Fim > 500) image_index = 1;
else if (timer_Fim > 400) image_index = 2;
else if (timer_Fim > 300) image_index = 3;
else if (timer_Fim > 200) image_index = 4;
else if (timer_Fim > 100) image_index = 5;
else if (timer_Fim > 50) image_index = 6;
else if (timer_Fim > 0) image_index = 7;
else image_index = 8;

// Adicione uma mensagem de debug para monitorar os valores
show_debug_message("Timer: " + string(timer_Fim) + " Image: " + string(image_index) + " Colliding: " + string(is_colliding));

if (timer_Fim <= 0)
{
    // Adicione aqui o que deve acontecer quando o timer chega a zero
    // Por exemplo: game_end(); ou room_goto(rm_game_over);
}