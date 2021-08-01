var player_location = put_in_background(ceil(Battlefield.grid_size/2),ceil(Battlefield.grid_size/2));

part_emitter_region(part_star,pt_emit, player_location[0],player_location[0],player_location[1],player_location[1],ps_shape_ellipse,ps_distr_invgaussian);

part_emitter_burst(part_star,pt_emit,star_3d,10);
part_emitter_burst(part_star,pt_emit,star_3d_little,10);
alarm[0] = 7;