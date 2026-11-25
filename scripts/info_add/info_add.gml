/// @description info_add(qtext,right)
/// @param qtext
/// @param right
function info_add(argument0, argument1) {
	var qtext,right;
	qtext=argument0
	right=argument1
	for(i=0;i<16;i++)
	{
	    if(info_ala[i]<0)
	    {
	        info_qtext[i]=qtext
	        info_right[i]=right
	        info_ala[i]=60
	        return i;
	    }
	}
	return -1;



}
