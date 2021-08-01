//player tilting
image_angle = tilt/2;

if tilt > 0{
	tilt -= 1;
}else if tilt < 0{tilt += 1;}


//player movement
if keyboard_check(ord("W")) and player_foreground_cell[1] > 1 {
	y-= player_speed;
	player_foreground_cell = coordinates_to_foreground_cell(x,y);
}
if keyboard_check(ord("S")) and player_foreground_cell[1] < Battlefield.grid_size -1{
	y += player_speed;
	player_foreground_cell = coordinates_to_foreground_cell(x,y);
}
if keyboard_check(ord("A")) and player_foreground_cell[0] > 1{
	x -= player_speed;
	player_foreground_cell = coordinates_to_foreground_cell(x,y);
	if tilt < 20{tilt += 2;}
}
if keyboard_check(ord("D")) and player_foreground_cell[0] < Battlefield.grid_size -1{
	x += player_speed; 
	player_foreground_cell = coordinates_to_foreground_cell(x,y);
	if tilt > -20{tilt -= 2;}
}


if cooldown > 0{cooldown--};
//shooting
/*
if keyboard_check_pressed(vk_space) and cooldown <= 0{
	with instance_create_depth()
}