draw_self();

if (hit_marker){
	gpu_set_fog(true,c_white,0,0);
	draw_self();
	gpu_set_fog(false,c_white,0,0);
	hit_marker = false;
}