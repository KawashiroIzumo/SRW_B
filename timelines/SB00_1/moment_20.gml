a=mrobo_find_pliot(0)
ax=global.mrobo_x[a]-1
if(ax<0)ax+=2
ay=global.mrobo_y[a]
instance_create(fx_robo_coming,ax,ay)

