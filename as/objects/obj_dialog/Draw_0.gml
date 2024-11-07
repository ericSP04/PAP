var caixa_x = obj_dialog.x; 
var caixa_y = obj_dialog.y; 
var margem = 10; 

draw_set_font(Font1)

var sombra_cor = c_black;
var sombra_deslocamento_x = 2;
var sombra_deslocamento_y = 2;
var color = make_color_rgb(50,50,205);

draw_set_color(sombra_cor);
if (dialogo_atual < array_length(dialogos)) {
    draw_text(caixa_x + margem + sombra_deslocamento_x, caixa_y + margem + sombra_deslocamento_y, dialogo_parcial);
}
else {
    draw_text(caixa_x + margem + sombra_deslocamento_x, caixa_y + margem + sombra_deslocamento_y, "Fim dos diálogos.");
}
draw_set_color(color);
if (dialogo_atual < array_length(dialogos)) {
    draw_text(caixa_x + margem, caixa_y + margem, dialogo_parcial);
}

