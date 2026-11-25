instance_activate_all()
var bid;
for(i=0;i<256;i++)
{
    if(global.mrobo_team[i]>0)
    {
        for(j=0;j<40;j++)
        {
            bid=global.mrobo_buff[i,j]
            if(bid>=0)
            {
                if(global.buff_end[bid]==1)global.mrobo_buff[i,j]=-1
            }
        }
    }
}

