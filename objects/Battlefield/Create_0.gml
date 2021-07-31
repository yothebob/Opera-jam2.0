foreground = ds_grid_create(3,3);
background = ds_grid_create(3,3);

background_cell_size_x = (room_width/2)/3;
background_cell_size_y = (room_height/2)/3;

foreground_cell_size_x = room_width/3;
foreground_cell_size_y = room_height/3

background_indent_x = background_cell_size_x;
background_indent_y = background_cell_size_y;

current_foreground_cell = [1,1];
current_background_cell = [0,0];

spawn_laser = 0;