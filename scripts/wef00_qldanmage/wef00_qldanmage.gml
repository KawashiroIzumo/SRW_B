///@description wef00_qldanmage(mrid,tmrid,wid,dmg)
///@param mrid
///@param tmrid
///@param wid
///@param dmg
function wef00_qldanmage(argument0, argument1, argument2, argument3) {
	var mrid=argument0,tmrid=argument1,wid=argument2,i,dmg=argument3;
	if(global.mrobo_pliot_ql[tmrid]>90)global.mrobo_pliot_ql[tmrid]-=10
	else global.mrobo_pliot_ql[tmrid]=80
	return dmg


}
