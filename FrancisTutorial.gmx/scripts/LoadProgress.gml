//Check that files exists (may not if never saved game before)
if file_exists("Progress.sav") //No need to check if player exists
{
    //Read the save file
    SaveFile = file_text_open_read("Progress.sav")
    
    //Read a line from the file
    file_text_readln(SaveFile) //Just reads the first line but doesn't do anything with it because first line of save file is just the header
    RoomToGoTo = file_text_read_real(SaveFile) //Read the room number to load. Note we saved room from a number to a string in the SaveProgress script, so now have to convert from string to number and store in a variable
    if room_exists(RoomToGoTo) { room_goto(RoomToGoTo) } //Check that the room we are going to exists, and if it does go to it

    file_text_close(SaveFile)
    obj_Menu.Mode = "Game" //Hides menu upon start
}