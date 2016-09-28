///scr_sprite_explode(Max Life, Min Life, Max Speed, Min Speed, Max Num chunks, min num chunks, Spin, Fade Out, Fade Amt, Fade To Color, End Color, Color Fade Speed, Implode);

var sprite_to_pop = sprite_index;
/* Get sprite width and height
This is used to run through the for loop
and get each peice of the sprite
*/
var ww = sprite_get_width(sprite_to_pop);
var hh = sprite_get_height(sprite_to_pop);

var max_chunks = argument4;
var min_chunks = argument5;
var chunk_count = irandom_range(max_chunks, min_chunks);

var w_chunk_size = ww / chunk_count;
var h_chunk_size = hh / chunk_count;

/* Get sprite offset
This is used to make sure that the particles being
created are ALWAYS aligned with the the sprite
*/
var xoff = sprite_get_xoffset(sprite_to_pop);
var yoff = sprite_get_yoffset(sprite_to_pop);


// Create the particle
for (i = 0; i < ww; i += w_chunk_size) {
    //we need this check because the chunk size can blow out our sprite
    if (i < ww) {
        for (j = 0; j < hh; j += h_chunk_size) {        
            //we need this check because the chunk size can blow out our sprite
            if (j < hh) {
                particle = instance_create((x - xoff) + i, (y - yoff) + j, obj_demo_particle);  // Create the particle
                particle.spr = sprite_to_pop;                                                    // Set the sprite
                particle.w_size = w_chunk_size;
                particle.h_size = h_chunk_size;
                particle.max_life = argument0;                                                  // Setup life variables
                particle.min_life = argument1;                                                  // Determines how long the particle is alive
                particle.min_speed = argument2;                                                 // Setup speed variable
                particle.max_speed = argument3;                                                 // Determines how fast the particle moves
                particle.spin = argument6;                                                      // Rotate the sprite
                particle.fade = argument7;                                                      // TRUE OR FALSE! to fade or not to fade, that is the question.
                particle.fade_amt = argument8;                                                  // How fast to fade the particle
                particle.fade_to_color = argument9;                                             // TRUE OR FALSE! fade to a different color
                particle.end_color = argument10;                                                // What color do you want to fade to?
                particle.color_fader = argument11;                                              // How fast do you want to fade
                particle.implode = argument12;                                                  // TRUE OR FALSE! 
                particle.center_x = x;                                                          // Center of sprite
                particle.center_y = y;                                                          // Center of sprite
                particle.xx = i;                                                                // X
                particle.yy = j;                                                                // Y
            }
        }
    }
}
