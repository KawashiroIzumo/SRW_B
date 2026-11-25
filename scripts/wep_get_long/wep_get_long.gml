/// @description wep_get_long(wid,mrid)
/// @param wid
/// @param mrid
function wep_get_long(argument0, argument1) {
	var a,b,pid,j,ice,k;
	b=global.wep_long[argument0]
	pid=global.mrobo_pliot[argument1]
	a=find_buff(argument1,7)
	if(a>=0)
	{
	    if(b>1)b+=2
	}
	ice=false
	for(k=0;k<4;k++)
	{
	    eid=global.mrobo_equip[argument1,k]
	    if(eid>=0)
	    {
	        if(b>1)b+=global.equip_long[eid]
	    }
	}
	if(string_pos("冰",global.wep_name[argument0]))ice=true
	if(string_pos("雪",global.wep_name[argument0]))ice=true
	if(string_pos("冷",global.wep_name[argument0]))ice=true
	if(string_pos("冻",global.wep_name[argument0]))ice=true
	if(pid>=0)
	{
	    for(j=0;j<10;j++)
	    {
	        if(global.pliot_perk[pid,j]==6)
	        {
	            if(ice&&b>1)b+=1
	        }
	    }
	}
	return b;



}
