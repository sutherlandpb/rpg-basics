///scr_spite_radial(Invert, Dissolve Speed, Chunk Size, Shrink, Shrink amt, Gravity, Fade, Fade amt, Spin, Life);

/* Get sprite width and height
This is used to run through the for loop
and get each peice of the sprite
*/
ww = sprite_get_width(sprite_index);
hh = sprite_get_height(sprite_index);
spr_size = (ww + hh) / 2;


/* Get sprite offset
This is used to make sure that the particles being
created are ALWAYS aligned with the the sprite
*/
xoff = sprite_get_xoffset(sprite_index);
yoff = sprite_get_yoffset(sprite_index);

var size = argument2;
var dissolve_speed = argument1;
var invert = argument0;

// Create the particle
for (i = 0; i < ww; i += size) {
    for (j = 0; j < hh; j += size) {
        particle = instance_create((x - xoff) + i, (y - yoff) + j, obj_radial_particle);        // Create the particle in the correct place        
        particle.spr = sprite_index;                                                            // Give the particle the right sprite index
        particle.size = size;                                                                   // Make the particle the correct size   
        if (invert == 0) particle.timer1 = ((point_distance(x,y, (x - xoff) + i, (y - yoff) + j)) / spr_size) * dissolve_speed;                             // Make the particle dissolve from inside-out (formula explained below)
        if (invert == 1) particle.timer1 = abs((((point_distance(x,y, (x - xoff) + i, (y - yoff) + j)) / spr_size) * dissolve_speed) - dissolve_speed);     // Make the particle dissolve from outside-in
        particle.shrinkon = argument3;                                                          // Turn on or off shrink
        particle.shrink_amt = argument4;                                                        // How much to shrink by
        particle.grav = argument5;                                                              // Give particle gravity                                                               
        particle.fadeon = argument6;                                                            // Turn on or off fade
        particle.fade_amt = argument7;                                                          // How much to fade by
        particle.rotate_speed = argument8;                                                      // How much to rotate by
        particle.life = argument9;                                                              // Particle Life
        particle.xx = i;                                                                        // X-pos
        particle.yy = j;                                                                        // Y-pos
    }
}

/*
How the radial dissolve works (and invert):
Its pretty simple actually. 
1) get the distance from the center of the sprite to the particle.
2) Devide the above value by the sprite size (normalizes the values between 1 and 0)
3) Multiply the above value by the dissolve speed.
Invert:
4) Minus the above value by the dissolve speed to "invert" the value
5) Get the absolute of the above value (so there are no negative numbers)
*/