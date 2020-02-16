	part_system_position(blasterChargeParticleSystem, argument0, argument1);
	part_emitter_region(blasterChargeParticleSystem, blasterChargeParticleEmitter, -4, 4, -4, 4, ps_shape_ellipse, ps_distr_gaussian);
		
	part_emitter_stream(blasterChargeParticleSystem,blasterChargeParticleEmitter,blasterChargeParticle, argument2);
	