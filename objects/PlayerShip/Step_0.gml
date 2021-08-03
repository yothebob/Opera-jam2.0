//restart 
if keyboard_check_pressed(ord("R")){game_restart();}


//player tilting
image_angle = tilt/2;

if tilt > 0{
	tilt -= 1;
}else if tilt < 0{tilt += 1;}

show_debug_message("player cell: " + string(instance_cell));

//player movement
if keyboard_check(ord("W")) and instance_cell[1] > 1 {
	y-= player_speed;
	instance_cell = coordinates_to_foreground_cell(x,y);
}
if keyboard_check(ord("S")) and instance_cell[1] < Battlefield.grid_size -1{
	y += player_speed;
	instance_cell = coordinates_to_foreground_cell(x,y);
}
if keyboard_check(ord("A")) and instance_cell[0] > 1{
	x -= player_speed;
	instance_cell = coordinates_to_foreground_cell(x,y);
	if tilt < 20{tilt += 2;}
}
if keyboard_check(ord("D")) and instance_cell[0] < Battlefield.grid_size -1{
	x += player_speed; 
	instance_cell = coordinates_to_foreground_cell(x,y);
	if tilt > -20{tilt -= 2;}
}


//shooting
if cooldown > 0{cooldown--};
if keyboard_check(vk_space) and cooldown <= 0{
	cooldown = 10;
	with (instance_create_depth(x,y+60,1,PlayerLaser)){
			parent = PlayerShip;
			laser_cell = [PlayerShip.instance_cell[0],PlayerShip.instance_cell[1]];
			bullet_offset = 3;
			move_to_point = put_in_background(laser_cell[0],laser_cell[1]);
			starting_point = put_in_foreground(laser_cell[0],laser_cell[1]);
			target = BasicEnemy;
			hit_target = .05;
			image_xscale = 2;
			image_yscale = 2;
			laser_color = c_lime;
			z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/10;
		}
}