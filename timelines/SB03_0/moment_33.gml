/// @description 添加机体 创建撤硕教信徒
var i,j,k,a;
for(i=6;i<=14;i+=2)
{
	for(j=13+floor((i mod 4 )/2);j<=17;j+=2)
	{
		a=create_mrobo_kai(50,j,i,1,1,2)
		global.mrobo_pliot_c_name[a]="撤硕教信徒"
		if(a>=0)
		{
		    var lslv=workout_enemy_lv();
			var k=global.mrobo_pliot[a]
		    while(global.pliot_lv[k]<lslv)
		    {
		        pliot_lvup(k)
		    }
		    global.mrobo_pliot_sp[a]=global.pliot_sp[4]
		    mrobo_refrish(a)
		}
	}
}




