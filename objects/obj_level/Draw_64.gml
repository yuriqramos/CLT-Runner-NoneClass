///@description Desenhando os pontos do jogo

// Definindo a fonte dos pontos
draw_set_font(fnt_pontos);

// Definindo a posição x pegando a largura da janela do jogo
var _posicao_x = window_get_width();

// Espaçamento entre os corações
var _padding = 0;

// Desenhando os pontos
draw_text(10, 10, "Pontos: " + string(global.pontos));

// Loop que cria os corações dependendo da quant de vidas
for (var i = 0; i < global.vidas; i++) 
{
    // Desenha o sprite na HUD
    draw_sprite_ext(spr_coracao, 0, 32 + _padding, 100, 2, 2, 0, c_white, 1);
    
    // Aumenta o espaçamento
    _padding += 40;
}

// Reiniciando a fonte usada
draw_set_font(-1);