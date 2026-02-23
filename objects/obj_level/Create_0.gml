///@description Configurações iniciais

// Definindo o tempo do alarme com os frames do jogo (1 segundo)
tempo_alarme = game_get_speed(gamespeed_fps);

// Coordenadas do Y para criar as instâncias fora da tela
y_fora_da_tela = -5;

// Tocando o alarme que cria os inimigos (tempo aleatório entre 2 a 5 segundos)
alarm[0] = tempo_alarme * irandom_range(2, 5);

// Tocando o alarme que cria os coletáveis (tempo aleatório entre 2 a 5 segundos)
alarm[1] = tempo_alarme * irandom_range(2, 5);