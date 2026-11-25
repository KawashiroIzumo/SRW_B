/// @description spiritbool_bq(mrid)
/// @param mrid
function spiritbool_bq(argument0) {
	var mrid,pid,rid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(find_buff(mrid,14)>=0)return false;
	return true;



}
