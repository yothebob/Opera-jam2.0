// every step updating player position according to current selected grid cell


show_debug_message(coordinates_to_foreground_cell(x,y));

//moving the player (on foreground grid)
/*
if keyboard_check_pressed(ord("A")) and Battlefield.current_foreground_cell[0] > 1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0]-1,Battlefield.current_foreground_cell[1]];
}
if keyboard_check_pressed(ord("D")) and Battlefield.current_foreground_cell[0] < Battlefield.grid_size-1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0]+1,Battlefield.current_foreground_cell[1]];
}
if keyboard_check_pressed(ord("W")) and Battlefield.current_foreground_cell[1] > 1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1] -1];
}
if keyboard_check_pressed(ord("S")) and Battlefield.current_foreground_cell[1] < Battlefield.grid_size-1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1] +1];
}
*/

if keyboard_check(ord("W")) and Battlefield.current_foreground_cell[1] > 1 {
	y-= player_speed;
	Battlefield.current_foreground_cell = coordinates_to_foreground_cell(x,y);
}

if keyboard_check(ord("S")) and Battlefield.current_foreground_cell[1] < Battlefield.grid_size -1{
	y += player_speed;
	Battlefield.current_foreground_cell = coordinates_to_foreground_cell(x,y);
}
if keyboard_check(ord("A")) and Battlefield.current_foreground_cell[0] > 1{
	x -= player_speed;
	Battlefield.current_foreground_cell = coordinates_to_foreground_cell(x,y);
}

if keyboard_check(ord("D")) and Battlefield.current_foreground_cell[0] < Battlefield.grid_size -1{
	x += player_speed; 
	Battlefield.current_foreground_cell = coordinates_to_foreground_cell(x,y);
}//*/