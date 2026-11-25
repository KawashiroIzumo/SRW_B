///@description 机体创建特效
view_do_center_puz(0,12,10)
for(i=3;i<=11;i+=2)
{
	for(j=13+floor((i mod 4 )/2);j<=17;j+=2)
	{
		create_fx_puz(fx_robo_coming,j,i)
	}
}
