/// scr_basic_organ_anim

var deathTime = argument[0];
var time = argument[1];
var shakeTime = deathTime / 2;

if (time != -1) {
    var scale = min(deathTime / time, 1.5);
    image_xscale = scale;
    image_yscale = scale;
}


if (time <= shakeTime) {
    image_index = 1;
    image_angle = floor(random_range(-5,5));
} else {
    image_index = 0;
    image_angle = 0;
}

draw_self();
