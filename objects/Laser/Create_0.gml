z_speed = 12;
z_growth = .001;

image_xscale = .005;
image_yscale = .005;
laser_color = c_white;

bullet_offset = 0;

move_to_point = [];
starting_point = [];

parent = 0;
hit_target = 2.;// size the image gets before "hitting" target
target = PlayerShip;

laser_cell = []; 
player_cell = [];
target_cell = [ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2)];
