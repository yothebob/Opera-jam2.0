draw_self();
draw_text_ext_transformed_color(x-290 + (tilt*2.1),y+200 + (tilt*2.95),string(score) + " Km",10,100,1.5,1.5,image_angle,c_aqua,c_aqua,c_aqua,c_aqua,1);

for (var i = 0; i < hits; i++){
	draw_sprite_ext(spr_health,0,x+240 + (tilt*1.25) + (i*32), y + 230 - (tilt* 2.65),1,1,image_angle,c_white,.75);
}


if hits < 1 {
	low_health_alarm ++;
	if low_health_alarm >= 60{
		draw_set_alpha(.2);
		draw_rectangle_color(0,0,room_width,room_height,c_red,c_red,c_red,c_red,false);
		alarm_stop_flash --;
		if alarm_stop_flash <= 0 {
			low_health_alarm = 0;
			alarm_stop_flash = flash_rate;
		}
	}
}
draw_set_alpha(1);

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