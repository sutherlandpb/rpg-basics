///scr_animation_hit_frame(frame)
var frame = argument[0];
return (image_index >= frame + 1 - image_speed) && (image_index < frame + 1);
