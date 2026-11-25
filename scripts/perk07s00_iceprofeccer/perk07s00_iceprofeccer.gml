/// @description perk07s00_iceprofeccer(mrid,tmrid,pelv,main)
/// @param mrid
/// @param tmrid
/// @param pelv
/// @param main
function perk07s00_iceprofeccer(argument0, argument1, argument2, argument3) {
	var mrid=argument0,tmrid=argument1,pelv=argument2,main=argument3,reko,pid,rid;
	rid=global.mrobo_id[mrid]
	if(main==-1)pid=global.mrobo_pliot[mrid]
	else pid=global.robo_sub_pliot[rid,main]
	reco=global.pliot_sp[pid]*0.09
	if(global.robo_magic[rid])
	{
	    global.mrobo_en[i]=min(global.mrobo_enm[i],global.mrobo_en[i]+0.09*global.mrobo_enm[i])
	}
	if(pelv>0)
	{
	    if(main==-1)
	        global.mrobo_pliot_sp[mrid]+=reco
	    else
	        global.mrobo_sub_sp[mrid,main]+=reco
	}
	return mrid



}
