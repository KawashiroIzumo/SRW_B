/// @description create_dhk(qname,qtext,qhead)
/// @param qname
/// @param qtext
/// @param qhead
function create_dhk(argument0, argument1, argument2) {
	var a;
	a=instance_create(0,0,DHK)
	a.qname=argument0
	a.qtext=argument1
	a.qtext=string_replace_all(a.qtext,11,"")
	a.qtext=string_replace_all(a.qtext,13,"")
	a.qhead=argument2
	return a;



}
