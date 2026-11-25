/// @description 停止运镜，seq开始
var i;
i=actors_now
battlecam_x=actors_x[!i+2]
battlecam_y=actors_y[!i+2]
battlecam_speed=0
var lid=layer_get_id("battleground_seq_layer");
if(layer_sequence_exists(lid,seq_index))
{
	layer_sequence_destroy(seq_index)
}
seq_hiter_stand=global.robo_spr_stand[global.mrobo_id[mrid[!i]]]
seq_hiter_hurt=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
seq_index=wepseq_create(lid,wep111_rocket_punch_hit)
if(i==1)layer_sequence_xscale(seq_index,-1)
