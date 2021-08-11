if place_meeting(x,y,Mouse) and mouse_check_button_pressed(mb_left){
	if playing{
		audio_stop_sound(music_background);
		image_index = 1;
		playing = false;
	}
	else if !playing{
		image_index = 0;
		alarm[0] = 1;
		playing = true;
	}
}