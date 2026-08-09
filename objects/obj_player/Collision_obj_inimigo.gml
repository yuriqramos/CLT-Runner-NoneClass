///@description Colisão com o inimigo

// Apaga o inimigo
instance_destroy(other);

// Pitch do som
var _pitch = random_range(0.8, 1.2);

// Toca o áudio de dano
audio_play_sound(snd_dano, 0, 0, 1, , _pitch);

// Checa para ficar invencível

// Se já estiver invencível, sai do evento
if(invencivel)
{
    exit;
}
else  // Se ainda não estiver invencível, leva dano
{
   // Perde uma vida
    global.vidas--;
    
    // Ativa o invencivel
    invencivel = true;
    
    // Alarme que reinicia o invencivel
    alarm[0] = 60; //1 seg
    
    // Alarme que ativa o efeito piscando
    alarm[1] = 1;  // Ativa na hora
}

// Se as vidas chegarem em 0, GAME OVER 
if(global.vidas < 0)
{
    // Reinicia os pontos
    global.pontos = 0;

    // Reinicia as vidas
    global.vidas = 3;
    
    // Vai para a sala de gameover
    room_goto(rm_gameover);
}