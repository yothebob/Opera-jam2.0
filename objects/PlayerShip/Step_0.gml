var ship_location = put_in_foreground(Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1]);
x = ship_location[0];
y = ship_location[1];

if keyboard_check_pressed(ord("A")) and Battlefield.current_foreground_cell[0] > 1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0]-1,Battlefield.current_foreground_cell[1]];
}
else if keyboard_check_pressed(ord("D")) and Battlefield.current_foreground_cell[0] < 3{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0]+1,Battlefield.current_foreground_cell[1]];
}
else if keyboard_check_pressed(ord("W")) and Battlefield.current_foreground_cell[1] > 1{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1] -1];
}
else if keyboard_check_pressed(ord("S")) and Battlefield.current_foreground_cell[1] < 3{
	Battlefield.current_foreground_cell = [Battlefield.current_foreground_cell[0],Battlefield.current_foreground_cell[1] +1];
}