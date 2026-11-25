/// @description add_load(flocate)
/// @param flocate
function add_load(argument0) {
	var fin,flocate,ls_map,i,lsverson;

	flocate=argument0+"_sod.json";
	fin = file_text_open_read(flocate)
	ls_map=json_decode(file_text_read_string(fin))
	global.money=ls_map[? "money"]
	global.turn_num=ls_map[? "turn_num"]//回合数
	global.turn_sum=ls_map[? "turn_sum"]//总回合数
	global.stage_finish=ls_map[? "stage_finish"]//主线进度
	global.task_name=ls_map[? "task_name"]
	//show_message("global.task_name="+ls_map[? "task_name"])
	i=ls_map[? "nextstage"]
	if(room_exists(asset_get_index(i)))
	global.nextstage=asset_get_index(i)
	else show_message("场景【"+i+"】不存在")
	for(i=0;i<100;i++)
	{
	    global.ls_variable[i]=ls_map[? "ls_variable["+string(i)+"]"] 
	    global.ls_string[i]=ls_map[? "ls_string["+string(i)+"]"] 
    
	    global.base_rid[i]=ls_map[? "base_rid["+string(i)+"]"] 
	    global.base_enabled[i]=ls_map[? "base_enabled["+string(i)+"]"] 
	    global.base_hp_kai[i]=ls_map[? "base_hp_kai["+string(i)+"]"] 
	    global.base_en_kai[i]=ls_map[? "base_en_kai["+string(i)+"]"] 
	    global.base_ac_kai[i]=ls_map[? "base_ac_kai["+string(i)+"]"] 
	    global.base_ab_kai[i]=ls_map[? "base_ab_kai["+string(i)+"]"] 
	    global.base_def_kai[i]=ls_map[? "base_def_kai["+string(i)+"]"] 
	    global.base_wep_kai[i]=ls_map[? "base_wep_kai["+string(i)+"]"] 
	    global.base_pliot[i]=ls_map[? "base_pliot["+string(i)+"]"] 
	    for(j=0;j<10;j++)
	    {
	        global.base_wep_enabled[i,j]=ls_map[? "base_wep_enabled[["+string(i)+","+string(j)+"]"] 
	        global.base_wep[i,j]=ls_map[? "base_wep["+string(i)+","+string(j)+"]"] 
	        global.base_wep_extra[i,j]=ls_map[? "base_wep_extra["+string(i)+","+string(j)+"]"] 
	        global.base_equip[i,j]=ls_map[? "base_equip["+string(i)+","+string(j)+"]"] 
	        global.base_sub_pilot[i,j]=ls_map[? "base_sub_pilot["+string(i)+","+string(j)+"]"] 
	    }
	}
	for(i=0;i<512;i++)
	{
	    global.equip_num[i]=ls_map[? "equip_num["+string(i)+"]"] 
	    global.wep_base_sum[i]=ls_map[? "wep_base_sum["+string(i)+"]"] 
	    if(global.pliot_enabled[i]&&ds_map_exists(ls_map,"pliot_class["+string(i)+"]"))
	    {
	        global.pliot_class[i]=ls_map[? "pliot_class["+string(i)+"]"] 
	        global.pliot_kill[i]=ls_map[? "pliot_kill["+string(i)+"]"] 
	        global.pliot_exp[i]=ls_map[? "pliot_exp["+string(i)+"]"] 
	        lslv=ls_map[? "pliot_lv["+string(i)+"]"] 
	        while(global.pliot_lv[i]<lslv)
	        {
	            pliot_lvup(i)
	        }
	    }
	}
	//版本检测
	lsverson=0000
	if(ds_map_exists(ls_map,"verson"))
	{
	    lsverson=ls_map[? "verson"]
	}
	ds_map_destroy(ls_map)
	file_text_close(fin)




}
