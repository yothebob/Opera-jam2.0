switch (button_event){
	case "Endless":
		button_label = "Endless Mode";
		if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Mouse){
			room_goto(rm_space);
		}
		break;
	case "Settings":
		button_label = "Settings";
		if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Mouse){
			room_goto(rm_settings);
		}
		break;
	case "Menu":
		button_label = "Main Menu";
		if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Mouse){
			room_goto(rm_menu);
		}
		break;
	case "Highscore":
		button_label = "High Score";
		if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Mouse){
			room_goto(rm_highscore);
		}
		break;
}

if place_meeting(x,y,Mouse){
	image_xscale = 1.1;
	image_yscale = 1.1;
}