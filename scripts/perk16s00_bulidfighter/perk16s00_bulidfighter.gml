/// @description perk16s00_bulidfighter(mrid,tmrid,pelv,main)
/// @param mrid
/// @param tmrid
/// @param pelv
/// @param main
function perk16s00_bulidfighter(argument0, argument1, argument2, argument3) {
	var mrid=argument0,tmrid=argument1,pelv=argument2,main=argument3,reko,pid,rid;
	rid=global.mrobo_id[mrid]
	if(main==-1)pid=global.mrobo_pliot[mrid]
	else pid=global.robo_sub_pliot[rid,main]
	if(pelv>0)
	{
		var i,wid;
	    for(i=0;i<10;i++)
		{
			wid=global.mrobo_wep[mrid,i]
			if(wid>=0)
			{
				if(global.wep_extra[wid]&&global.wep_bullet[wid]>0)
				{
					global.mrobo_wep_bullet[mrid,i]=max(global.mrobo_wep_bullet[mrid,i],global.wep_bullet[wid])
				}
			}
		}
	}
	return mrid



}
