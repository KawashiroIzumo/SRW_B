// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function p_ignore00_is_gundam(mrid_origin,mrid_opponent,is_reverse)
{
	//发出方的mrid，对手的mrid，是否检测自己（0=检测对手，1=检测自己）
	var tmrid=mrid_origin
	if(!is_reverse)tmrid=mrid_opponent;
	var rid=global.mrobo_id[tmrid],qtext=global.robo_name[rid]
	//show_message(qtext)
	var _c=["高达","Gundam","gundam","海兹尔","G·","顽太无"],i;
	for(i=0;i<array_length(_c);i++)
	{
		if(string_count(_c[i],qtext)>0)return 1
	}
	return 0;
}