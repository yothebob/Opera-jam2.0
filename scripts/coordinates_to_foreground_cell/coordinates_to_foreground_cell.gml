
function coordinates_to_foreground_cell(_x,_y){
	var object_cell = [round((_x - ((Battlefield.padding/2)))/Battlefield.foreground_cell_size_x),round((_y - ((Battlefield.padding/2)))/Battlefield.foreground_cell_size_y)];
	return object_cell;
}