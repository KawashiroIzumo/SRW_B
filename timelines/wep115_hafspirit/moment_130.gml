///@description sep试验田
var i;
i=actors_now
//show_message("x="+string(actors_x[i])+"  y="+string(actors_y[i])+"   camx="+string(battlecam_x)+"    camy="+string(battlecam_y))
if(sequence_exists(seq_index))
{
	sequence_destroy(seq_index)
}
var lid=layer_get_id("battleground_seq_layer");
seq_index=wepseq_create(lid,wep115_hafspirit_pose_bullet)
if(i==1)layer_sequence_xscale(seq_index,-1)