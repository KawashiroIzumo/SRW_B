/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var lid=layer_get_id("battleground_seq_layer")
var lsarray=layer_get_all_elements(lid);
for(var i=0;i<array_length(lid);i++)
{
	if(layer_get_element_type(lsarray[i])==layerelementtype_sequence)
	{
		sequence_destroy(lsarray[i])
	}
}
