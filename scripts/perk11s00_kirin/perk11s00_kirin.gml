/// @description perk11s00_kirin(mrid,tmrid,pelv,main)
/// @param mrid
/// @param tmrid
/// @param pelv
/// @param main
function perk11s00_kirin(argument0, argument1, argument2, argument3) {
	var mrid=argument0,tmrid=argument1,pelv=argument2,main=argument3,reko,pid,rid;
	rid=global.mrobo_id[mrid]
	if(main==-1)pid=global.mrobo_pliot[mrid]
	else pid=global.robo_sub_pliot[rid,main]
	reco=(0.05+0.05*pelv)*global.mrobo_hpm[i]
	if(pelv>0)
	{
	    global.mrobo_hp[i]=min(global.mrobo_hpm[i],global.mrobo_hp[i]+reco)
	}
	return mrid



}
