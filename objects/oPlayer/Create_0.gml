
chargeTimer = 0;

blasterChargeParticleSystem = part_system_create();
blasterChargeParticleEmitter = part_emitter_create(blasterChargeParticleSystem);

blasterChargeParticle = part_type_create();
part_type_sprite(blasterChargeParticle, sParticle, 0, 0, 0);
part_type_size(blasterChargeParticle,.25,.5,-.001,0);
part_type_color2(blasterChargeParticle, make_color_rgb(0,200,255), make_color_rgb(255,255,200));
part_type_life(blasterChargeParticle, 10, 15);
part_type_speed(blasterChargeParticle,0.5,1.0,0,0);
part_type_direction(blasterChargeParticle,0,359,0,0);
part_type_gravity(blasterChargeParticle,0,0);
xx = 1;
yy = 1;
pxx = 1;
pyy = 1;
invulnTimer = 0;