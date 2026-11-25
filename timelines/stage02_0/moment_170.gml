/// @description 添加机体 阿姆罗，封弊者
a=create_mrobo_kai(23,11,2,1,4,1)//阿姆罗 
if(a>=0)
{
    global.mrobo_hpm[a]=99999
    global.mrobo_ac[a]=200
    global.mrobo_ab[a]=200
    global.mrobo_wep_kai[a]=2
    while(global.pliot_lv[4]<10)
    {
        pliot_lvup(4)
    }
    mrobo_refrish(a)
}
b=create_mrobo_kai(33,14,2,1,9,1)//封弊者 近战武器
if(b>=0)
{
    global.mrobo_pliot_c_name[b]="封弊者"
    global.mrobo_ac[b]=100
    while(global.pliot_lv[9]<6)
    {
        pliot_lvup(9)
    }
    mrobo_refrish(b)
}

