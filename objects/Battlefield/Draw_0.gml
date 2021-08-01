// drawing foreground and background grid (for testing purposes only) 
/*
for (var i = 1;i < grid_size+1; i++){
	for (var j = 1; j < grid_size+1; j++){
		draw_point(background_cell_size_x*i + background_indent_x + (Battlefield.padding/2),background_cell_size_y*j + background_indent_y + (Battlefield.padding/2));
		draw_circle_color(foreground_cell_size_x*i - (foreground_cell_size_x/2)  + (Battlefield.padding/2),foreground_cell_size_y*j - (foreground_cell_size_y/2)  + (Battlefield.padding/2),2,c_blue,c_blue,false);
		//draw_line(background_cell_size_x*i + background_indent_x,background_cell_size_y*j + background_indent_y,foreground_cell_size_x*i - (foreground_cell_size_x/2),foreground_cell_size_y*j - (foreground_cell_size_y/2));
	}
}
