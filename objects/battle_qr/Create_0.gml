/// @description Insert description here
// You can write your code in this editor
event_inherited()
ground_width=3840
ground_height=2160
battleground=surface_create(ground_width,ground_height)
battlecam_blv=1
bk_speed=1
bk_speed_offset=0
bk_speed_target=0
/**/
var lid=layer_get_id("battleground_bak_layer")
if(!layer_exists(lid))
{
	lid=layer_create(-105,"battleground_bak_layer")
}
instance_create_layer(0,0,"battleground_bak_layer",battle_bak_play)
seq_index=noone
seq_hiter_stand=noone
seq_hiter_hurt=noone
/**/