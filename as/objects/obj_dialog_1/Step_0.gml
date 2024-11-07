dialogo_tempo += dialogo_velocidade;

if (abs(obj_mc.x - posicao_x) > 250 && abs(obj_mc.y - posicao_y) >= 0) {
    dialogo_velocidade = 0.25; // Define a velocidade de escrita do diálogo
}

if (dialogo_velocidade > 0) {
    // Se o diálogo atual ainda está incompleto, escreva progressivamente
    if (dialogo_atual < array_length(dialogos)) { // Verifica se ainda há diálogos
        if (dialogo_indice <= string_length(dialogos[dialogo_atual])) {
            if (dialogo_tempo >= 1) {
                dialogo_parcial = string_copy(dialogos[dialogo_atual], 1, dialogo_indice);
                dialogo_indice++;
                dialogo_tempo = 0; // Reinicia o tempo
            }
        } else {
            // Se o diálogo atual estiver completo, avança automaticamente
            dialogo_atual++; // Avança para o próximo diálogo
            if (dialogo_atual < array_length(dialogos)) {
                dialogo_indice = 1; // Reinicia o índice para o próximo diálogo
                dialogo_parcial = ""; // Limpa o texto parcial
				if(keyboard_check(vk_space)){
			dialogo_velocidade = 1;
			}else{
				dialogo_velocidade = 0.25;
			}
            }
        }
    }
}
