dialogo_tempo += dialogo_velocidade;
var velocidade_aumentada = 2; // Velocidade ao segurar a tecla
dialogo_tempo += (keyboard_check(vk_space)) ? velocidade_aumentada : 0;

// Se o diálogo atual ainda está incompleto, escreva progressivamente
if (dialogo_atual < array_length(dialogos)) { // Verifica se ainda há diálogos
    if (dialogo_indice <= string_length(dialogos[dialogo_atual])) {
        if (dialogo_tempo >= 1) {
            dialogo_parcial = string_copy(dialogos[dialogo_atual], 1, dialogo_indice);
            dialogo_indice++;
            dialogo_tempo = 0; // Reinicia o tempo
        }
    } else {
        // Se o diálogo atual estiver completo, avança com o espaço
        if (keyboard_check_pressed(vk_space)) {
            dialogo_atual++; // Avança para o próximo diálogo
            if (dialogo_atual < array_length(dialogos)) {
                dialogo_indice = 1; // Reinicia o índice para o próximo diálogo
                dialogo_parcial = ""; // Limpa o texto parcial
            }
        }
    }
}else
{
	room_goto(R_Tutorial);
}