/// @description 标准结尾
with(DND_player)
{
    cold=false
    alarm[3]=1
}
with(stage03_1_check)instance_destroy()
instance_create(0,0,stage03_2_check)
instance_create(0,0,stage03_3_check)
instance_create(0,0,stage03_FAIL2_check)
instance_destroy()


