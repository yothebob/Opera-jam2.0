//grabbing new player cell position
pawn_cell = PlayerShip.player_foreground_cell;

//putting pawn in proper x, y coordinates for cell
var pawn_coordinates = put_in_background_p2(pawn_cell[0],pawn_cell[1]);
x = pawn_coordinates[0];
y = pawn_coordinates[1];

if keyboard_check(vk_space) and shoot == true{
	with (instance_create_depth(x,y,1,Laser)){
		parent = Player1Pawn;
		laser_cell = [PlayerShip.player_foreground_cell[0],PlayerShip.player_foreground_cell[1]];
		bullet_offset = 2;
		move_to_point = put_in_background_p2(laser_cell[0],laser_cell[1]);
		starting_point = put_in_foreground_p2(laser_cell[0],laser_cell[1]);
		hit_target = 2;
		target = PlayerShipP2;
		laser_color = c_lime;
		z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/10;
	}
	shoot = false;
}

