
function game_over_screen(_title="test",_flavor="flavor text"){
	
	//shade out background
	draw_set_alpha(.4);
	draw_rectangle_color(0,0,room_width,room_height,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
	draw_set_alpha(1);
	
	//box position
	var width_center = room_width/2;
	var height_center = room_height/2;
	var box_top_xy = [width_center/2,height_center/2];
	var box_bottom_xy = [width_center + width_center/2,height_center + height_center/2];
	
	//draw boxes
	var teal = make_color_rgb(0,191,243);
	draw_rectangle_color(width_center/2,height_center/2,width_center + width_center/2,height_center + height_center/2,teal,teal,teal,teal,true);
	draw_rectangle_color(box_top_xy[0]+1,box_top_xy[1]+1,box_bottom_xy[0]-1,box_bottom_xy[1]-1,c_black,c_black,c_black,c_black,false);
	
	//draw title text
	draw_text_ext_transformed_color(width_center - (string_length(_title)*10),height_center/1.5,_title,10,250,2,2,0,teal,teal,teal,teal,1);
	
	//draw flavor text
	draw_text_color(width_center - (string_length(_title)*15),height_center/1.25,_flavor,teal,teal,teal,teal,1);
	
}