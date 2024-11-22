// Camera 
var caixa_x = camera_get_view_x(view_camera[0]);
var caixa_y = camera_get_view_y(view_camera[0]) + 500;
var margem = 10; 
// Defina a cor da sombra da Fonte
var dialogo_cor = make_color_rgb(255,10,70);
var sombra_cor = c_black;
var sombra_deslocamento_x = 2;
var sombra_deslocamento_y = 2;

//caixa
var caixa_cor = c_black;
var caixa_alpha = 0.7;
var caixa_largura = 800;
var caixa_altura = 100;

// Desenhe a sombra primeiro
var stepBox = 0;
stepBox += obj_mc.x;

draw_set_color(sombra_cor);
if (dialogo_atual < array_length(dialogos)) {
    draw_text(caixa_x + margem + sombra_deslocamento_x, caixa_y + margem + sombra_deslocamento_y, dialogo_parcial);
		if (abs(stepBox - posicao_x) > 250) {
		var caixa = draw_set_color(caixa_cor);
		draw_set_alpha(caixa_alpha);
		draw_rectangle(caixa_x, caixa_y, caixa_x + caixa_largura, caixa_y + caixa_altura, false);
		draw_set_alpha(1);
		}
} else {
    draw_text(caixa_x + margem + sombra_deslocamento_x, caixa_y + margem + sombra_deslocamento_y,"");
}


draw_set_color(dialogo_cor);
draw_set_font(Fonte_Auto);
if (dialogo_atual < array_length(dialogos)) {
    draw_text(caixa_x + margem, caixa_y + margem, dialogo_parcial); // Desenha o texto parcial
} 
