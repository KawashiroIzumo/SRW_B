/// @description spiritbool_craft(mrid)
/// @param mrid
function spiritbool_craft(argument0) {
	var mrid,pid,rid,k;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	var pflag=false;
	for(k=0;k<10;k++)
	{
		if(global.mrobo_special[mrid,k]==11)
		{
			pflag=true
			break
		}
	}
	if(pflag)
	{
		for(k=0;k<8;k++)
		{
			if(global.mrobo_wep[mrid,k]<0)return true
		}
	}
	return false;



}
