
var up_key_press = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
var down_key_press = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")); 

if up_key_press {
	y -= move_distance;
}else if down_key_press{
	y += move_distance;
}


with (instance_place(x,y,Button)){
	selected = true;
	
}