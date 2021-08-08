score += 1;



//player tilting
image_angle = tilt/2;
if tilt > 0{
	tilt -= 1;
}else if tilt < 0{tilt += 1;}



//player movement
if keyboard_check(vk_up) and player_foreground_cell[1] > 1 {
	y-= player_speed;
	player_foreground_cell = coordinates_to_foreground_cell(x,y);
}
if keyboard_check(vk_down) and player_foreground_cell[1] < Battlefield.grid_size -1{
	y += player_speed;
	player_foreground_cell = coordinates_to_foreground_cell(x,y);
}
if keyboard_check(vk_left) and player_foreground_cell[0] > 1{
	x -= player_speed;
	player_foreground_cell = coordinates_to_foreground_cell(x,y);
	if tilt < 20{tilt += 2;}
}
if keyboard_check(vk_right) and player_foreground_cell[0] < Battlefield.grid_size -1{
	x += player_speed; 
	player_foreground_cell = coordinates_to_foreground_cell(x,y);
	if tilt > -20{tilt -= 2;}
}




//shooting
if cooldown > 0{cooldown--};
if keyboard_check(vk_space) and cooldown <= 0{
	audio_play_sound(snd_laser,2,false);
	cooldown = 10;
	with (instance_create_depth(x,y+60,1,Laser)){
			parent = PlayerShip;
			laser_cell = [other.player_foreground_cell[0],other.player_foreground_cell[1]];
			bullet_offset = 2;
			move_to_point = put_in_background(laser_cell[0],laser_cell[1]);
			starting_point = put_in_foreground(laser_cell[0],laser_cell[1]);
			target = Enemy;
			hit_target = .05;
			image_xscale = 1.75;
			image_yscale = 1.75;
			laser_color = c_lime;
			z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/10;
		}
}



//
if hits < 0{
	highscore_add(get_string("Name?",""),score);
	score = 0;
	audio_stop_all();
	room_goto(rm_menu);
}

//debug
show_debug_message("player: " + string(player_foreground_cell));