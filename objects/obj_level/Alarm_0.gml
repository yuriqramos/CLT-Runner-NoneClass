///@description Criando os inimigos

// Variável temporária para receber a instância criada
var _inimigo_criado;

// Variável que escolhe que lado o inimigo será spawnado
var _lado_escolhido = choose(global.x_lado_esquerdo, global.x_lado_direito);

// Aqui, dependendo do lado, a instância é criada nesse lado e o sprite é invertido

// SE foi escolhido o lado esquerdo
if(_lado_escolhido = global.x_lado_esquerdo)
{
	// Cria o inimigo, e salva o ID na variável
	_inimigo_criado = instance_create_layer(_lado_escolhido, y_fora_da_tela, "Inimigo", obj_inimigo);
	
	// Define a orientação no eixo X do sprite para a esquerda
	_inimigo_criado.image_xscale = 1;
}

// Se foi escolhido o lado direito
if(_lado_escolhido = global.x_lado_direito)
{	
	// Cria o inimigo e salva o ID na variável
	_inimigo_criado = instance_create_layer(_lado_escolhido, y_fora_da_tela, "Inimigo", obj_inimigo);
	
	// Define a orientação no eixo X do sprite para a direita
	_inimigo_criado.image_xscale = -1;
}

// Toca o alarme novamente para criar um novo inimigo (tempo entre 2 a 5 segundos)
alarm[0] = tempo_alarme * irandom_range(2, 5);