view_do_center_puz(0,10,16)
a=create_mrobo(22,10,16,1,0)
if(a>=0)
{
    global.mrobo_hpm[a]=99999
    mrobo_refrish(a)
    mrobo_get_wep(a,45)
}

