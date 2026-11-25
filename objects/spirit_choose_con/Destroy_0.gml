instance_activate_all()
with(DND_player)
{
    inchoose=false
}
if(eflag>=0&&eflag<=2)
{
    if(p_page>=0)global.mrobo_sub_sp[mrid,p_page]-=global.spirit_sp[esid]
    else global.mrobo_pliot_sp[mrid]-=global.spirit_sp[esid]
}
if(eflag==0)
{
    script_execute(global.spirit_exe[esid],mrid)
}
if(eflag==1)
{
    a=instance_create(0,0,target_drawer)
    a.target_team=0
    a.target_exe=global.spirit_exe[esid]
    a.target_ignore=global.spirit_ignore2[esid]
}
if(eflag==2)
{
    a=instance_create(0,0,target_drawer)
    a.target_team=1
    a.target_exe=global.spirit_exe[esid]
    a.target_ignore=global.spirit_ignore2[esid]
}

action_set_gravity(0, 0);
