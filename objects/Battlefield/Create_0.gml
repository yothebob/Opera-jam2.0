// number of cells
grid_size = 16;

// padding so game does not take up entire screen
padding = 1000;
cameras = 1;

gamescreen_width = (room_width/cameras) - padding;
gamescreen_height = room_height - padding;

//cell size for background
background_cell_size_x = (gamescreen_width/2)/grid_size;
background_cell_size_y = (gamescreen_height/2)/grid_size;

//cell size for foreground
foreground_cell_size_x = gamescreen_width/grid_size;
foreground_cell_size_y = gamescreen_height/grid_size;

//starting used cell for foreground
starting_foreground_cell = [ceil(grid_size/2),ceil(grid_size/2)];

// how much the background is recessed compared to foreground
background_indent_x = background_cell_size_x * (starting_foreground_cell[0]+1);
background_indent_y = background_cell_size_y * (starting_foreground_cell[1]+1);
