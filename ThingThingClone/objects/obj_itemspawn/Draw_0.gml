/// @description Insert description here
// You can write your code in this editor
draw_self();
if(flash > 0){
    flash -= 0.12;
    shader_set(spr_flash_yellow);
    shd_alpha = shader_get_uniform(spr_flash_yellow,"_alpha");
	shader_set_uniform_f(shd_alpha, flash);
	draw_self();
	shader_reset();
}