//move down a grid room
/// DOWN through the door

var curRoom = room_get_name(room);
var tempX = "";
var tempY = "";

curRoom = string_digits(curRoom);

// spit the curRoom string in half and store each half in a variable
for (i = 1; i < (string_length(curRoom) / 2) + 1; i++ ) {
    tempX += string_char_at(curRoom, i);
}

for (i = (string_length(curRoom)/2) + 1; i < string_length(curRoom) + 1; i++ ) {
    tempY += string_char_at(curRoom, i);
}

// convert coords to numbers
tempX = real(tempX);
tempY = real(tempY);

// alter coordinates based on which direction the player left the room
//down movement means y + 1
tempY += 1;
strX = string(tempX);
if string_length(strX) = 1 {
   strX = "0" + strX;
}
strY = string(tempY);
if string_length(strY) = 1 {
   strY = "0" + strY;
}

// construct the new string based on the naming convention
var nextRoom = "rm_" + strX + "_" + strY;

if (room_exists(asset_get_index(nextRoom))) {
    room_goto(asset_get_index(nextRoom));
    //down means shift y
    y = 32;        
}





