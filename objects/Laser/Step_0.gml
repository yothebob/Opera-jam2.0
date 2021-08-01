// grow as gets closer to player
image_xscale += z_growth;
image_yscale += z_growth;


//moving from background cell position to foreground cell position
direction = point_direction(starting_point[0],starting_point[1],move_to_point[0],move_to_point[1]);
speed = z_speed;

if image_xscale >= 9.2 or image_yscale >= 9.2{
	instance_destroy();
}

if image_xscale > 9 and image_xscale < 9.2{
	if id.laser_cell[0] == Battlefield.current_foreground_cell[0] and id.laser_cell[1] == Battlefield.current_foreground_cell[1]{
		PlayerShip.hits += 1;
		instance_destroy();
	}
}