draw_self();

dialogos = ["Antes de Qualquer coisa o Botão para Interargir com os dialogos de Escolha é SPACE", 
            "Como vai pequenino", 
            "Você é uma Máquina, uma maquina exploradora. Atualmente não há nada que valha a pena ser documentado.",
			"Você está livre, seus criadores não voltaram e nem lembraram de seu nome. Como se Algum dia você tivesse um nome...",
			"Mas Pense pelo lado bom você não está totalmente sozinho, há outros como tu também aqui !!!",
			"Apesar que a Maioria já deve ter enloquecido..."];
			
dialogo_atual = 0; // Índice do diálogo atual

dialogo_parcial = ""; // Texto mostrado até o momento
dialogo_velocidade = 0.5; // Velocidade do texto (tempo entre letras)
dialogo_tempo = 0; // Temporizador para controlar a escrita do texto
dialogo_indice = 1; // Índice do caractere atual a ser escrito
