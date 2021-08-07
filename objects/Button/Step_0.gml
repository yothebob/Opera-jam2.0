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
	case "Coop":
		button_label = "Co-op";
		if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Mouse)or selected and keyboard_check_pressed(vk_enter){
			room_goto(rm_pvp);
		}
		break;
}



// colliding with selected == selected and play sound
if place_meeting(x,y,ButtonSelector){
	id.selected = true;
	id.selected_increment = 1;
	if id.selected_increment > 0 and !id.played{
		id.selected_increment -= 1;
		id.played = true;
		audio_play_sound(snd_select,1,false);
	}
}else{
	id.selected = false;
	id.played = false;
}



//move selector to last button you had your mouse on
if place_meeting(x,y,Mouse){
	ButtonSelector.y = y;
}



// button gets alittle bigger when mouse hovering or selected
if selected{
	image_xscale = 1.2;
	image_yscale = 1.2;
	x = 180;
}else{
	image_xscale = 1;
	image_yscale = 1;
	x = 120;
}
