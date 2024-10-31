draw_self();

posicao_x = obj_mc.x;  // Posição inicial do obj_mc em x
posicao_y = obj_mc.y;  // Posição inicial do obj_mc em y

dialogos = [
    "Olá pequeno Esfera, pelo que eu vi você foi ativado somente agora...", 
    "Bom, não há absolutamente nada há se fazer nossos criadores já estão todos mortos. A propósito qual seu nome", 
    "Não vai me falar ?...Seu Altos Falantes estão com defeito ou seu Cérebro Artificial está com defeito ?... uhmmm...Ester...",
    "Que tal Estrela ?... A verdade você não consegue falar, então está decidido. A partir de Agora seu Nome será Estrela.",
    "Esqueci de Menciona Mas eu não estou no planeta terra, sou um Satélite Inteligente, me chamo Comodora...",
    "Acho que está é 11987º que eu acordo um de vocês...Mas entre todos esses você é o único que possui uma luz verde na cabeça",
	"Olhando um Pouco mais para ti fica claro que foi feito por restos de exploradores, você é uma mistura de (Diurno Floresta) com (Opaca Aquática)...",
	"Será que você é capaz de tocar a mancha negra e o toque do fim ou não tem resistência a ambos ?...",
	"Está vendo aquela parte negra da Sala, encoste apenas um pouco, gostaria do que você seria capaz meu pequeno mestiço."
];

dialogo_atual = 0;        // Índice do diálogo atual
dialogo_parcial = "";     // Texto mostrado até o momento
dialogo_velocidade = 0;   // Inicialmente zero para não mostrar o texto ainda
dialogo_tempo = 0;        // Temporizador para controlar a escrita do texto
dialogo_indice = 1;       // Índice do caractere atual a ser escrito
