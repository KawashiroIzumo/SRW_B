/// @description perk02s00_miko(mrid,tmrid,pelv,main)
/// @param mrid
/// @param tmrid
/// @param pelv
/// @param main
function perk02s00_miko(argument0, argument1, argument2, argument3) {
	var mrid=argument0,tmrid=argument1,pelv=argument2,main=argument3,reko,pid,rid;
	reco=2*pelv
	rid=global.mrobo_id[mrid]
	if(main==-1)pid=global.mrobo_pliot[mrid]
	else pid=global.robo_sub_pliot[rid,main]
	if(pelv>0)
	{
	    if(main==-1)
	        global.mrobo_pliot_sp[mrid]+=reco
	    else
	        global.mrobo_sub_sp[mrid,main]+=reco
	}
	return mrid



}
