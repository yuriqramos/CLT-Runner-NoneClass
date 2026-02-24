///@description Desenhando os pontos do jogo

// Definindo a fonte dos pontos
draw_set_font(fnt_pontos);

// Definindo a posição x pegando a largura da janela do jogo
var _posicao_x = window_get_width();

// Desenhando os pontos, com a coordenada x sendo metade da janela do jogo
draw_text( _posicao_x / 2, 10, string(global.pontos));

// Reiniciando a fonte usada
draw_set_font(-1);