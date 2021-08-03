player_speed = 7;
instance_cell = [ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2)];
hits = 0;
tilt = 0;
cooldown = 0;

var ship_location = put_in_foreground(instance_cell[0],instance_cell[1]);
x = ship_location[0];
y = ship_location[1];