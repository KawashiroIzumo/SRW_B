/// @description 真的恢复
a=mrobo_find_robo(22)
mrobo_refrish(a)
a=mrobo_find_pliot(2)
if(a>=0)
    mrobo_refrish(a)
else
{
    a=mrobo_find_robo(16)
    mrobo_refrish(a)
}

