///@description Coleta o coletável

// Variável que escolhe aleatóriamente o pitch do efeito sonoro
var _pitch = random_range(0.7, 1.3);

// Aumenta a pontuação em 1 ponto
global.pontos++;

// Tocando o efeito sonoro de coleta
audio_play_sound(snd_pickup, 0, 0, , , _pitch);

// Destrói o item
instance_destroy(other);