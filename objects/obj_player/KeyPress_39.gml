///@description Player vai para a direita

// SE o jogador está no lado esquerdo
if(x == global.x_lado_esquerdo)
{
	// Coloca o jogador no lado direito da tela
	x = global.x_lado_direito;
	
	// Inverte o X do sprite para o lado direito da tela
	image_xscale = -1;
}