///@description Altera as páginas da história

// Checa se já chegou na página final para começar o jogo
// Se não chegou, só passa para a próxima página

if(pagina_atual == 3)
{	
	// Vai para a sala do jogo
	room_goto(rm_jogo);
}
else
{
	// Muda a sprite para a próxima no array
	sprite_index = paginas[pagina_atual + 1];
	
	// Salva a página atual na variável
	pagina_atual++;
	
	// Toca o áudio de trocar as páginas
	audio_play_sound(snd_virando_pagina, 0, 0);
}