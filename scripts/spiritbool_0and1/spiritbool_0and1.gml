/// @description spiritbool_yesmen(mrid)
/// @param mrid
function spiritbool_0and1(argument0) {
	var mrid,pid,rid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(find_buff(mrid,0)>=0||find_buff(mrid,1)>=0)return false;
	else return true;




}
