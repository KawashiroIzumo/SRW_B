/// @description 用假人取代敌方机体
var i,j;
i=actors_now
actors_reset(5)
actors_copy(!i,5)
actors_alpha[!i]=0
j=5
actors_speed[j]=130
actors_direction[j]=90

