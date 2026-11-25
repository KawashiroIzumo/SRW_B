/// @description workout_enemy_lv()
function workout_enemy_lv() {
	var num,i,aver,anum,amax,asum,pid;
	num=1
	asum=0
	amax=1
	anum=0
	for(i=0;i<100;i++)
	{
	    if(global.base_rid[i]>=0)
	    {
	        anum++
	        pid=global.base_pliot[i]
	        asum+=global.pliot_lv[pid]
	        if(global.pliot_lv[pid]>amax)amax=global.pliot_lv[pid]
	    }
	}
	aver=asum/anum
	return max(amax-4,floor((aver+amax)/2))



}
