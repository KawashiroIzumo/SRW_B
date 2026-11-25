/// @description Insert description here
// You can write your code in this editor
var t;
if(alarm[1]>0)
{
	t=alarm[1] /3
	if(t mod 2==0)
	{
		image_alpha=0
	}
	else image_alpha=1
}
if(y>=740)instance_destroy()