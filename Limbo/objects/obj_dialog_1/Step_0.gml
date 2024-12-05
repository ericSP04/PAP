dialogo_tempo += dialogo_velocidade;
var acelerar =keyboard_check(vk_space);

if (abs(obj_mc.x - posicao_x) > 250 && abs(obj_mc.y - posicao_y) >= 0) {
    dialogo_velocidade = 0.125;
}

if (dialogo_velocidade > 0) {
    //Se o dialogo estiver imcompleto ele termina
    if (dialogo_atual < array_length(dialogos)) { //Se tem dialogo ainda
        if (dialogo_indice <= string_length(dialogos[dialogo_atual])) {
            if (dialogo_tempo >= 1) {
                dialogo_parcial = string_copy(dialogos[dialogo_atual], 1, dialogo_indice);
                dialogo_indice++;
				if acelerar dialogo_velocidade = 1;
                dialogo_tempo = 0; // Reinicia o tempo
            }
        } else {
				dialogo_atual++; // avancar proximo dialogo
	            if (dialogo_atual < array_length(dialogos)){
	                dialogo_indice = 1; //proximo dialogo
	                dialogo_parcial = ""; // Limpar dialogo
	            }
        }
    }else{
	instance_destroy();}
	
}
