// grow as gets closer to player
image_xscale += z_growth;
image_yscale += z_growth;


//moving from background cell position to foreground cell position
// if laser cell is different then player cell assign a direction and speed
if Laser.laser_cell[0] != Battlefield.current_foreground_cell[0] or Laser.laser_cell[1] != Battlefield.current_foreground_cell[1]{
	direction = point_direction(starting_point[0],starting_point[1],move_to_point[0],move_to_point[1]);
	speed = z_speed;
}else{
	speed = 0;
}

//hitting the player
if image_xscale >= 11.2 or image_yscale >=11.2{
	instance_destroy();
}

if image_xscale > 11 and image_xscale < 11.2{
	if id.laser_cell[0] == Battlefield.current_foreground_cell[0] and id.laser_cell[1] == Battlefield.current_foreground_cell[1]{
		PlayerShip.hits += 1;
		instance_destroy();
	}
}