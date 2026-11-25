for(i=0;i<256;i++)
{
    if(global.mrobo_id[i]>=0&&global.mrobo_team[i]!=0)
    {
        mrobo_reset_single(i)
    }
}

