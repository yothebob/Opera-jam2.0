depth = y;
if room == rm_space{
	particle_location = put_in_background(ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2));
	direction = point_direction(x,y,particle_location[0],particle_location[1]);
}//else{
//	particle_location = [x,y];
//}

//if instance_exists(ButtonSelector){
//	if ceil(ButtonSelector.y) != ceil(y){
//		move_towards_point(x,ceil(ButtonSelector.y),2);
//	}
//}