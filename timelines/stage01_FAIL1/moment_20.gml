/// @description 机体消除
a=mrobo_find_pliot(0)
if(a>=0)
{
    global.mrobo_id[a]=-1
}
b=mrobo_find_pliot(2)
if(b>=0)
{
    global.mrobo_id[b]=-1
}



