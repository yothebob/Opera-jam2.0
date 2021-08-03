instance_cell = [ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2)];
enemy_position = put_in_background(instance_cell[0],instance_cell[1]);

image_speed = 0;
x = enemy_position[0];
y = enemy_position[1];

depth = 100;
enemy_speed = 3.25;

//shoot lasers
shoot = 0;
move = 0;
hits = 0;