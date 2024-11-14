draw_self();

dialogos = ["Antes de Qualquer coisa o Botão para Interargir com os dialogos de Escolha é ESPAÇO", 
            "O botão Para Acelerar dialogos támbem é o ESPAÇO caso não for Pulavel", 
            "Para poder se Movimentar é nescessario (W para cima), (s para baixo), (A para a Esquerda)\n e (D para Direita)",
		   ];
			
dialogo_atual = 0;

dialogo_parcial = ""; // Texto mostrado até o momento
dialogo_velocidade = 0.25;
dialogo_tempo = 0; // Temporizador para controlar a escrita do texto
dialogo_indice = 1; // Índice do caractere atual a ser escrito
