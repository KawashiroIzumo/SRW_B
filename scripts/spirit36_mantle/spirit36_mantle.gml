/// @description spirit36_mantle(mrid)
/// @param mrid
function spirit36_mantle(argument0) {
	var mrid,pid,rid,i,wid;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	a=global.mrobo_en[mrid]
	mrobo_refrish(mrid)
	global.mrobo_en[mrid]=a
	a=instance_create(2,2,ability_change_con)
	a.mode=1
	a.mrid=mrid
	a.dmg=global.mrobo_enm[mrid]
	a.xs_fx=true
	a.xs_fx_ind=spfx36_mantle
	for(i=0;i<10;i++)
	{
	    wid=global.mrobo_wep[mrid,i]
	    if(wid>=0)
	        global.mrobo_wep_bullet[mrid,i]=global.wep_bullet[wid]
	}
	return true;



}
