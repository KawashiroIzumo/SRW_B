/// @description 标准结尾
with(DND_player)
{
    if(turn_type!=0)alarm[3]=10
    else
     cold=false
}
view_do_center_find_robo(1) 
with(camera)cold=false
instance_create(0,0,stage01_2_check)
instance_create(0,0,stage01_FAIL1_check)
with(stage01_GM_check)instance_destroy()
instance_destroy()


