for (var i = 0; i < grid_size;i++){
	for (var j = 0; j < grid_size; j++){
		var cells = put_in_foreground(i+1,j+1);
		var cells2 = put_in_foreground_p2(i+1,j+1);
		draw_circle_color(cells[0],cells[1],3,c_red,c_red,false);
		draw_circle_color(cells2[0],cells2[1],3,c_blue,c_blue,false);
	}
}
