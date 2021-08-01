draw_self();

//gun aiming
var autoaim = instance_nearest(x,y,BasicEnemy);
var rectangle_offset = 15;

if point_distance(x,y,autoaim.x,autoaim.y) < 200{ 
	draw_circle_color(autoaim.x,autoaim.y,3,c_orange,c_orange,false);
	draw_line_color(autoaim.x,autoaim.y,x,y,c_orange,c_orange);
}
draw_rectangle_color(x-rectangle_offset,y-rectangle_offset,x+rectangle_offset,y+rectangle_offset,c_orange,c_orange,c_orange,c_orange,true);