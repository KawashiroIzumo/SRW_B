/// @description spiritbool_yesmen(mrid)
/// @param mrid
function spiritbool_yesmen(argument0) {
	var mrid,pid,rid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	return true;



}
