if room = rLevelSelection{

	x = oCamera.x - 358
	y = oCamera.y + 388

	//Music credits

	draw_set_font(fValeur);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_transformed(x+20,y+10,"Music Credits : \"Past Sadness\" by Kevin MacLeod",0.8,0.8,0);
}