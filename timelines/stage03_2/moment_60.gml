var rid,eid;
if(sl mod 2 ==1)
{
    rid=3
    eid=0
}
else 
{
    rid=5
    eid=6
}
a=create_mrobo_kai(rid,ax,ay,1,1,2)
if(a>=0)
{
    global.mrobo_hpm[a]=6000
    if(rid==5)global.mrobo_hpm[a]=7000
    global.mrobo_pliot_c_name[a]="提线木偶队"
    mrobo_add_equip(a,0,eid)
}

