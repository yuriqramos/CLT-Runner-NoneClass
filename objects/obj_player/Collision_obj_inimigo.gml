///@description Colisão com o inimigo

// Apaga o inimigo
instance_destroy(other);

// Perde uma vida quando bate no inimigo
global.vidas--;

// Se as vidas chegarem em 0, reinicia o jogo
if(global.vidas <= 0)
{
    // Reinicia a room
    room_restart();
    
    // Reinicia os pontos
    global.pontos = 0;
    
    // Reinicia as vidas
    global.vidas = 3;
}