part_star = part_system_create();
part_system_depth(part_star,1);

star_3d = part_type_create();
part_type_shape(star_3d,pt_shape_pixel);
part_type_size(star_3d,.1,.9,.1,0);
part_type_speed(star_3d,0,5,.2,0);
part_type_color1(star_3d,c_white);
part_type_alpha3(star_3d,.25,1,.5);
part_type_direction(star_3d,0,360,0,0);
part_type_life(star_3d,100,150);

star_3d_little = part_type_create();
part_type_shape(star_3d_little,pt_shape_pixel);
part_type_size(star_3d_little,.05,.3,.05,0);
part_type_speed(star_3d_little,0,5,.2,0);
part_type_color1(star_3d_little,c_white);
part_type_alpha3(star_3d_little,.66,1,.5);
part_type_direction(star_3d_little,0,360,0,0);
part_type_life(star_3d_little,100,150);

pt_emit = part_emitter_create(part_star);

alarm[0] = 1;
alarm[1] = 1;

