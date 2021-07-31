// temperary for testing
image_xscale += z_growth;
image_yscale += z_growth;

move_towards_point(move_to_point[0],move_to_point[1],z_speed);

if image_xscale >= 6.2 or image_yscale >= 6.2{
	instance_destroy();
}

if image_xscale > 6 and image_xscale < 6.2{
	if place_meeting(x,y,PlayerShip){
		instance_destroy();
	}
}