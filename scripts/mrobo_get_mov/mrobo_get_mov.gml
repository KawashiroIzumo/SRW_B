/// @description mrobo_get_mov(mrid)
/// @param mrid
function mrobo_get_mov(argument0) {
	var a,b,k,bid;
	b=global.robo_mov[global.mrobo_id[argument0]]
	for(k=0;k<40;k++)
	{
	    if(global.mrobo_buff[argument0,k]>=0)
	    {
			bid=global.mrobo_buff[argument0,k]
			b+=global.buff_mov[bid]
		}
	}
	for(k=0;k<4;k++)
	{
	    eid=global.mrobo_equip[argument0,k]
	    if(eid>=0)
	    {
	        b+=global.equip_mov[eid]
	    }
	}
	if(b<0)b=0
	return b;



}
