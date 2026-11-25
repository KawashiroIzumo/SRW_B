/// @description spiritbool_brave(mrid)
/// @param mrid
function spiritbool_brave(argument0) {
	var mrid,pid,rid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	if(find_buff(mrid,2)<0)return true;
	if(find_buff(mrid,0)<0)return true;
	if(find_buff(mrid,14)<0)return true;
	if(find_buff(mrid,8)<0)return true;
	if(find_buff(mrid,9)<0)return true;
	return false;



}
