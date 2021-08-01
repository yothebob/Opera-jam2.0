spawn_laser += 1; // for testing lasers

//updating the background indention based on player position
background_indent_x = background_cell_size_x * (current_foreground_cell[0]-1);
background_indent_y = background_cell_size_y * (current_foreground_cell[1]-1);

//for testing lasers
if spawn_laser >= 10{
	laser_cell = [irandom_range(1,grid_size),irandom_range(1,grid_size)];
	var laser_location = put_in_background(laser_cell[0],laser_cell[1])
	with (instance_create_depth(laser_location[0],laser_location[1],1,Laser)){
		laser_cell = [Battlefield.laser_cell[0],Battlefield.laser_cell[1]];
		move_to_point = put_in_foreground(Battlefield.laser_cell[0],Battlefield.laser_cell[1]);
		starting_point = put_in_background(Battlefield.laser_cell[0],Battlefield.laser_cell[1]);
		z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/10;
	}
	spawn_laser = 0;
}