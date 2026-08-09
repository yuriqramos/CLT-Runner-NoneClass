var _tela_altura = room_height - (room_height / 3);

draw_set_font(fnt_menu);
draw_set_colour(c_yellow);
draw_set_valign(1);
draw_set_halign(1);

draw_text(x, _tela_altura, "PRESSIONE SPACE");
draw_text(x, _tela_altura + 15, "PARA INICIAR");

draw_set_font(-1);
draw_set_colour(-1);
draw_set_valign(-1);
draw_set_halign(-1);