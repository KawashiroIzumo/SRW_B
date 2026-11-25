/// @description Insert description here
// You can write your code in this editor
for(i=0;i<256;i++)
{
	if(global.mrobo_id[i]>=0)
	{
		if(global.mrobo_en[i]<=0)
		{
			show_message(string(i)+"号 "+global.robo_name[global.mrobo_id[i]]+"(机师："+global.mrobo_pliot_c_name[i]+")的EN归零了")
			global.mrobo_en[i]+=5
			show_message("已经补充到"+string(global.mrobo_en[i]))
		}
	}
}