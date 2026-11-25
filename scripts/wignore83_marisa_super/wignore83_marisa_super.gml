/// @description wignore83_marisa_super(mrid,wid)
/// @param mrid
/// @param wid
function wignore83_marisa_super(argument0, argument1) {
	var rid,pid,tmrid,wid,dis;
	rid=global.mrobo_id[argument0]
	pid=global.mrobo_pliot[argument0]
	wid=argument1
	//show_message("rid="+string(rid)+" pid="+string(pid)+" wid"+string(wid))
	if(!global.ls_variable[7])
	{
	    //show_message("ls_variable X")
	    return false
	}
	else
		return true



}
