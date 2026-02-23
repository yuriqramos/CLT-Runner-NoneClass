///@description Criando os coletáveis

// Variável temporária para receber a instância criada
var _coletavel_criado;

// Variável que escolhe que lado o coletável será spawnado
var _lado_escolhido = choose(global.x_lado_esquerdo, global.x_lado_direito);

// Variável que escolhe o sprite do coletável
var _sprite_escolhido = choose(spr_batata, spr_chocolate, spr_coxinha, spr_hamburg);

// Aqui, dependendo do lado, a instância é criada nesse lado e o sprite é invertido

// SE for escolhido o lado esquerdo
if(_lado_escolhido = global.x_lado_esquerdo)
{
	// Cria o coletável e salva a ID na variável
	_coletavel_criado = instance_create_layer(_lado_escolhido, y_fora_da_tela, "Coletavel", obj_coletavel);
	
	// Define o sprite escolhido para o coletável
	_coletavel_criado.sprite_index = _sprite_escolhido;
	
	// Define a orientação no eixo X do sprite para a esquerda
	_coletavel_criado.image_xscale = 1;
}

// SE for escolhido o lado direito
if(_lado_escolhido = global.x_lado_direito)
{
	// Cria o coletavel e salva a ID na variável
	_coletavel_criado = instance_create_layer(_lado_escolhido, y_fora_da_tela, "Coletavel", obj_coletavel);
	
	// Define o sprite escolhido para o coletável
	_coletavel_criado.sprite_index = _sprite_escolhido;
	
	// Define a orientação no eixo X para a direita
	_coletavel_criado.image_xscale = -1;
}

// Toca o alarme novamente para criar um novo coletável (tempo entre 2 a 5 segundos)
alarm[1] = tempo_alarme * irandom_range(2, 5);