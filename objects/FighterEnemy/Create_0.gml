enemy_cell = [ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2)];
enemy_position = put_in_background(enemy_cell[0],enemy_cell[1]);

image_speed = 0;
x = enemy_position[0];
y = enemy_position[1];

var size = random_range(.6,1.2);
image_xscale = size;
image_yscale = size;

depth = 10;
enemy_speed = 5.25;

//shoot lasers
shoot = 0;
shoot_rate = 25;
move = 0;
hits = 1;

hit_marker = false;