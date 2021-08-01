enemy_position = put_in_background(Battlefield.current_background_cell[0],Battlefield.current_background_cell[1]);

x = enemy_position[0];
y = enemy_position[1];

shoot += 1;
if shoot >= 10{
		var laser_location = put_in_background(Battlefield.current_background_cell[0],Battlefield.current_background_cell[1]);
		with (instance_create_depth(laser_location[0],laser_location[1],1,Laser)){
			laser_cell = [Battlefield.current_background_cell[0],Battlefield.current_background_cell[1]];
			move_to_point = put_in_foreground(Battlefield.current_background_cell[0],Battlefield.current_background_cell[1]);
			starting_point = put_in_background(Battlefield.current_background_cell[0],Battlefield.current_background_cell[1]);
			z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/10;
		}
		shoot = 0;
}