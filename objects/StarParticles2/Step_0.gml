
if room == rm_space or room == rm_pvp{
	particle_location = put_in_background_p2(ceil(BattlefieldP2.grid_size/2),ceil(BattlefieldP2.grid_size/2));
	direction = point_direction(x,y,particle_location[0],particle_location[1]);
}


if instance_exists(ButtonSelector){
	particle_location[1] = y;
	if ButtonSelector.y != id.y{
		move_towards_point(id.x,ButtonSelector.y,2);
	}
}