/// @description pliot_lvup(pid)
/// @param pid
function pliot_lvup(argument0) {
	var i;
	i=argument0
	global.pliot_sp[i]+=global.pliot_sp_grow[i]
	global.pliot_combat[i]+=global.pliot_combat_grow[i]
	global.pliot_shoot[i]+=global.pliot_shoot_grow[i]
	global.pliot_aim[i]+=global.pliot_aim_grow[i]
	global.pliot_dodge[i]+=global.pliot_dodge_grow[i]
	global.pliot_defence[i]+=global.pliot_defence_grow[i]
	global.pliot_skill[i]+=global.pliot_skill_grow[i]
	for(j=0;j<10;j++)
	{
	    if(global.pliot_perk[i,j]>=0)
	    {
	        if(global.pliot_lv[i]+1==global.pliot_perk_get_lv[i,j])
	        {
	            global.pliot_perk_lv[i,j]=1
	        }
	        else if((global.pliot_lv[i]+1-global.pliot_perk_get_lv[i,0]) mod global.pliot_perk_grow[i,j] ==0)
	        {
	            global.pliot_perk_lv[i,j]+=1
	        }
	    }
    
	}
	global.pliot_lv[i]+=1

	return i;



}
