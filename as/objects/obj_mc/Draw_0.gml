// Para que não seja deletado o sprite original
draw_self();

// se estiver perto de Warning aparece texto
if (place_meeting(x, y, obj_warning))
{
    draw_set_color(c_red);
    draw_set_font(Font2);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_text(x, y - 50, "Não encoste no Fim (Substância Preta)");
    
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}