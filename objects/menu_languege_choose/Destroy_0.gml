/// @description Insert description here
// You can write your code in this editor
var fin,flocate;
flocate=working_directory+"\\cofing.json"
fin=file_text_open_write(flocate)
file_text_write_string(fin,json_encode(global.cofing))
file_text_close(fin)
room_goto(Tittle_room)