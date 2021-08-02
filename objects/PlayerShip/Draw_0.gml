draw_self();

//gun aiming
if instance_exists(BasicEnemy){
	var autoaim = instance_nearest(x,y,BasicEnemy);
}else{var autoaim = PlayerShip;}

var xx = coordinates_to_background_cell(autoaim.x,autoaim.y);
var rectangle_offset = 15;
if xx[0] == player_foreground_cell[0] /*and xx[1] == player_foreground_cell[1] point_distance(x,y,autoaim.x,autoaim.y) < 30*/{var color = c_green;}else{var color = c_orange;} 

if point_distance(x,y,autoaim.x,autoaim.y) < 300{ 
	draw_rectangle_color(autoaim.x-rectangle_offset/2,autoaim.y-rectangle_offset/2,autoaim.x+rectangle_offset/2,autoaim.y+rectangle_offset/2,color,color,color,color,true);
}
draw_rectangle_color(x-rectangle_offset,y-rectangle_offset,x+rectangle_offset,y+rectangle_offset,color,color,color,color,true);