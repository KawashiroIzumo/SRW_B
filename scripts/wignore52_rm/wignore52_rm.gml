/// @description wignore52_rm(mrid,wid)
/// @param mrid
/// @param wid
function wignore52_rm(argument0, argument1) {
	var rid,pid,tmrid,wid,dis;
	rid=global.mrobo_id[argument0]
	pid=global.mrobo_pliot[argument0]
	wid=argument1
	//show_message("rid="+string(rid)+" pid="+string(pid)+" wid"+string(wid))
	if(global.ls_variable[1]!=1)
	{
	    //show_message("ls_variable X")
	    return false
	}
	else
	{
	    tmrid=-1
	    if(pid==2)
	    {
	        tmrid=mrobo_find_pliot(5)   
	        //show_message("tmrid="+string(tmrid))     
	    }
	    if(pid==5)
	    {
	        tmrid=mrobo_find_pliot(2)    
	        //show_message("tmrid="+string(tmrid))   
	    }
	    if(tmrid>=0)
	    {
	        if(global.mrobo_en[tmrid]<global.wep_en[wid])return false;
	        dis=point_distance(global.mrobo_x[argument0],global.mrobo_y[argument0],global.mrobo_x[tmrid],global.mrobo_y[tmrid])
	        //show_message("distance="+string(dis))
	        if(floor(dis)<=1)
	        {
	            return true
	        }        
	    }
	}
	return false



}
