// button action options
switch (button_event){
	case "Endless":
		button_label = "Endless Mode";
		if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Mouse) or selected and keyboard_check_pressed(vk_enter){
			room_goto(rm_space);
		}
		break;
	case "Settings":
		button_label = "Settings";
		if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Mouse)or selected and keyboard_check_pressed(vk_enter){
			room_goto(rm_settings);
		}
		break;
	case "Menu":
		button_label = "Main Menu";
		if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Mouse)or selected and keyboard_check_pressed(vk_enter){
			room_goto(rm_menu);
		}
		break;
	case "Highscore":
		button_label = "High Score";
		if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Mouse)or selected and keyboard_check_pressed(vk_enter){
			room_goto(rm_highscore);
		}
		break;
}



// colliding with selected == selected
if place_meeting(x,y,ButtonSelector){
	id.selected = true;
}else{
	id.selected = false;
}



// button gets alittle bigger when mouse hovering or selected
if place_meeting(x,y,Mouse) or selected{
	image_xscale = 1.1;
	image_yscale = 1.1;
}else{
	image_xscale = 1;
	image_yscale = 1;
}
