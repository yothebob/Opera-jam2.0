part_star = part_system_create();
part_system_depth(part_star,1);

// star particles spreading circular from center to outsides
star_3d = part_type_create();
part_type_shape(star_3d,pt_shape_pixel);
part_type_size(star_3d,.1,.9,.1,0);
part_type_speed(star_3d,0,5,.2,0);
part_type_color1(star_3d,c_white);
part_type_alpha2(star_3d,0,1);
part_type_direction(star_3d,0,360,0,0);
part_type_life(star_3d,50,100);

// same but smaller
star_3d_little = part_type_create();
part_type_shape(star_3d_little,pt_shape_pixel);
part_type_size(star_3d_little,.05,.3,.05,0);
part_type_speed(star_3d_little,0,5,.2,0);
part_type_color1(star_3d_little,c_white);
part_type_alpha2(star_3d_little,.1,1);
part_type_direction(star_3d_little,0,360,0,0);
part_type_life(star_3d_little,50,100);

pt_emit = part_emitter_create(part_star);

space_dust_reds = part_type_create();
part_type_shape(space_dust_reds,pt_shape_cloud);
part_type_size(space_dust_reds,0,1,.05,0);
part_type_speed(space_dust_reds,0,1.5,.01,0);
part_type_color3(space_dust_reds,c_purple,c_maroon,c_fuchsia);
part_type_alpha3(space_dust_reds,0,.4,.1);
part_type_direction(space_dust_reds,0,360,0,0);
part_type_life(space_dust_reds,300,600);

space_dust_blues = part_type_create();
part_type_shape(space_dust_blues,pt_shape_cloud);
part_type_size(space_dust_blues,0,1,.05,0);
part_type_speed(space_dust_blues,0,1.5,.01,0);
part_type_color3(space_dust_blues,c_purple,c_teal,c_blue);
part_type_alpha3(space_dust_blues,0,.3,.1);
part_type_direction(space_dust_blues,0,360,0,0);
part_type_life(space_dust_blues,300,600);

space_dust_whites = part_type_create();
part_type_shape(space_dust_whites,pt_shape_cloud);
part_type_size(space_dust_whites,0,.6,.05,0);
part_type_speed(space_dust_whites,0,1.5,.01,0);
part_type_color3(space_dust_whites,c_gray,c_ltgray,c_dkgray);
part_type_alpha3(space_dust_whites,0,.2,.1);
part_type_direction(space_dust_whites,0,360,0,0);
part_type_life(space_dust_whites,300,600);


//following the center of the background
if room == rm_space{
	particle_location = put_in_background(ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2));
	x = particle_location[0];
	y = particle_location[1];
	speed = 2;
}else{
	particle_location = [x,y];
}

//particle creation on alarm timer
alarm[0] = 1;
alarm[1] = 1;

