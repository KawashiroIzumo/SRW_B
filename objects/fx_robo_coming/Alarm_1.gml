if(probo>=0)
{
    var a;
    a=create_mrobo_kai(probo,pux,puy,pteam,ppliot,pkai)
    if(a>=0)
    {
        if(php>0)
            global.mrobo_hp[a]=php
        global.mrobo_death_jq[a]=pevent
    }
}

