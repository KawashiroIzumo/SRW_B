/// @description add_save(flocate)
/// @param flocate
function add_save(argument0) {
	var fin,flocate,ls_map,i;
	flocate=argument0+"_con.txt";
	fin = file_text_open_write(flocate)
	if(global.ls_variable[0]==0)
	    file_text_write_real(fin,0)
	else
	    file_text_write_real(fin,2)
	file_text_writeln(fin)
	file_text_write_real(fin,global.stage_finish)
	file_text_writeln(fin)
	file_text_write_real(fin,global.money)
	file_text_writeln(fin)
	file_text_close(fin)

	flocate=argument0+"_sod.json";
	fin = file_text_open_write(flocate)
	ls_map=ds_map_create()
	ls_map[? "money"]=global.money
	ls_map[? "turn_num"]=global.turn_num//回合数
	ls_map[? "turn_sum"]=global.turn_sum//总回合数
	ls_map[? "stage_finish"]=global.stage_finish//主线进度
	ls_map[? "task_name"]=global.task_name
	ls_map[? "verson"]=global.verson
	ls_map[? "nextstage"]=room_get_name(global.nextstage)
	for(i=0;i<100;i++)
	{
	    ls_map[? "ls_variable["+string(i)+"]"] =global.ls_variable[i]
	    ls_map[? "ls_string["+string(i)+"]"] =global.ls_string[i]
    
	    ls_map[? "base_rid["+string(i)+"]"] =global.base_rid[i]
	    ls_map[? "base_enabled["+string(i)+"]"] =global.base_enabled[i]
	    ls_map[? "base_hp_kai["+string(i)+"]"] =global.base_hp_kai[i]
	    ls_map[? "base_en_kai["+string(i)+"]"] =global.base_en_kai[i]
	    ls_map[? "base_ac_kai["+string(i)+"]"] =global.base_ac_kai[i]
	    ls_map[? "base_ab_kai["+string(i)+"]"] =global.base_ab_kai[i]
	    ls_map[? "base_def_kai["+string(i)+"]"] =global.base_def_kai[i]
	    ls_map[? "base_wep_kai["+string(i)+"]"] =global.base_wep_kai[i]
	    ls_map[? "base_pliot["+string(i)+"]"] =global.base_pliot[i]
	    for(j=0;j<10;j++)
	    {
	        ls_map[? "base_wep_enabled[["+string(i)+","+string(j)+"]"] =global.base_wep_enabled[i,j]
	        ls_map[? "base_wep["+string(i)+","+string(j)+"]"] =global.base_wep[i,j]
	        ls_map[? "base_wep_extra["+string(i)+","+string(j)+"]"] =global.base_wep_extra[i,j]
	        ls_map[? "base_equip["+string(i)+","+string(j)+"]"] =global.base_equip[i,j]
	        ls_map[? "base_sub_pilot["+string(i)+","+string(j)+"]"] =global.base_sub_pilot[i,j]
	    }
	}
	for(i=0;i<512;i++)
	{
	    ls_map[? "equip_num["+string(i)+"]"] =global.equip_num[i]
	    ls_map[? "wep_base_sum["+string(i)+"]"] =global.wep_base_sum[i]
	    if(global.pliot_enabled[i])
	    {
	        ls_map[? "pliot_class["+string(i)+"]"] =global.pliot_class[i]
	        ls_map[? "pliot_kill["+string(i)+"]"] =global.pliot_kill[i]
	        ls_map[? "pliot_exp["+string(i)+"]"] =global.pliot_exp[i]
	        ls_map[? "pliot_lv["+string(i)+"]"] =global.pliot_lv[i]
	        ls_map[? "pliot_sp["+string(i)+"]"] =global.pliot_sp[i]
	        ls_map[? "pliot_combat["+string(i)+"]"] =global.pliot_combat[i]
	        ls_map[? "pliot_shoot["+string(i)+"]"] =global.pliot_shoot[i]
	        ls_map[? "pliot_aim["+string(i)+"]"] =global.pliot_aim[i]
	        ls_map[? "pliot_dodge["+string(i)+"]"] =global.pliot_dodge[i]
	        ls_map[? "pliot_defence["+string(i)+"]"] =global.pliot_defence[i]
	        ls_map[? "pliot_skill["+string(i)+"]"] =global.pliot_skill[i]
	        for(j=0;j<10;j++)
	        {
	            ls_map[? "pliot_perk["+string(i)+","+string(j)+"]"] =global.pliot_perk[i,j]
	            ls_map[? "pliot_perk_lv["+string(i)+","+string(j)+"]"] =global.pliot_perk_lv[i,j]
	            ls_map[? "pliot_perk_grow["+string(i)+","+string(j)+"]"] =global.pliot_perk_grow[i,j]
	            ls_map[? "pliot_perk_get_lv["+string(i)+","+string(j)+"]"] =global.pliot_perk_get_lv[i,j]
	            ls_map[? "robo_wep_enabled["+string(i)+","+string(j)+"]"] =global.robo_wep_enabled[i,j]
	        }
	    }

	}
	file_text_write_string(fin,json_encode(ls_map))
	ds_map_destroy(ls_map)
	file_text_close(fin)




}
