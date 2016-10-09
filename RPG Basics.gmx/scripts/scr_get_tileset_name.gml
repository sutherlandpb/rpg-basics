///scr_get_tileset_name(tileset)

var tile_string = "";
switch(argument[0]) {
    case 0 :
        tile_string = "Cyan";
        break;
    case 1 : 
        tile_string = "Red";
        break;
    case 2 : 
        tile_string = "Gray Grass";
        break;
    case 3 : 
        tile_string = "Wood Grass";
        break;        
}
return tile_string;
