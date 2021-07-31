grid_size = 5;

background_cell_size_x = (room_width/2)/grid_size;
background_cell_size_y = (room_height/2)/grid_size;

foreground_cell_size_x = room_width/grid_size;
foreground_cell_size_y = room_height/grid_size;

current_foreground_cell = [ceil(grid_size/2),ceil(grid_size/2)];
current_background_cell = [0,0];

background_indent_x = background_cell_size_x * (current_foreground_cell[0]+1);
background_indent_y = background_cell_size_y * (current_foreground_cell[1]+1);

spawn_laser = 0;