///@description wef02_pxz(mrid,tmrid,wid,dmg)
///@param mrid
///@param tmrid
///@param wid
///@param dmg
function wef02_pxz(argument0, argument1, argument2, argument3) {
	var mrid=argument0,tmrid=argument1,wid=argument2,i,dmg=argument3;
	var pid=global.mrobo_pliot[tmrid];
	if(global.pliot_faction[pid] mod 10 ==2)
	{
		dmg*=1.25
	}
	return floor(dmg)


}
