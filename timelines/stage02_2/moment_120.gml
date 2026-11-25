/// @description 添加机体 臭天使
a=create_mrobo_kai(31,13,24,1,6,2)
if(a>=0)
{
    global.mrobo_hpm[a]=40000
    while(global.pliot_lv[6]<12)
    {
        pliot_lvup(6)
    }
    mrobo_refrish(a)
}


