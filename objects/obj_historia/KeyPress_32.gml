if(pagina_atual == 3)
{
	room_goto(rm_jogo);
}
else
{
	sprite_index = paginas[pagina_atual + 1];
	pagina_atual++;
}