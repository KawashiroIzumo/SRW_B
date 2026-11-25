/// @description colour_to_dtype(col)
/// @param col
function colour_to_dtype(argument0) {
	var col=argument0,i;
	for(i=1;i<global.dtypenum;i++)
	{
	    if(col==global.dtype_make_colour[i])return i;
	}
	return 0;



}
