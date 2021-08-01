// every step updating player position according to current selected grid cell
var ship_location = put_in_foreground(Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1]);
x = ship_location[0];
y = ship_location[1];

//moving the player (on foreground grid)

if keyboard_check(ord("A")) and Battlefield.current_foreground_cell[0] > 1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0]-1,Battlefield.current_foreground_cell[1]];
	show_debug_message(coordinates_to_foreground_cell(x,y));
}
if keyboard_check(ord("D")) and Battlefield.current_foreground_cell[0] < Battlefield.grid_size{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0]+1,Battlefield.current_foreground_cell[1]];
	show_debug_message(coordinates_to_foreground_cell(x,y));
}
if keyboard_check(ord("W")) and Battlefield.current_foreground_cell[1] > 1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1] -1];
	show_debug_message(coordinates_to_foreground_cell(x,y));
}
if keyboard_check(ord("S")) and Battlefield.current_foreground_cell[1] < Battlefield.grid_size{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1] +1];
	show_debug_message(coordinates_to_foreground_cell(x,y));
}

/*
if keyboard_check(ord("W")) or keyboard_check(ord("S")){
	x+= (keyboard_check(ord("W")) - keyboard_check(ord("S"))) * 5;
	Battlefield.current_foreground_cell = coordinates_to_foreground_cell(x,y);
	show_debug_message(Battlefield.current_foreground_cell);
}
if keyboard_check(ord("A")) or keyboard_check(ord("D")){
	y+= (keyboard_check(ord("A")) or keyboard_check(ord("D"))) * 5; 
	show_debug_message(coordinates_to_foreground_cell(x,y));
}*/