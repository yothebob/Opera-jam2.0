
   keyboard_string = string_copy(keyboard_string, 1, 15);
   name = keyboard_string;

if keyboard_check_pressed(vk_enter) and string_length(name) > 2
{
highscore_add(name,score);
room_goto(rm_menu);
}
if room == rm_pvp_over{
	if keyboard_check_pressed(vk_enter){
		alarm[1] = 10;
	}
}
