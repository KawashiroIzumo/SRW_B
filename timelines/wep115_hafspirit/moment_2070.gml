/// @description 动画终点3_seq
var lid=layer_get_id("battleground_seq_layer");
if(layer_sequence_exists(lid,seq_index))
{
	layer_sequence_destroy(seq_index)
}
with(hiter)instance_destroy()