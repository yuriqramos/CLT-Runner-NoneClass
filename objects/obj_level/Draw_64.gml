///@description Desenhando os pontos do jogo

// Definindo a fonte dos pontos
draw_set_font(fnt_pontos);

// Espaçamento entre os corações
var _padding = 0;

// Desenhando os pontos
draw_text(10, 10, "Pontos: " + string(global.pontos));

// Loop que cria os corações dependendo da quant de vidas
for (var i = 0; i < global.vidas; i++) 
{
    // Desenha o sprite na HUD
    draw_sprite_ext(spr_coracao, 0, 20 + _padding, 70, 1.5, 1.5, 0, c_white, 1);
    
    // Aumenta o espaçamento
    _padding += 30;
}

// Reiniciando a fonte usada
draw_set_font(-1);