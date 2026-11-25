/// @description spirit02_autoaim(mrid)
/// @param mrid
function spirit04_faqqqq(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	for(i=0;i<256;i++)
	{
	    if(global.mrobo_team[i]!=global.mrobo_team[mrid])
	        add_buff(i,3)
	}
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=0
	a.xs_dig=false
	a.xs_fx=true
	a.xs_fx_ind=spfx04_faqqqq
	return true;



}
