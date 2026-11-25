/// @description 标准结尾
global.bgm=BGMsrw19_Evil_Incoming
global.roombgm=global.bgm
view_do_center_find_pliot(31)
instance_create(0,0,SB02_1_check)
instance_create(0,0,SB02_FAIL1_check)
with(DND_player)cold=false
instance_destroy()


