
if room == rm_space{
	particle_location = put_in_background(ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2));
	direction = point_direction(x,y,particle_location[0],particle_location[1]);
}//else{
//	particle_location = [x,y];
//}

if instance_exists(ButtonSelector){
	particle_location[1] = y;
	if ButtonSelector.y != id.y{
		move_towards_point(id.x,ButtonSelector.y,2);
	}
}