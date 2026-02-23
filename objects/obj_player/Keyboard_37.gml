///@description Player vai para a esquerda

// SE o jogador estiver no lado direito
if(x == global.x_lado_direito)
{
	// Coloca o jogador no lado esquerdo da tela
	x = global.x_lado_esquerdo;
	
	// Inverte o X do sprite para o lado esquerdo
	image_xscale = 1;
}