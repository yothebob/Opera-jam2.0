//find updated target coorinates
image_blend = laser_color;


if target == PlayerShip and instance_exists(Enemy){
	player_cell = [PlayerShip.player_foreground_cell[0],PlayerShip.player_foreground_cell[1]];
	target_cell = player_cell;
	image_xscale += z_growth*75;
	image_yscale += z_growth*75;
}
else if target == Enemy and instance_exists(Enemy){
	target_cell = [Enemy.enemy_cell[0],Enemy.enemy_cell[1]];
}

if parent == PlayerShip{
	image_xscale -= z_growth*75;
	image_yscale -= z_growth*75;
}

if not instance_exists(parent){
	instance_destroy();
}

//moving from background cell position to foreground cell position
// if laser cell is different then player cell assign a direction and speed
//if ceil(id.laser_cell[0]) != ceil(target_cell[0]) or ceil(id.laser_cell[1]) != ceil(target_cell[1]) and instance_exists(target){
	move_to_point = put_in_foreground(laser_cell[0],laser_cell[1]);
	starting_point = put_in_background(laser_cell[0],laser_cell[1]);
	if point_distance(move_to_point[0],move_to_point[1],starting_point[0],starting_point[1]) <50{
		// = point_direction(starting_point[0],starting_point[1],move_to_point[0],move_to_point[1]);
		//speed = z_speed;
		move_towards_point(PlayerShip.x,PlayerShip.y,z_speed);
		show_debug_message(string(parent) + " : "+string(laser_cell));
	}
else{
	image_index = 1;
	speed = 0;
}

//hitting the player
if image_xscale > hit_target and image_xscale < hit_target + .15{
	if ceil(id.laser_cell[0]) == ceil(target_cell[0]) and ceil(id.laser_cell[1]) == ceil(target_cell[1]) and instance_exists(target){
		target.hits -= 1;
		target.hit_marker = true;
		instance_destroy();
	}else{
		instance_destroy();
	}
}