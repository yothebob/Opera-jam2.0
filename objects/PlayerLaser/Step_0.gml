//find updated target coorinates
image_blend = laser_color;

if target == BasicEnemy and instance_exists(BasicEnemy){
	target_cell = [BasicEnemy.instance_cell[0],BasicEnemy.instance_cell[1]];
}

if parent == PlayerShip{
	image_xscale -= z_growth*100;
	image_yscale -= z_growth*100;
}

var cell_to_coordinates = put_in_background(laser_cell[0],laser_cell[1]);

//moving from background cell position to foreground cell position
// if laser cell is different then player cell assign a direction and speed
if instance_exists(target){
	if id.laser_cell[0] != cell_to_coordinates[0] or id.laser_cell[1] != cell_to_coordinates[1]{
		move_to_point = put_in_foreground(laser_cell[0],laser_cell[1]);
		starting_point = put_in_background(laser_cell[0],laser_cell[1]);
		direction = point_direction(starting_point[0],starting_point[1],move_to_point[0],move_to_point[1]);
		speed = 10;
		image_index = 1;
	}else{
		image_index = 1;
		speed = 0;
	}
	}else{
		image_index = 1;
		speed = 0;
}

//hitting the player
if image_xscale > hit_target and image_xscale < hit_target + .15{
	if id.laser_cell[0] == target_cell[0] and id.laser_cell[1] == target_cell[1] and instance_exists(target){
		target.hits += 1;
		instance_destroy();
	}else{
		instance_destroy();
	}
}