if place_meeting(x,y,Mouse) and mouse_check_button(mb_left) and mouse_x > x and mouse_x < x+100{
	volume = (mouse_x-x);
}

global.gain = volume;