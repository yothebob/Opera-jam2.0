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


player_location = put_in_background(ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2));
x = player_location[0];
y = player_location[1];
speed = 6;
//particle creation on alarm timer
alarm[0] = 1;

