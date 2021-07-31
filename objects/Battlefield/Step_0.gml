spawn_laser += 1;

if spawn_laser >= 120{
	laser_cell = [irandom_range(1,3),irandom_range(1,3)];
	var laser_location = put_in_background(laser_cell[0],laser_cell[1])
	with (instance_create_depth(laser_location[0],laser_location[1],1,Laser)){
		move_to_point = put_in_foreground(Battlefield.laser_cell[0],Battlefield.laser_cell[1]);
		z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/25;
	}
	spawn_laser = 0;
}