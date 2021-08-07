part_emitter_region(part_star,pt_emit, particle_location[0],particle_location[0],particle_location[1],particle_location[1],ps_shape_ellipse,ps_distr_invgaussian);

part_emitter_burst(part_star,pt_emit,choose(space_dust_blues,space_dust_reds,space_dust_whites),3);
alarm[1] = irandom_range(60,180);