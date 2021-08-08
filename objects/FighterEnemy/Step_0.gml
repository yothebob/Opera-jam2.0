enemy_position = put_in_background(enemy_cell[0],enemy_cell[1]);
shoot += irandom(2);
move += 1;

//move to background cell x, y values
if ceil(PlayerShip.player_foreground_cell[0]) != ceil(enemy_position[0]) and ceil(PlayerShip.player_foreground_cell[0]) != ceil(enemy_position[1]){
	move_towards_point(PlayerShip.x,PlayerShip.y, enemy_speed);
}else{
	speed = 0;
	direction = 0;
}

//shooting
if shoot >= shoot_rate{	
		with (instance_create_depth(x,y,1,Laser)){
			parent = FighterEnemy;
			laser_cell = [other.enemy_cell[0],other.enemy_cell[1]];
			move_to_point = put_in_foreground(laser_cell[0],laser_cell[1]);
			starting_point = put_in_background(laser_cell[0],laser_cell[1]);
			target = PlayerShip;
			laser_color = c_red;
			z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/10;
		}
		shoot = 0;
}


var player_cell = coordinates_to_foreground_cell(PlayerShip.x,PlayerShip.y)
var get_cell = coordinates_to_background_cell(x,y);
if player_cell[0] != enemy_cell[0] {
	enemy_cell[0] = get_cell[0] 
}
if player_cell[1] != enemy_cell[1]{
	enemy_cell[1] = get_cell[1];
}


if hits < 0{
	id.image_speed = 1;
}
