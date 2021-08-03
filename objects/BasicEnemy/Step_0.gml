enemy_position = put_in_background(instance_cell[0],instance_cell[1]);
shoot += 1;
move += 1;

x = enemy_position[0];
y = enemy_position[1];

show_debug_message("Enemy cell: " + string(instance_cell)); 

if PlayerShip.instance_cell[0] != instance_cell[0] and PlayerShip.instance_cell[1] != instance_cell[0]{
	show_debug_message("move!");
	if PlayerShip.instance_cell[0] != instance_cell[0]{
		instance_cell[0] -= sign(instance_cell[0] - PlayerShip.instance_cell[0]);
		enemy_position = put_in_background(instance_cell[0],instance_cell[1]);
		
	}
	if PlayerShip.instance_cell[1] != instance_cell[1]{
		instance_cell[1] -= sign(instance_cell[1] - PlayerShip.instance_cell[1])
		enemy_position = put_in_background(instance_cell[0],instance_cell[1]);
	}

}else{
	speed = 0;
	direction = 0;
}

//shooting
if shoot >= 80{	
		with (instance_create_depth(x,y,1,Laser)){
			parent = BasicEnemy;
			laser_cell = [other.instance_cell[0],other.instance_cell[1]];
			move_to_point = put_in_foreground(laser_cell[0],laser_cell[1]);
			starting_point = put_in_background(laser_cell[0],laser_cell[1]);
			target = PlayerShip;
			laser_color = c_red;
			z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/10;
		}
		shoot = 0;
}


if hits > 1{
	id.image_speed = 1;
}