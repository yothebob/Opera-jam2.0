// every step updating player position according to current selected grid cell
var ship_location = put_in_foreground(Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1]);
x = ship_location[0];
y = ship_location[1];

//moving the player (on foreground grid)
if keyboard_check(ord("A")) and Battlefield.current_foreground_cell[0] > 1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0]-1,Battlefield.current_foreground_cell[1]];
}
if keyboard_check(ord("D")) and Battlefield.current_foreground_cell[0] < Battlefield.grid_size{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0]+1,Battlefield.current_foreground_cell[1]];
}
if keyboard_check(ord("W")) and Battlefield.current_foreground_cell[1] > 1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1] -1];
}
if keyboard_check(ord("S")) and Battlefield.current_foreground_cell[1] < Battlefield.grid_size{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1] +1];
}
