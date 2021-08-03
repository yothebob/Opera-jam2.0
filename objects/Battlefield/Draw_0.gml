// drawing foreground and background grid (for testing purposes only) 

for (var i = 1;i < grid_size; i++){
	for (var j = 1; j < grid_size; j++){
		//draw_circle_color(background_cell_size_x*i + background_indent_x + (Battlefield.padding/2),background_cell_size_y*j + background_indent_y + (Battlefield.padding/2),2,c_red,c_red,false);
		//draw_circle_color(foreground_cell_size_x*i - (foreground_cell_size_x/2)  + (Battlefield.padding/2),foreground_cell_size_y*j - (foreground_cell_size_y/2)  + (Battlefield.padding/2),4,c_blue,c_blue,false);
		var back = put_in_background(i,j);
		var front = put_in_foreground(i,j);
		draw_circle_color(back[0],back[1],2,c_white,c_white,true);
		draw_circle_color(front[0],front[1],4,c_red,c_red,true);
		
		//draw_line(background_cell_size_x*i + background_indent_x,background_cell_size_y*j + background_indent_y,foreground_cell_size_x*i - (foreground_cell_size_x/2),foreground_cell_size_y*j - (foreground_cell_size_y/2));
	}
}
