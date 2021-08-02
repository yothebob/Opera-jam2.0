//find updated target coorinates
image_blend = laser_color;


if target == PlayerShip and instance_exists(BasicEnemy){
	player_cell = [PlayerShip.player_foreground_cell[0],PlayerShip.player_foreground_cell[1]];
	target_cell = player_cell;
	image_xscale += z_growth*100;
	image_yscale += z_growth*100;
}
else if target == BasicEnemy and instance_exists(BasicEnemy){
	target_cell = [BasicEnemy.enemy_cell[0],BasicEnemy.enemy_cell[1]];
}

if parent == PlayerShip{
	image_xscale -= z_growth*100;
	image_yscale -= z_growth*100;
}

if not instance_exists(parent){
	instance_destroy();
}

//moving from background cell position to foreground cell position
// if laser cell is different then player cell assign a direction and speed
if id.laser_cell[0] != target_cell[0] or id.laser_cell[1] != target_cell[1]{
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
if image_xscale > hit_target and image_xscale < hit_target + .2{
	if id.laser_cell[0] == target_cell[0] and id.laser_cell[1] == target_cell[1] and instance_exists(target){
		target.hits += 1;
		instance_destroy();
	}else{
		instance_destroy();
	}
}