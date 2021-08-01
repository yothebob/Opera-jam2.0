
function find_direction(_x1,_y1,_x2,_y2){
	var res = arctan2(y1 - y2, x1 - x2) + 180;
	return res;
}