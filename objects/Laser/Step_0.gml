// grow as gets closer to player
image_xscale += z_growth + .05;
image_yscale += z_growth + .05;


//moving from background cell position to foreground cell position
// if laser cell is different then player cell assign a direction and speed
if id.laser_cell[0] != PlayerShip.player_foreground_cell[0] or id.laser_cell[1] !=PlayerShip.player_foreground_cell[1]{
	move_to_point = put_in_foreground(laser_cell[0],laser_cell[1]);
	starting_point = put_in_background(laser_cell[0],laser_cell[1]);
	direction = point_direction(starting_point[0],starting_point[1],move_to_point[0],move_to_point[1]);
	speed = z_speed;
	image_index = 1;
}else{
	image_index = 1;
	speed = 0;
}

//hitting the player
if image_xscale >= hit_player or image_yscale >=hit_player + .2{
	instance_destroy();
}

if image_xscale > hit_player and image_xscale < hit_player + .2{
	if id.laser_cell[0] == PlayerShip.player_foreground_cell[0] and id.laser_cell[1] == PlayerShip.player_foreground_cell[1]{
		PlayerShip.hits += 1;
		instance_destroy();
	}
}