enemy_position = put_in_background(enemy_cell[0],enemy_cell[1]);
shoot += 1;
move += 1;

//move to background cell x, y values
if round(x) != round(enemy_position[0]) and round(y) != round(enemy_position[1]){
	direction = point_direction(x,y,enemy_position[0],enemy_position[1]);
	speed = enemy_speed;
}else{
	speed = 0;
	x = enemy_position[0];
	y = enemy_position[1];
}

//shooting
if shoot >= 80{	
		with (instance_create_depth(x,y,1,Laser)){
			parent = other.id;
			laser_cell = [other.enemy_cell[0],other.enemy_cell[1]];
			move_to_point = put_in_foreground(laser_cell[0],laser_cell[1]);
			starting_point = put_in_background(laser_cell[0],laser_cell[1]);
			z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/10;
		}
		shoot = 0;
}

//moving

if move >=20{
	var player_cell = coordinates_to_foreground_cell(PlayerShip.x,PlayerShip.y)
	if player_cell[0] != enemy_cell[0] {
		enemy_cell[0] -= sign(enemy_cell[0] - player_cell[0]);
	}
	if player_cell[1] != enemy_cell[1]{
		enemy_cell[1] -= sign(enemy_cell[1] - player_cell[1])
	}
	move = 0;
}