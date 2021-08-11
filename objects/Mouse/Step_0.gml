/// @description 
x = mouse_x;
y = mouse_y;

audio_master_gain(global.gain/100);



if keyboard_check(vk_escape){
	take_to_menu -= 1;
	if take_to_menu <= 0{
		take_to_menu = 60;
		room_goto(rm_menu);
	}
}
else{ take_to_menu = 60;}