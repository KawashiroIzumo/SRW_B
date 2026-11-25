/// @description spirit38_invisible(mrid)
/// @param mrid
function spirit38_invisible(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	for(i=0;i<256;i++)
	{
	    if(global.mrobo_team==0)
	    {
	        rid=global.mrobo_id[i]
	        if(find_buff(i,5)==-1)
	        {
	            add_buff(i,5)
	        }            
	    }
	}
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=0
	a.xs_dig=false
	a.xs_fx=true
	a.xs_fx_ind=spfx38_invisible
	return true;



}
