/// @description add_load_stage(flocate)
/// @param flocate
function add_load_stage(argument0) {
	var fin,flocate,i,j,k,qtext;
	flocate=argument0
	add_load(flocate)
	//show_message("读取阶段1 完毕！")
	flocate=argument0+"_mrobo.json"
	fin = file_text_open_read(flocate)
	ls_map=json_decode(file_text_read_string(fin))
	for(i=0;i<256;i++)
	{
	    global.mrobo_id[i]=ls_map[? "mrobo_id["+string(i)+"]"]
		if(global.mrobo_id[i]<0)continue;
	    global.mrobo_base_id[i]=ls_map[? "mrobo_base_id["+string(i)+"]"]
	    global.mrobo_x[i]=ls_map[? "mrobo_x["+string(i)+"]"]
	    global.mrobo_y[i]=ls_map[? "mrobo_y["+string(i)+"]"]
	    global.mrobo_hp[i]=ls_map[? "mrobo_hp["+string(i)+"]"]
	    global.mrobo_hpm[i]=ls_map[? "mrobo_hpm["+string(i)+"]"]
	    global.mrobo_en[i]=ls_map[? "mrobo_en["+string(i)+"]"]
	    global.mrobo_enm[i]=ls_map[? "mrobo_enm["+string(i)+"]"]
	    global.mrobo_ac[i]=ls_map[? "mrobo_ac["+string(i)+"]"]
	    global.mrobo_ab[i]=ls_map[? "mrobo_ab["+string(i)+"]"]
	    global.mrobo_def[i]=ls_map[? "mrobo_def["+string(i)+"]"]
	    global.mrobo_wep_kai[i]=ls_map[? "mrobo_wep_kai["+string(i)+"]"]
	    global.mrobo_team[i]=ls_map[? "mrobo_team["+string(i)+"]"]
	    global.mrobo_pliot[i]=ls_map[? "mrobo_pliot["+string(i)+"]"]
	    global.mrobo_pliot_c_name[i]=ls_map[? "mrobo_pliot_c_name["+string(i)+"]"]
	    k=ls_map[? "mrobo_pliot_c_head["+string(i)+"]"]
	    if(sprite_exists(asset_get_index(k)))
		{
	        global.mrobo_pliot_c_head[i]=asset_get_index(k)
		}
	    else if(global.mrobo_pliot[i]>=0)
		{
	        global.mrobo_pliot_c_head[i]=global.pliot_head[global.mrobo_pliot[i]]
		}
	    else 
		{
	        global.mrobo_pliot_c_head[i]=noone
		}
	    global.mrobo_pliot_ql[i]=ls_map[? "mrobo_pliot_ql["+string(i)+"]"]
	    global.mrobo_pliot_sp[i]=ls_map[? "mrobo_pliot_sp["+string(i)+"]"]
	
		if(ds_map_exists(ls_map,"mrobo_pliot_npc["+string(i)+"]"))
			global.mrobo_pliot_npc[i]=ls_map[? "mrobo_pliot_npc["+string(i)+"]"]
		else
			global.mrobo_pliot_npc[i]=0
		
	    global.mrobo_fly[i]=ls_map[? "mrobo_fly["+string(i)+"]"]
	    global.mrobo_E[i]=ls_map[? "mrobo_E["+string(i)+"]"]
	    k=ls_map[? "mrobo_death_jq["+string(i)+"]"]
	    if(timeline_exists(asset_get_index(k)))
	        global.mrobo_death_jq[i]=asset_get_index(k)
	    else
	        global.mrobo_death_jq[i]=noone
	    global.mrobo_onship[i]=ls_map[? "mrobo_onship["+string(i)+"]"]
	    global.mrobo_ai[i]=ls_map[? "mrobo_ai["+string(i)+"]"]
	    for(j=0;j<4;j++)
	    {
	        global.mrobo_place[i,j]=ls_map[? "mrobo_place["+string(i)+","+string(j)+"]"]
	        global.mrobo_place_go[i,j]=ls_map[? "mrobo_place_go["+string(i)+","+string(j)+"]"]
	        global.mrobo_wep_place[i,j]=ls_map[? "mrobo_place_wep_place["+string(i)+","+string(j)+"]"]
	        global.mrobo_equip[i,j]=ls_map[? "mrobo_place_equip["+string(i)+","+string(j)+"]"]
	        global.mrobo_equip_used[i,j]=ls_map[? "mrobo_place_equip_used["+string(i)+","+string(j)+"]"]
	    }
	    for(j=0;j<10;j++)
	    {
	        global.mrobo_sub_sp[i,j]=ls_map[? "mrobo_sub_sp["+string(i)+","+string(j)+"]"]
	        global.mrobo_special[i,j]=ls_map[? "mrobo_special["+string(i)+","+string(j)+"]"]
	        if(ds_map_exists(ls_map,"mrobo_sub_pliot["+string(i)+","+string(j)+"]"))global.mrobo_sub_pliot[i,j]=ls_map[? "mrobo_sub_pliot["+string(i)+","+string(j)+"]"]
			else
			{
				var rid=global.mrobo_id[i]
				global.mrobo_sub_pliot[i,j]=global.robo_sub_pliot[rid,i]
			}
	    }
	    for(j=0;j<40;j++)
	    {
	        global.mrobo_wep[i,j]=ls_map[? "mrobo_wep["+string(i)+","+string(j)+"]"]
	        global.mrobo_wep_bullet[i,j]=ls_map[? "mrobo_wep_bullet["+string(i)+","+string(j)+"]"]
	        global.mrobo_wep_enabled[i,j]=ls_map[? "mrobo_wep_enabled["+string(i)+","+string(j)+"]"]
	        global.mrobo_buff[i,j]=ls_map[? "mrobo_buff["+string(i)+","+string(j)+"]"]
	        global.mrobo_base[i,j]=ls_map[? "mrobo_base["+string(i)+","+string(j)+"]"]
	    }
	}
	ds_map_destroy(ls_map)
	file_text_close(fin)

	flocate=argument0+"_lic.json"
	fin = file_text_open_read(flocate)
	ls_map=json_decode(file_text_read_string(fin))
	global.ls_variable[90]=ls_map[? "lic_num"]
	global.turn_num=ls_map[? "turn_num"]
	with(DND_player)
	{
	    mapid=other.ls_map[? "mapid"]
	}
	for(i=0;i<global.ls_variable[90];i++)
	{
	    k=other.ls_map[? "lic_index["+string(i)+"]"]
	    if(object_exists(asset_get_index(k)))
	    instance_create(0,0,asset_get_index(k))
	}
	k=ls_map[? "bgm"]
	if(timeline_exists(asset_get_index(k)))
	    global.bgm=asset_get_index(k)
	else
	    global.bgm=noone
	k=ls_map[? "roombgm"]
	if(timeline_exists(asset_get_index(k)))
	    global.roombgm=asset_get_index(k)
	else
	    global.roombgm=noone
	
	if(ds_map_exists(ls_map,"task_win"))
	{
		global.task_win=ls_map[? "task_win"]
	}
	if(ds_map_exists(ls_map,"task_lose"))
	{
		global.task_lose=ls_map[? "task_lose"]
	}
	ds_map_destroy(ls_map)
	file_text_close(fin)



}
