/// @description workout_avl_special(mrid,wid,tmrid)
/// @param mrid
/// @param wid
/// @param tmrid
function workout_avl_special(argument0, argument1, argument2) {
	var mrid,rid,wid,sid,dis,tmrid,ii,lsatk,lswip,pid;
	mrid=argument0
	wid=argument1
	tmrid=argument2
	pid=global.mrobo_pliot[mrid]
	if(pid>=0)
	{
	    for(j=0;j<10;j++)
	    {
			if(global.pliot_perk[pid,j]==14)
	        {
	            return -1
	        }
		}
	}
	else return -1
	rid=global.mrobo_id[tmrid]
	lswip=-1
	lsatk=0
	for(ii=0;ii<40;ii++)
	{
	    sid=global.robo_special[rid,ii]
	    if(sid>=0)
	    {
	        if(global.special_type[sid]==1)
	        {
	            //0=通吃 1=只抵挡光束 2=无法抵挡光束
	            if(global.wep_beam[wid])
	            {
	                //show_message("是光束")
	                if(global.special_anti_beam_type[sid]==2)continue;
	            }
	            else
	            {
	                //show_message("不是光束")
	                if(global.special_anti_beam_type[sid]==1)continue;
	            }
	            if(global.mrobo_en[tmrid]<global.special_en[sid])continue;
	            else if(irandom(100)>global.special_mzl[sid])continue;
	            else return sid;
	        }
	    }
	}
	return -1;



}
