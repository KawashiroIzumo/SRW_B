// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_border_transformed(ax,ay,qtext,xblv,yblv,angle,colora,colorb)
{
	var ix,iy;
	if(colorb>=0)
	{
		for(ix=-1;ix<=1;ix++)
		{
			for(iy=-1;iy<=1;iy++)
			{
				draw_set_colour(colorb)
				draw_text_transformed(ax+ix,ay+iy,string_hash_to_newline(qtext),xblv,yblv,angle)
			}
		}
	}
	draw_set_colour(colora)
	draw_text_transformed(ax,ay,string_hash_to_newline(qtext),xblv,yblv,angle)
}