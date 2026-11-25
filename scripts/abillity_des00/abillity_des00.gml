///@description abillity_des00(source,exp_get,money_get)
///@param source
///@param exp_get
///@param money_get
function abillity_des00(argument0, argument1, argument2) {
	var a;
	with(camera)follow=false
	a=instance_create(0,0,battle_end_con)
	a.mode=2
	a.exp_get=argument1
	a.money_get=argument2
	a.mrid[0]=argument0
	a.mrid[1]=1
	return a


}
