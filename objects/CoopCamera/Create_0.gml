/*playerlist = [instance_create_depth(1500,y,-1,PlayerShip),instance_create_depth(3000,y,-1,PlayerShipP2)];

view_enabled = true;

var width = 1366;
var height = 768;
var scale = 1;

global.Cameras = undefined;
for(var i =0 ; i < array_length(playerlist);i++){
	view_visible[i] = true;
	
	//create camera
	var camera_width = width/array_length(playerlist);
	var border_height = 260;
	global.Cameras[i] = camera_create_view(1500 * (i+1),room_height/2,width,height,0,playerlist[i],-1,-1,440,260);
	
	//viewport
	view_xport[i] = camera_width * i;
	view_wport[i] = camera_width;
}

window_set_size(width*scale,height* scale);
surface_resize(application_surface,width * scale, height * scale);
*/