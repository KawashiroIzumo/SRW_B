/// @description add_save_stage(flocate)
/// @param flocate
function add_save_stage(argument0) {
	var fin,flocate,i,j,k,qtext;
	flocate=argument0
	add_save(flocate)
	flocate=argument0+"_mrobo.json"
	ls_map=ds_map_create()
	fin = file_text_open_write(flocate)
	for(i=0;i<256;i++)
	{
	    ls_map[? "mrobo_id["+string(i)+"]"]=global.mrobo_id[i]
	    ls_map[? "mrobo_base_id["+string(i)+"]"]=global.mrobo_base_id[i]
	    ls_map[? "mrobo_x["+string(i)+"]"]=global.mrobo_x[i]
	    ls_map[? "mrobo_y["+string(i)+"]"]=global.mrobo_y[i]
	    ls_map[? "mrobo_hp["+string(i)+"]"]=global.mrobo_hp[i]
	    ls_map[? "mrobo_hpm["+string(i)+"]"]=global.mrobo_hpm[i]
	    ls_map[? "mrobo_en["+string(i)+"]"]=global.mrobo_en[i]
	    ls_map[? "mrobo_enm["+string(i)+"]"]=global.mrobo_enm[i]
	    ls_map[? "mrobo_ac["+string(i)+"]"]=global.mrobo_ac[i]
	    ls_map[? "mrobo_ab["+string(i)+"]"]=global.mrobo_ab[i]
	    ls_map[? "mrobo_def["+string(i)+"]"]=global.mrobo_def[i]
	    ls_map[? "mrobo_wep_kai["+string(i)+"]"]=global.mrobo_wep_kai[i]
	    ls_map[? "mrobo_team["+string(i)+"]"]=global.mrobo_team[i]
	    ls_map[? "mrobo_pliot["+string(i)+"]"]=global.mrobo_pliot[i]
	    ls_map[? "mrobo_pliot_c_name["+string(i)+"]"]=global.mrobo_pliot_c_name[i]
	    if(sprite_exists(global.mrobo_pliot_c_head[i]))
		{
	        ls_map[? "mrobo_pliot_c_head["+string(i)+"]"]=sprite_get_name(global.mrobo_pliot_c_head[i])
		}
	    else
		{
	        ls_map[? "mrobo_pliot_c_head["+string(i)+"]"]="noone"
		}
	    ls_map[? "mrobo_pliot_ql["+string(i)+"]"]=global.mrobo_pliot_ql[i]
	    ls_map[? "mrobo_pliot_sp["+string(i)+"]"]=global.mrobo_pliot_sp[i]
		ls_map[? "mrobo_pliot_npc["+string(i)+"]"]=global.mrobo_pliot_npc[i]
	    ls_map[? "mrobo_fly["+string(i)+"]"]=global.mrobo_fly[i]
	    ls_map[? "mrobo_E["+string(i)+"]"]=global.mrobo_E[i]
	    if(timeline_exists(global.mrobo_death_jq[i]))
	        ls_map[? "mrobo_death_jq["+string(i)+"]"]=timeline_get_name(global.mrobo_death_jq[i])
	    else
	        ls_map[? "mrobo_death_jq["+string(i)+"]"]="noone"
	    ls_map[? "mrobo_onship["+string(i)+"]"]=global.mrobo_onship[i]
	    ls_map[? "mrobo_ai["+string(i)+"]"]=global.mrobo_ai[i]
	    for(j=0;j<4;j++)
	    {
	        ls_map[? "mrobo_place["+string(i)+","+string(j)+"]"]=global.mrobo_place[i,j]
	        ls_map[? "mrobo_place_go["+string(i)+","+string(j)+"]"]=global.mrobo_place_go[i,j]
	        ls_map[? "mrobo_place_wep_place["+string(i)+","+string(j)+"]"]=global.mrobo_wep_place[i,j]
	        ls_map[? "mrobo_place_equip["+string(i)+","+string(j)+"]"]=global.mrobo_equip[i,j]
	        ls_map[? "mrobo_place_equip_used["+string(i)+","+string(j)+"]"]=global.mrobo_equip_used[i,j]
	    }
	    for(j=0;j<10;j++)
	    {
	        ls_map[? "mrobo_sub_sp["+string(i)+","+string(j)+"]"]=global.mrobo_sub_sp[i,j]
	        ls_map[? "mrobo_special["+string(i)+","+string(j)+"]"]=global.mrobo_special[i,j]
			ls_map[? "mrobo_sub_pliot["+string(i)+","+string(j)+"]"]=global.mrobo_sub_pliot[i,j]
	    }
	    for(j=0;j<40;j++)
	    {
	        ls_map[? "mrobo_wep["+string(i)+","+string(j)+"]"]=global.mrobo_wep[i,j]
	        ls_map[? "mrobo_wep_bullet["+string(i)+","+string(j)+"]"]=global.mrobo_wep_bullet[i,j]
	        ls_map[? "mrobo_wep_enabled["+string(i)+","+string(j)+"]"]=global.mrobo_wep_enabled[i,j]
	        ls_map[? "mrobo_buff["+string(i)+","+string(j)+"]"]=global.mrobo_buff[i,j]
	        ls_map[? "mrobo_base["+string(i)+","+string(j)+"]"]=global.mrobo_base[i,j]
	    }
	}
	file_text_write_string(fin,json_encode(ls_map))
	ds_map_destroy(ls_map)
	file_text_close(fin)

	flocate=argument0+"_lic.json"
	ls_map=ds_map_create()
	fin = file_text_open_write(flocate)
	global.ls_variable[90]=0
	with(lic_father)
	{
	    other.ls_map[? "lic_index["+string(global.ls_variable[90])+"]"]=object_get_name(object_index)
	    global.ls_variable[90]++
	}
	ls_map[? "lic_num"]=global.ls_variable[90]
	ls_map[? "mapid"]=DND_player.mapid
	ls_map[? "turn_num"]=global.turn_num
	ls_map[? "bgm"]=sound_get_name(global.bgm)
	ls_map[? "roombgm"]=sound_get_name(global.roombgm)
	ls_map[? "task_win"]=global.task_win
	ls_map[? "task_lose"]=global.task_lose
	file_text_write_string(fin,json_encode(ls_map))
	ds_map_destroy(ls_map)
	file_text_close(fin)




}
