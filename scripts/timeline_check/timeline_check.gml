/// @description timeline_check(str)
/// @param str
function timeline_check(argument0) {
	var scommad=argument0,cuss,lscommad;
	cuss=string_pos(",",scommad)
	lscommad=string_copy(scommad,1,cuss-1)
	cuss=asset_get_index(lscommad)
	if(timeline_exists(cuss))
	{
	    return cuss
	}
	else 
	{
	    show_message(lscommad+" not found")
	    return robo_death_con_tml
	}
    



}
