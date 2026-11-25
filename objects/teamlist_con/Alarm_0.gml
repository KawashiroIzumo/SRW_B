var i,j;
for(i=0;i<256;i++)
{
	if(global.mrobo_id[i]>=0&&global.mrobo_hp[i]>=0)
	{
		if(global.mrobo_team[i]==0)
		{
			ds_list_add(ls_list_ally,i)//发现一个队友
		}
		else
		{
			ds_list_add(ls_list_enemy,i)//发现一个敌人
		}
	}
}
cold=false
ondraw=true

