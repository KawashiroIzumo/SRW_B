/// @description spirit30_brave(mrid)
/// @param mrid
function spirit30_brave(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	add_buff(mrid,0)
	add_buff(mrid,2)
	add_buff(mrid,8)
	add_buff(mrid,9)
	add_buff(mrid,14)
	global.mrobo_pliot_ql[mrid]+=10
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=0
	a.xs_dig=false
	a.xs_fx=true
	a.xs_fx_ind=spfx30_brave
	return true;



}
