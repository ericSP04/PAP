/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Camera 
var caixa_x = camera_get_view_x(view_camera[0]);
var caixa_y = camera_get_view_y(view_camera[0])+100;
var margem = 10; 
// Defina a cor da sombra da Fonte
var dialogo_cor = make_color_rgb(255,10,70);
var sombra_cor = c_black;
var sombra_deslocamento_x = 2;
var sombra_deslocamento_y = 2;

// Desenhe a sombra primeiro

draw_set_color(sombra_cor);
if (dialogo_atual < array_length(dialogos)) {
    draw_text(caixa_x + margem + sombra_deslocamento_x, caixa_y + margem + sombra_deslocamento_y, dialogo_parcial);
} else {
    draw_text(caixa_x + margem + sombra_deslocamento_x, caixa_y + margem + sombra_deslocamento_y,"");
}


draw_set_color(dialogo_cor);
draw_set_font(Fonte_Auto);
if (dialogo_atual < array_length(dialogos)) {
    draw_text(caixa_x + margem, caixa_y + margem, dialogo_parcial); // Desenha o texto parcial
} 