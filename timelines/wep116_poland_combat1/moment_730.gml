/// @description 动画终点2 收起黑幕
var i,j;
i=actors_now
actors_alpha[!i]=1
var lid=layer_get_id("battleground_seq_layer");
if(layer_sequence_exists(lid,seq_index))
{
	layer_sequence_destroy(seq_index)
}
with(hiter)instance_destroy()