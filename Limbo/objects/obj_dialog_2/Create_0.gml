posicao_x = obj_mc.x;  // Posição inicial do obj_mc em x
posicao_y = obj_mc.y;  // Posição inicial do obj_mc em y

dialogos = ["..........................................................\n"+ 
            "..........................................................", 
            "Falha no Sistema de Comunicação, Reponha peça por outra...\n"+ 
            "Ambiente inprópio, repor peça com um drone quebrado.......",
			".............Local não possui drone disponivél............\n"+
			"..........................................................",
			"..remova peça de um drone em funcionamento a sua frente..."
			];

dialogo_atual = 0;        // Índice do diálogo atual
dialogo_parcial = "";     // Texto mostrado até o momento
dialogo_velocidade = 0;   // Inicialmente zero para não mostrar o texto ainda
dialogo_tempo = 0;        // Temporizador para controlar a escrita do texto
dialogo_indice = 1;       // Índice do caractere atual a ser escrito
