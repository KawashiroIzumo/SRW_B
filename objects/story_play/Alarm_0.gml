a=instance_create(128,720,story_sub)
a.qtext=story_text[story_now]
story_now++
if(story_now>story_maxln)alarm[1]=180
else alarm[0]=130

