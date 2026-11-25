/// @description find_buff(mrid,bid)
/// @param mrid
/// @param bid
function find_buff(argument0, argument1) {
	var j;
	for(j=0;j<40;j++)
	{
	    if(global.mrobo_buff[argument0,j]==argument1)
	    {
	        return j
	    }
	}
	return -1



}
