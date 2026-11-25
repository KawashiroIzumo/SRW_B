// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function actors_change_open_text(mrid_origin,mrid_opponent)
{
	var pid=global.mrobo_pliot[mrid_origin],i,k,lslist=ds_list_create();
	for(i=0;i<global.pliot_open_num[pid];i++)
	{
		var fflag=true;
		if(script_exists(global.pliot_open_ignore[pid,i]))
		{
			fflag=script_execute(global.pliot_open_ignore[pid,i],mrid_origin,mrid_opponent,global.pliot_open_ignore_argument[pid,i])
		}
		if(fflag)ds_list_add(lslist,i)
	}
	ds_list_shuffle(lslist)
    k=lslist[| 0]
	ds_list_destroy(lslist)
    actors_dhk_head=global.pliot_open_head[pid,k]
    actors_dhk_face=global.pliot_open_face[pid,k]
    actors_dhk_text=global.pliot_open_name[pid,k]
    if(actors_dhk_text==global.pliot_name[pid])
	{
		actors_dhk_text=global.mrobo_pliot_c_name[mrid_origin]
		actors_dhk_head=global.mrobo_pliot_c_head[mrid_origin]
	}
    actors_dhk_text+="：#"+global.pliot_open_text[pid,k]
	return k;
}