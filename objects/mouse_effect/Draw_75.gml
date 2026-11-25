gpu_set_blendmode(bm_add)
var colorb=make_color_hsv(color_get_hue(colora),color_get_saturation(colora),color_get_value(colora)*alarm[0]/15)
draw_circle_color(x,y,vr,c_black,colorb,0)
vr+=4
gpu_set_blendmode(bm_normal)