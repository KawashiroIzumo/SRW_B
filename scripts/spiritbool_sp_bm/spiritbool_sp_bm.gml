/// @description spiritbool_sp_bm(mrid)
/// @param mrid
function spiritbool_sp_bm(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	if(global.mrobo_pliot_sp[mrid]<global.pliot_sp[pid])
	{
	    return true;
	}
	return false;



}
