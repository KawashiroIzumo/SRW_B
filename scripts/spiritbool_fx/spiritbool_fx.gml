/// @description spiritbool_fx(mrid)
/// @param mrid
function spiritbool_fx(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	if(find_buff(mrid,12)>=0)return false;
	return true;



}
