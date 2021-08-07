playerlist = ["player1","player2"];

view_enabled = true;

var width = 960
var height = 540;
var scale = 1.5;

global.Cameras = undefined;
for(var i =0 ; i < array_length(playerlist);i++){
	view_visible[i] = true;
	
	//create camera
	var camera_width = width/array_length(playerlist);
	global.Cameras[i] = camera_create_view(0,0,camera_width,height, 0,playerlist[i],-1,-1,camera_width,height);
	
	//viewport
	view_xport[i] = camera_width * i;
	view_wport[i] = camera_width;
}

window_set_size(width*scale,height* scale);
surface_resize(application_surface,width * scale, height * scale);