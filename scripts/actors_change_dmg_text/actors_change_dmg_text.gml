/// @description actors_change_dmg_text(pid,blv)
/// @param pid
/// @param blv
function actors_change_dmg_text(argument0, argument1) 
{
	var k,pid,blv;
	pid=argument0
	blv=argument1
	if(blv>=0.7)
	{
	    k=irandom_range(0,global.pliot_hurt_s_num[pid]-1)
	    actors_dhk_head=global.pliot_hurt_s_head[pid,k]
	    actors_dhk_face=global.pliot_hurt_s_face[pid,k]
	    actors_dhk_text=global.pliot_hurt_s_name[pid,k]+"：#"+global.pliot_hurt_s_text[pid,k]
	}
	else if(blv>=0.3)
	{
	    k=irandom_range(0,global.pliot_hurt_m_num[pid]-1)
	    actors_dhk_head=global.pliot_hurt_m_head[pid,k]
	    actors_dhk_face=global.pliot_hurt_m_face[pid,k]
	    actors_dhk_text=global.pliot_hurt_m_name[pid,k]+"：#"+global.pliot_hurt_m_text[pid,k]
	}
	else
	{
	    k=irandom_range(0,global.pliot_hurt_l_num[pid]-1)
	    actors_dhk_head=global.pliot_hurt_l_head[pid,k]
	    actors_dhk_face=global.pliot_hurt_l_face[pid,k]
	    actors_dhk_text=global.pliot_hurt_l_name[pid,k]+"：#"+global.pliot_hurt_l_text[pid,k]
	}
	return 0;



}
