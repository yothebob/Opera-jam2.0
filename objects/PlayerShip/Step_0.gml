//shake the ship if hit
if hit_marker{
	audio_sound_pitch(snd_laser,.4);
	audio_play_sound(snd_laser,1,false);
	tilt += irandom_range(16,24);
	tilt -= irandom_range(14,18);
	tilt += irandom_range(8,12);
	tilt -= irandom_range(4,8);
	hit_marker = false;
}

//player tilting
image_angle = tilt/2;
if tilt > 0{
	tilt -= 1;
}else if tilt < 0{tilt += 1;}



if hits > 0{
	if room == rm_pvp{score=1000;}else{score += 1;}
	
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


	//shooting
	if cooldown > 0{cooldown--};
	if keyboard_check(vk_space) and cooldown <= 0{
		audio_sound_pitch(snd_laser,.8);
		audio_play_sound(snd_laser,2,false);
		cooldown = shoot_rate;
		if room == rm_pvp{
			Player1Pawn.shoot = true;
		}
		with (instance_create_depth(x,y+60,1,Laser)){
				parent = PlayerShip;
				laser_cell = [other.player_foreground_cell[0],other.player_foreground_cell[1]];
				bullet_offset = 2;
				move_to_point = put_in_background(laser_cell[0],laser_cell[1]);
				starting_point = put_in_foreground(laser_cell[0],laser_cell[1]);
				target = Enemy;
				image_xscale = 1.75;
				image_yscale = 1.75;
				hit_target = .2;
				laser_color = c_lime;
				z_speed = point_distance(move_to_point[0],move_to_point[1],x,y)/10;
			}
	}
}


// game over
if hits < 0 and pause == false{// go to end screen
	if room == rm_space{
		pause = true;
		audio_stop_sound(snd_alarm);
		alarm[0] = 30;
	}
	if room == rm_pvp{// go to end screen
		pause = true;
		audio_stop_sound(snd_alarm);
		alarm[1] = 30;
	}
}