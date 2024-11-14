dialogo_tempo += dialogo_velocidade;

if place_meeting(x,y, obj_mc){
		    dialogo_velocidade = 0.125; // velocidade dialogo

		if (dialogo_velocidade > 0) {
		    // incompleto escreva progressivamente
		    if (dialogo_atual < array_length(dialogos)) { // Verifica se ainda há diálogos
		        if (dialogo_indice <= string_length(dialogos[dialogo_atual])) {
		            if (dialogo_tempo >= 1) {
		                dialogo_parcial = string_copy(dialogos[dialogo_atual], 1, dialogo_indice);
		                dialogo_indice++;
		                dialogo_tempo = 0; // Reinicia o tempo
		            }
		        } else {
		            //  avança automaticamente
		            dialogo_atual++; // próximo diálogo
		            if (dialogo_atual < array_length(dialogos)) {
		                dialogo_indice = 1; // Passa para o próximo indice
		                dialogo_parcial = ""; // Limpa o texto parcial
						if(keyboard_check(vk_space)){
					dialogo_velocidade = 1;
					}else{
						dialogo_velocidade = 0.125;
					}
		            }
		        }
		    }
		}
}