var _tela_terco_cima = room_height / 3;
var _tela_terco_baixo = room_height - (room_height / 3);

draw_set_font(fnt_menu);
draw_set_colour(c_yellow);
draw_set_valign(1);
draw_set_halign(1);

draw_text(x, _tela_terco_cima, "GAME OVER")
draw_text(x, _tela_terco_baixo, "PRESSIONE SPACE PARA");
draw_text(x, _tela_terco_baixo + 15, "VOLTAR AO MENU");

draw_set_font(-1);
draw_set_colour(-1);
draw_set_valign(-1);
draw_set_halign(-1);