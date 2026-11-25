instance_activate_all()
with(zb_con)alarm[3]=5
if(instance_exists(attacking_drawer))
{
    with(camera)follow=true
}
if(mode==2)
{
    if(choosedwid>=0)
        with(battle_qr)
        {
            choosedwid=other.choosedwid
        }
    else
        with(battle_qr)page=0
}

