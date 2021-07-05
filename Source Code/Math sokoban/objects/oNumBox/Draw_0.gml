draw_set_font(fValeur)

// Intercepte les valeurs supérieur à 10 000	
if valeur >= 10000{
	
		draw_self();
		draw_set_color(c_white)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text(x+2,y-2,"error") 
	
}
else{
		draw_self();
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text(x+2,y-2,string(valeur)) 
	}

